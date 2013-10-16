package com.jxnu.lab.dao;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.jxnu.lab.dao.impl.News_TagsDaoImpl;
import com.jxnu.lab.model.News;
import com.jxnu.lab.model.Tags;

public class News_TagsTest {

	/**
	 * 
	 */
	@Test
	public void getNewsByTagsTest(){
		
		List<News> list=new ArrayList<News>();
		Tags tags=new Tags();
		tags.setId(1);
		
		News_TagsDao ntDao= new News_TagsDaoImpl();
		list=ntDao.getNewsByTags(tags);
		
		if(list==null)
		{
			System.out.println("list is null");
		}
		for(News news:list){
			
			System.out.println(news.getId());
			
		}
	}
	
	@Test
	public void getTagsByNewsTest(){
		
		List<Tags> list=new ArrayList<Tags>();
		News news=new News();
		news.setId(6);
		
		News_TagsDao ntDao= new News_TagsDaoImpl();
		list=ntDao.getTagsByNews(news);
		
		if(list==null)
		{
			System.out.println("list is null");
		}
		for(Tags tags:list){
			
			System.out.println(tags.getId());
			
		}
		
	}
	
}
