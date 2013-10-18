package com.jxnu.lab.bo;

import java.util.List;

import com.jxnu.lab.model.Admin;

public interface AdminBo {
	
	public Admin getAdmin(Admin a);
	
	public List<Admin> queryAdmin(int page, int pageSize);
	
	public boolean addAdmin(Admin a);
	
	public boolean deleteAdmin(Admin a);
	
	public boolean updateAdmin(Admin a);
	
	public boolean login(Admin a);
	
	public int getPageNum(int pageSize);
	
	public boolean checkAdmin(Admin a);
}
