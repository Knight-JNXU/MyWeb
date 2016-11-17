package com.phn.dao.impl;

import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Repository;

import com.phn.dao.MessageDao;
import com.phn.model.MessageModel;

/**
 * 
 * @author Knight
 *
 */
@Repository("messageDao")
public class MessageDaoImpl extends BaseDaoImpl implements MessageDao {
	
	public void saveMessage(MessageModel message) {
		Session session = this.getSession();
		message.setCreateTime(new Date());
		session.saveOrUpdate(message);
	}

	public List<MessageModel> list() {
		Session session = this.getSession();
		Criteria c = session.createCriteria(MessageModel.class);
		c.addOrder(Order.desc("createTime"));
		return c.list();
	}

}
