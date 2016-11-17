package com.phn.dao.impl;
 
import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.phn.dao.UserDao;
import com.phn.model.UserModel;
 
/**
 * 
 * @author Knight
 *
 */
 
@Repository("userDao")
public class UserDaoImpl extends BaseDaoImpl implements UserDao {
	
	public boolean isExist(HttpSession httpSession, UserModel user) {
		
		Session session = this.getSession();
		Criteria c = session.createCriteria(UserModel.class);
		if(user.getUsername()!=null && user.getPassword()!=null){
			c.add(Restrictions.eq("username", user.getUsername()));
			c.add(Restrictions.eq("password", user.getPassword()));
		}
		if(!c.list().isEmpty()){
			httpSession.setAttribute("user", c.list().get(0));
			return true;
		}
		return false;
	}
}
