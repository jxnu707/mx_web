package com.jxnu.lab.dao;

import com.jxnu.lab.model.Tags;

public interface TagsDao {

	public boolean createTags(Tags tags);
	
	public boolean update_delete(Tags tags,String operation);
	
	public Tags getTags(int id);
}
