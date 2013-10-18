package com.jxnu.lab.bo;

import java.util.List;

import com.jxnu.lab.model.News;
import com.jxnu.lab.vo.NewsVo;

public interface MemberProfileBo {

	
	public List<NewsVo> queryProfile(int page, int pageSize, int ShowTitleLength, int ShowContentLength);//ÒªÐÞ¸Ä 
	
	public List<NewsVo> queryMainProfile(int showTitleLength, int showContentlength);
	
	public NewsVo getMemberProfile(News n);
	
	
	public boolean addMemberProfile(NewsVo nv);
	
	public boolean deleteMemberProfile(NewsVo nv);
	
	public boolean updateMemberProfile(NewsVo nv);
	
	public int getPageNum(int pageSize);
}
