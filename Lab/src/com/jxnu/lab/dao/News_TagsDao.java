package com.jxnu.lab.dao;


import java.util.List;

import com.jxnu.lab.model.News;
import com.jxnu.lab.model.News_Tags;
import com.jxnu.lab.model.Tags;


public interface News_TagsDao {

public News_Tags getNews_Tags(int id);
	
public List<News> getNewsByTags(Tags tags);

public List<Tags> getTagsByNews(News news);

public boolean update_delete(News_Tags news_tags,String operation);

}
