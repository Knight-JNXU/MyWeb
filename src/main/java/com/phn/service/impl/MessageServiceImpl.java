package com.phn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.phn.dao.MessageDao;
import com.phn.model.MessageModel;
import com.phn.service.MessageService;

/**
 * 
 * @author Knight
 *
 */

@Transactional
@Service("messageService")
public class MessageServiceImpl implements MessageService {
	
	@Resource
	private MessageDao messageDao;
	
	public void saveMessage(MessageModel message) {
		messageDao.saveMessage(message);
	}

	public List<MessageModel> list() {
		return messageDao.list();
	}

}
