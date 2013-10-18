package com.jxnu.lab.bo.impl;

import java.util.List;

import com.jxnu.lab.Configration;
import com.jxnu.lab.bo.AdminBo;
import com.jxnu.lab.dao.AdminDao;
import com.jxnu.lab.dao.impl.AdminDaoImpl;
import com.jxnu.lab.model.Admin;
import com.jxnu.lab.sqlUtils.SQLUtils;

public class AdminBoImpl implements AdminBo{

	AdminDao ad=new AdminDaoImpl();
	
	public boolean addAdmin(Admin a) {
		
		return ad.createAdmin(a);
		
	}

	public boolean deleteAdmin(Admin a) {
		String operation=SQLUtils.DELETE;
		return ad.update_delete(a, operation);
	}

	public Admin getAdmin(Admin a) {
		return ad.getAdmin(a.getId());
	}

	public List<Admin> queryAdmin(int page, int pageSize) {
		return ad.query(page, pageSize);
	}

	public boolean updateAdmin(Admin a) {
		String operation=SQLUtils.UPDATE;
		return ad.update_delete(a, operation);
	}

	public boolean login(Admin a) {
		Admin admin=ad.getAdmin(a.getId());
		if(admin==null)
			return false;
		else if(a.getPassWord().equals(admin.getPassWord()))
			return true;
		else
			return false;
	}

	public int getPageNum(int pageSize) {
		
		int page=0;
		int sum=0;
		int i=sum%pageSize;
		sum=SQLUtils.GetSumOfRecord(Configration.getAdminTable(), 0);
		if(i==0)
			page=sum/pageSize;
		else
			page=sum/pageSize+1;
		return page;
	}

	public boolean checkAdmin(Admin a) {
		
		return false;
		
	}

}
