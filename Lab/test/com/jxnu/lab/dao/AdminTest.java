package com.jxnu.lab.dao;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.jxnu.lab.dao.impl.AdminDaoImpl;
import com.jxnu.lab.model.Admin;

public class AdminTest {
	
	@Test
	public void createAdmin(){
		
		Admin admin0=new Admin();
		admin0.setName("ĞìÁÖÏª");
		admin0.setPassWord("xulinxi");
		
		Admin admin1=new Admin();
		admin1.setName("ĞìÁÖÏª1");
		admin1.setPassWord("xulinxi1");
		
		Admin admin2=new Admin();
		admin2.setName("ĞìÁÖÏª2");
		admin2.setPassWord("xulinxi2");
		
		Admin admin3=new Admin();
		admin3.setName("ĞìÁÖÏª3");
		admin3.setPassWord("xulinxi3");
		
		Admin admin4=new Admin();
		admin4.setName("ĞìÁÖÏª4");
		admin4.setPassWord("xulinxi4");
		
		AdminDao adminDao=new AdminDaoImpl();
		
		adminDao.createAdmin(admin0);
		adminDao.createAdmin(admin1);
		adminDao.createAdmin(admin2);
		adminDao.createAdmin(admin3);
		adminDao.createAdmin(admin4);
		
	}
	
	@Test
	public void update_delete(){
		
		Admin admin=new Admin();
		admin.setId(1);
		
		Admin admin1=new Admin();
		admin1.setId(5);
		admin1.setName("ĞìÁÖÏª");
		admin1.setPassWord("xulinxi");
		admin1.setPower(111);
		
		AdminDao adminDao=new AdminDaoImpl();
		
		adminDao.update_delete(adminDao.getAdmin(admin.getId()), AdminDaoImpl.DELETE);
		adminDao.update_delete(admin1, AdminDaoImpl.UPDATE);
	}
	
	@Test
	public void getAdmin(){
		Admin admin=new Admin();
		admin.setId(5);
		Admin a_temp=new Admin();
		
		AdminDao adminDao=new AdminDaoImpl();
		a_temp=adminDao.getAdmin(admin.getId());
		
		System.out.println(a_temp.getName());
	}

	@Test
	public void isAdminName(){
	
		String name="ĞìÁÖÏª";
		
		AdminDao adminDao=new AdminDaoImpl();
		boolean check=adminDao.IsAdminName(name);
		
		System.out.println(check);
		
	}

	@Test
	public void query(){
		
		int page=2;
		int pagesize=2;
		String name="ĞìÁÖÏª";
		List<Admin> list=new ArrayList<Admin>();
		
		AdminDao adminDao=new AdminDaoImpl();
		list=adminDao.query(page, pagesize, name);
		
		for(Admin a:list){
			System.out.println(a.getName());
		}
		
	}
}
