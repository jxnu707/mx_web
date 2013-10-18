package com.jxnu.lab.bo.impl;

import java.util.ArrayList;
import java.util.List;

import com.jxnu.lab.Configration;
import com.jxnu.lab.bo.TagsBo;
import com.jxnu.lab.dao.TagsDao;
import com.jxnu.lab.dao.impl.TagsDaoImpl;
import com.jxnu.lab.model.Tags;
import com.jxnu.lab.sqlUtils.SQLUtils;

public class TagsBoImpl implements TagsBo{

	TagsDao td=new TagsDaoImpl();
	
	public boolean addTags(Tags t) {
		return td.createTags(t);
	}

	public boolean deleteTags(Tags t) {
		return td.update_delete(t, SQLUtils.DELETE);
	}

	public Tags getTags(Tags t) {
		return td.getTags(t.getId());
	}

	public List<Tags> queryHotTags(int num) {
		List<Tags> list=new ArrayList<Tags>();
		list=td.getHotTags().subList(0, num);
		
		return list;
	}

	public List<Tags> queryTags(int page, int pageSize) {
		List<Tags> list=new ArrayList<Tags>();
		
		list=td.getTagsInPage(page, pageSize);
		
		return list;
	}

	public int getPageNum(int pageSize) {
		int page=0;
		int sum=0;
		int i=sum%pageSize;
		sum=Configration.getNum(Configration.getTagsTable(), 0);
		if(i==0)
			page=sum/pageSize;
		else
			page=sum/pageSize+1;
		return page;
	}



}
