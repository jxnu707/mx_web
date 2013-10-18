package com.jxnu.lab.bo;

import java.util.List;

import com.jxnu.lab.model.News;
import com.jxnu.lab.vo.NewsVo;
import com.jxnu.lab.vo.SearchVo;

public interface NewsBo {

	public NewsVo getNews(News n);
	
	public List<NewsVo> queryNews(int page, int pageSize, int showLength);
	
	public List<NewsVo> queryHotNews(int length, int showLength);
	
	public boolean addNews(News n);
	
	public boolean deleteNews(News n);
	
	public boolean updateNews(News n);
	
	public List<SearchVo> serchNews(String str);
	
	public int getPageNum(int pageSize);
}
