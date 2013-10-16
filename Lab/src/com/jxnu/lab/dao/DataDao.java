package com.jxnu.lab.dao;

import java.util.List;

import com.jxnu.lab.model.Data;
import com.jxnu.lab.model.News;

public interface DataDao {

	public boolean createData(Data data);
	
	public boolean update_delete(Data data,String operation);
	
	public Data getDataById(int id);
	
	public List<Data> queryData(int page, int pageSize);
	
}
