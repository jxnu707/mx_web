package com.jxnu.lab.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

import com.jxnu.lab.dao.AdminDao;
import com.jxnu.lab.model.Admin;
import com.jxnu.lab.sqlUtils.SQLUtils;

public class AdminDaoImpl implements AdminDao{

	public boolean createAdmin(Admin a) {

		return SQLUtils.create(a);
	
	}

	public boolean update_delete(Admin a,String operation){
		
		return SQLUtils.update_delete(a, operation);
		
	}

	public boolean IsAdminName(String name){
		AnnotationConfiguration cfg = new AnnotationConfiguration().configure();
		SessionFactory sf = cfg.buildSessionFactory();
	    Session session = null;
	    String sql = "select count(*) from Admin a where a.name='"+name+"'";
	    Long m = null;
	    try {
		    session = sf.openSession();
		    session.beginTransaction();
		    m = (Long)session.createQuery(sql).uniqueResult();
		    session.getTransaction().commit();
	    }catch(Exception e) {
	    	e.printStackTrace();
	    	session.getTransaction().rollback();
	    }finally {
		    if (session != null)
		    {
			    if (session.isOpen())
			    	session.close();
		    }
		    if(!sf.isClosed())
		    	sf.close();
		    
	    }
	    if(m > 0)
	    	return true;
	    else
	    	return false;
	}

	public Admin getAdmin(int id){
//		AnnotationConfiguration cfg = new AnnotationConfiguration().configure();
//		SessionFactory sf = cfg.buildSessionFactory();
//	    Session session = null;
//	    String sql = "from Admin a where a.id='"+id+"'";
//	    Admin m = null;
//	    try {
//		    session = sf.openSession();
//		    session.beginTransaction();
//		    m = (Admin)session.createQuery(sql).uniqueResult();
//		    session.getTransaction().commit();
//	    }catch(Exception e) {
//	    	e.printStackTrace();
//	    	session.getTransaction().rollback();
//	    }finally {
//		    if (session != null)
//		    {
//			    if (session.isOpen())
//			    	session.close();
//		    }
//		    if(!sf.isClosed())
//		    	sf.close();
//		    
//	    }
//	    return m;
		
		Admin admin=null;
		String sql="from Admin a where a.id='"+id+"'";
		admin=(Admin)SQLUtils.getObjectById(sql);
		return admin;
	}

	
	public List<Admin> query(int page, int pageSize, String name){
		
		AnnotationConfiguration cfg = new AnnotationConfiguration().configure();
		SessionFactory sf = cfg.buildSessionFactory();
	    Session session = null;
	    int start = pageSize*(page - 1);
	    int end = pageSize*page;
	    List<Admin> list = null;
	    String sql = "from Admin as a where a.id > 1 and a.name <> '"+name+"' ";
	    try {
		    session = sf.openSession();
		    session.beginTransaction();
		    Query query = session.createQuery(sql);
			query.setFirstResult(start); 
			query.setMaxResults(pageSize); 
			list= (List<Admin>)query.list();
	    }catch(Exception e) {
	    	e.printStackTrace();
	    	session.getTransaction().rollback();
	    }finally {
		    if (session != null)
		    {
			    if (session.isOpen())
			    	session.close();
		    }
		    if(!sf.isClosed())
		    	sf.close();
		    
	    }
	    return list;
	}
	
}
