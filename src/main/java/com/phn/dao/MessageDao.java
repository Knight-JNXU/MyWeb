package com.phn.dao;

import java.util.List;

import com.phn.model.MessageModel;

/**
 * 
 * @author Knight
 *
 */
public interface MessageDao {
	public void saveMessage(MessageModel message);
	
	// 返回留言的list
	public List<MessageModel> list();
}
