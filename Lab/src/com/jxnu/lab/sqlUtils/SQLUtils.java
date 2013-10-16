package com.jxnu.lab.sqlUtils;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

import com.jxnu.lab.model.Admin;
import com.jxnu.lab.model.News;


public class SQLUtils {

	public static final String UPDATE="update";
	public static final String DELETE="delete";
	
	public static final boolean create(Object obj){
		AnnotationConfiguration cfg = new AnnotationConfiguration().configure();
		SessionFactory sf = cfg.buildSessionFactory();
	    Session session = null;
	    try {
		    session = sf.openSession();
		    session.beginTransaction();
		    session.save(obj);
		    
		    session.getTransaction().commit();
	    }catch(Exception e) {
	    	e.printStackTrace();
	    	session.getTransaction().rollback();
	    	return false;
	    }finally {
		    if (session != null)
		    {
			    if (session.isOpen())
			    	session.close();
		    }
		    if(!sf.isClosed())
		    	sf.close();
		    
	    }
	    return true;
	
		
	}

	public static final boolean update_delete(Object obj,String operation){
		
		SessionFactory sf = null;
		Session s = null;
		try{
			AnnotationConfiguration cfg = new AnnotationConfiguration().configure();
			sf = cfg.buildSessionFactory();
			s = sf.openSession();
			s.beginTransaction();
			if(operation==SQLUtils.DELETE){
				s.delete(obj);
			}
			else if(operation==SQLUtils.UPDATE){
				s.update(obj);
			}
			s.getTransaction().commit();
		}catch(Exception e) {
	    	e.printStackTrace();
	    	s.getTransaction().rollback();
	    	return false;
	    }finally {
		    if (s != null)
		    {
			    if (s.isOpen())
			    	s.close();
		    }
		    if(!sf.isClosed())
		    	sf.close();
		    
	    }
		return true;
	}
	
	public static final Object getObjectById(String sql){
		Object obj=null;
		
		AnnotationConfiguration cfg = new AnnotationConfiguration().configure();
		SessionFactory sf = cfg.buildSessionFactory();
	    Session session = null;
	    try {
		    session = sf.openSession();
		    session.beginTransaction();
		    obj = (Object)session.createQuery(sql).uniqueResult();
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
		
		return obj;
		
	}
	

	public static final List<Object> getQueryList(Object obj,String sql){
		
		List<Object> list=null;
		AnnotationConfiguration cfg = new AnnotationConfiguration().configure();
		SessionFactory sf = cfg.buildSessionFactory();
	    Session session = null;
	    try {
		    session = sf.openSession();
		    session.beginTransaction();
		    Query query = session.createQuery(sql);
		    list = (List<Object>)query.list();
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
