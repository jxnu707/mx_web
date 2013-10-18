package com.jxnu.lab.bo;

import java.util.List;

import com.jxnu.lab.model.News;
import com.jxnu.lab.vo.NewsVo;

public interface ProjectBo {

	
	public NewsVo getProject(News n);
	
	public List<NewsVo> queryProject(int page, int pageSzie, int showTitleLength, int showContentLength);
	
	public boolean addProject(NewsVo nv);
	
	public boolean deleteProject(NewsVo nv);
	
	public boolean updateProject(NewsVo nv);
	
	public int getPageNum(int pageSize);
}
