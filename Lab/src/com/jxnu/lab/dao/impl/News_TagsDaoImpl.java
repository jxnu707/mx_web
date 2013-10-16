package com.jxnu.lab.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

import com.jxnu.lab.dao.News_TagsDao;
import com.jxnu.lab.model.News;
import com.jxnu.lab.model.News_Tags;
import com.jxnu.lab.model.Tags;
import com.jxnu.lab.sqlUtils.SQLUtils;


public class News_TagsDaoImpl implements News_TagsDao {

public News_Tags getNews_Tags(int id) {
		
	News_Tags news_Tags=null;
	String sql = "from News_Tags nt where nt.id='"+id+"'";
	news_Tags=(News_Tags)SQLUtils.getObjectById(sql);
	return news_Tags;
	}
	
public List<News> getNewsByTags(Tags tags){
	
	List<News> list=new ArrayList<News>();
	String sql="select distinct nt.news from News_Tags nt where nt.tags.id='"+tags.getId()+"'";
	List list_temp=null;
	
	list_temp=SQLUtils.getQueryList(tags, sql);
	for(Object obj :list_temp)
		list.add((News)obj);
	
	return list;
	}

public List<Tags> getTagsByNews(News news) {
	
	List<Tags> list=new ArrayList<Tags>();
	List list_temp=null;
	String sql="select distinct nt.tags from News_Tags nt where nt.news.id='"+news.getId()+"'";
	list_temp=SQLUtils.getQueryList(news, sql);
	
	for(Object obj :list_temp)
		list.add((Tags)obj);
	
	return list;
}

public boolean update_delete(News_Tags news_tags,String operation){
	
	return SQLUtils.update_delete(news_tags, operation);
	
}

}
