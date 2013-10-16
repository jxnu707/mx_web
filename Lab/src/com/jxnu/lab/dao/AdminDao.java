package com.jxnu.lab.dao;

import java.util.List;

import com.jxnu.lab.model.Admin;

public interface AdminDao {
	//�����ж�update_delete�������ĸ�����
	public static final String UPDATE="update";
	public static final String DELETE="delete";
	
	public boolean createAdmin(Admin a);
	
//	public void update(Admin admin);

//	public void delete(Admin admin);
	public boolean update_delete(Admin admin,String operation);
	
	public Admin getAdmin(int id);

	public List<Admin> query(int page, int pageSize, String name);
	
	public boolean IsAdminName(String name);
}
