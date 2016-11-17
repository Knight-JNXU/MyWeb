package com.phn.service;

import java.util.List;

import com.phn.model.MessageModel;

/**
 * 
 * @author Knight
 *
 */
public interface MessageService {
	
	// 保存留言
	public void saveMessage(MessageModel message);
	
	// 返回留言的list
	public List<MessageModel> list();
}
