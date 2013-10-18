package com.jxnu.lab.bo;

import java.util.List;

import com.jxnu.lab.model.Tags;

public interface TagsBo {

	public Tags getTags(Tags t);
	
	public List<Tags> queryTags(int page,int pageSize);
	
	public boolean addTags(Tags t);
	
	public boolean deleteTags(Tags t);

	public List<Tags> queryHotTags(int num);
	
	public int getPageNum(int pageSize);
}
