package com.jxnu.lab.bo;

import java.util.List;

import com.jxnu.lab.vo.DataVo;

public interface PictureShowBo {

	public DataVo getPictureShow(int newsId, int type);//leave type alone 
	
	public List<DataVo> queryPictureShow(int type);//������ҳnews �������news��ӦData  
	
	public boolean addPictureShow(int newsId, int type);
	
	public boolean deletePictureShow(int newsId, int type);

	public boolean moveUpPictureShow(int newsId, int type);
	
	public boolean moveDownPictureShow(int newsId, int type);
}
