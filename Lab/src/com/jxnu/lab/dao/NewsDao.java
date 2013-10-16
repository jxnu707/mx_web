package com.jxnu.lab.dao;

import java.util.List;

import com.jxnu.lab.model.News;

public interface NewsDao {

//	public static final String UPDATE="update";
//	public static final String DELETE="delete";
	
	public News getNewsById(int id);
	
	public boolean createNews(News n);
	
	public List<News> queryNews(int page, int pageSize);
	
	public boolean update_delete(News news, String operation);
	
}
