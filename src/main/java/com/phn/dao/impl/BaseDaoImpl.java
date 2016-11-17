package com.phn.dao.impl;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.phn.dao.BaseDao;
/**
 * 
 * @author Knight
 *
 */
public class BaseDaoImpl implements BaseDao {
	@Resource
	protected SessionFactory sessionFactory;
 
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
 
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
}
