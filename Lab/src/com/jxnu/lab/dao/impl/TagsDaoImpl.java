package com.jxnu.lab.dao.impl;

import com.jxnu.lab.dao.TagsDao;
import com.jxnu.lab.model.Tags;
import com.jxnu.lab.sqlUtils.SQLUtils;

public class TagsDaoImpl implements TagsDao {

	public boolean createTags(Tags tags){
	
		return SQLUtils.create(tags);
		
	}
	
	public boolean update_delete(Tags tags,String operation){
		
		return SQLUtils.update_delete(tags, operation);
		
	}
	
	public Tags getTags(int id){
		
		Tags tags=null;
		String sql="from Tags t where t.id='"+id+"'";
		tags=(Tags)SQLUtils.getObjectById(sql);
		return tags;
		
	}
	
}
