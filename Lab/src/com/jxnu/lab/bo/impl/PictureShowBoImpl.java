package com.jxnu.lab.bo.impl;

import java.util.ArrayList;
import java.util.List;

import com.jxnu.lab.bo.DataBo;
import com.jxnu.lab.bo.PictureShowBo;
import com.jxnu.lab.dao.DataDao;
import com.jxnu.lab.dao.NewsDao;
import com.jxnu.lab.dao.impl.DataDaoImpl;
import com.jxnu.lab.dao.impl.NewsDaoImpl;
import com.jxnu.lab.model.Data;
import com.jxnu.lab.model.News;
import com.jxnu.lab.sqlUtils.SQLUtils;
import com.jxnu.lab.vo.DataVo;

public class PictureShowBoImpl implements PictureShowBo{

	DataDao dd=new DataDaoImpl();
	
	public boolean addPictureShow(int newsId, int type) {
		Data data=new Data();
		News news=new News();
		data.setStyle(2);
		news.setId(newsId);
		data.setNews(news);
		return dd.createData(data);
	}

	public boolean deletePictureShow(int newsId, int type) {
		Data data=new Data();
		data=dd.getDataByNewsId(newsId, 2);
		DataBo db=new DataBoImpl();
		
		return db.deleteData(data);
		
	}

	public DataVo getPictureShow(int newsId, int type) {
		Data data=new Data();
		data=dd.getDataByNewsId(newsId, 2);
		DataVo dv=new DataVo(data);
		return dv;
	}

	public boolean moveDownPictureShow(int newsId, int type) {
		int sequence=0;
		boolean isfind=false;
		NewsDao nd=new NewsDaoImpl();
		List<News> list=nd.getNewsBySequence();
		for(News n: list){
			if(isfind){
				n.setSequence(n.getSequence()+1);
				return true;
			}
			else if(newsId==n.getId())
			{
				sequence=n.getSequence();
				n.setSequence(sequence-1);
				isfind=true;
			}
		}
		return false;
	}

	public boolean moveUpPictureShow(int newsId, int type) {
		int sequence=0;
		boolean isfind=false;
		NewsDao nd=new NewsDaoImpl();
		List<News> list=nd.getNewsBySequence();
		for(News n: list){
			if(isfind){
				n.setSequence(n.getSequence()-1);
				return true;
			}
			else if(newsId==n.getId())
			{
				sequence=n.getSequence();
				n.setSequence(sequence+1);
				isfind=true;
			}
		}
		return false;
	}

	public List<DataVo> queryPictureShow(int type) {
		List<DataVo> list=new ArrayList<DataVo>();
		List<Data> list_temp=dd.getDataByStyle(2);
		for(Data d:list_temp){
			DataVo dv=new DataVo(d);
			list.add(dv);
		}
		return list;
	}
	
}
