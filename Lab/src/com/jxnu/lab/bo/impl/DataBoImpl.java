package com.jxnu.lab.bo.impl;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.jxnu.lab.Configration;
import com.jxnu.lab.bo.DataBo;
import com.jxnu.lab.dao.DataDao;
import com.jxnu.lab.dao.impl.DataDaoImpl;
import com.jxnu.lab.model.Data;
import com.jxnu.lab.model.News;
import com.jxnu.lab.sqlUtils.SQLUtils;
import com.jxnu.lab.vo.DataVo;


public class DataBoImpl implements DataBo{

	DataDao dd=new DataDaoImpl();
	
	public boolean addData(Data d) {
		return dd.createData(d);
		
	}

	public boolean deleteData(Data d) {
		
		if(dd.update_delete(d, SQLUtils.DELETE)){
			
			Configration con = new Configration();
			String str = con.getPath();
			String root = ServletActionContext.getServletContext().getRealPath("/"+str+"/"+d.getId()+d.getFile_name());
			File file = new File(root);
			if(!file.isDirectory()){
				file.delete();
			}
			return true;
		}
		
		else
			return false;
	}

	public DataVo getData(Data d) {
		return null;
	}

	public boolean updateData(Data d) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<DataVo> queryData(int page, int pageSize, int type) {
		List<DataVo> list=new ArrayList<DataVo>();
		
		List<Data> list_temp=dd.queryData(page, pageSize, type);
		for(Data d:list_temp){
			
			DataVo dv=new DataVo(d);
//			dv.setDataName(d.getFile_name());
//			dv.setId(d.getId());
//			dv.setDownLoad(d.getDownLoad());
//			dv.setUrl(d.get);
//			dv.set
			list.add(dv);
			
		}
		
		return list;
	}

	public int getPageNum(int pageSize) {
		int page=0;
		int sum=0;
		int i=sum%pageSize;
		sum=Configration.getNum(Configration.getDataTable(), Configration.get);
		if(i==0)
			page=sum/pageSize;
		else
			page=sum/pageSize+1;
		return page;
	}

	public Data getData2(Data d) {
		return dd.getDataById(d.getId());
	}

	public boolean deleteDataByNews(News n) {
		List<Data> list=new ArrayList<Data>();
		
		list=dd.getNewsDownLoadabelData(n);
		for(Data d:list){
			if(this.deleteData(d));
			else
				return false;
		}
		
		return true;
	}

	
}
