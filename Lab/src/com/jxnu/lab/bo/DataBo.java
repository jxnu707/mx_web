package com.jxnu.lab.bo;

import java.util.List;

import com.jxnu.lab.model.Data;
import com.jxnu.lab.model.News;
import com.jxnu.lab.vo.DataVo;

public interface DataBo {
	
	
	public DataVo getData(Data d);//
	
	public Data getData2(Data d);//get data by data.id 
	
	public List<DataVo> queryData(int page, int pageSize, int type);
	
	public boolean addData(Data d);
	
	public boolean deleteData(Data d);
	
	public boolean deleteDataByNews(News n);//delete file 
	
	public boolean updateData(Data d);//
	
	public int getPageNum(int pageSize);
	
}
