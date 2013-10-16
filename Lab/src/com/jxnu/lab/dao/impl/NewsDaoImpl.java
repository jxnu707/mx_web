package com.jxnu.lab.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import com.jxnu.lab.dao.NewsDao;
import com.jxnu.lab.model.Admin;
import com.jxnu.lab.model.News;
import com.jxnu.lab.sqlUtils.SQLUtils;

public class NewsDaoImpl implements NewsDao{

	public News getNewsById(int id) {
		
		News news=null;
		String sql = "from News n where n.id='"+id+"'";
		news=(News)SQLUtils.getObjectById(sql);
		return news;
	}

	public boolean createNews(News news) {
		
		return SQLUtils.create(news);
		
	}

	public List<News> queryNews(int page, int pageSize) {
		
		AnnotationConfiguration cfg = new AnnotationConfiguration().configure();
		SessionFactory sf = cfg.buildSessionFactory();
	    Session session = null;
	    int start = pageSize*(page - 1);
	    int end = pageSize*page;
	    List<News> list = null;
	    String sql = "from News as n where n.id > 1";
	    try {
		    session = sf.openSession();
		    session.beginTransaction();
		    Query query = session.createQuery(sql);
			query.setFirstResult(start); 
			query.setMaxResults(pageSize); 
			list= (List<News>)query.list();
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

	public boolean update_delete(News news, String operation) {

		return SQLUtils.update_delete(news, operation);
		
	}
}
