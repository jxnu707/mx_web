package com.jxnu.lab.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import com.jxnu.lab.dao.DataDao;
import com.jxnu.lab.model.Data;
import com.jxnu.lab.sqlUtils.SQLUtils;

public class DataDaoImpl implements DataDao {

	public boolean createData(Data data){
		
		return SQLUtils.create(data);
		
	}

	public Data getDataById(int id) {
		
		Data data=null;
		String sql = "from Data d where d.id='"+id+"'";
		data=(Data)SQLUtils.getObjectById(sql);
		return data;
		
	}

	public List<Data> queryData(int page, int pageSize) {
		
		AnnotationConfiguration cfg = new AnnotationConfiguration().configure();
		SessionFactory sf = cfg.buildSessionFactory();
	    Session session = null;
	    int start = pageSize*(page - 1);
	    int end = pageSize*page;
	    List<Data> list = null;
	    String sql = "from Data as d where d.id > 1";
	    try {
		    session = sf.openSession();
		    session.beginTransaction();
		    Query query = session.createQuery(sql);
			query.setFirstResult(start); 
			query.setMaxResults(pageSize); 
			list= (List<Data>)query.list();
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

	public boolean update_delete(Data data, String operation) {
		
		return SQLUtils.update_delete(data, operation);
		
	}
	

	
}
