package com.phn.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.phn.model.MessageModel;
import com.phn.service.MessageService;

/**
 * 
 * @author Knight
 *
 */

@Controller
@RequestMapping("/message")
public class MessageController {
	@Resource
	private MessageService messageService;
	
	@RequestMapping(value="/add", method = RequestMethod.POST)
	public String addMessage(MessageModel message){
		messageService.saveMessage(message);
		return "message/success";
	}
	
	@RequestMapping(value="/list")
	public String list(Model model){
		model.addAttribute("messages", messageService.list());
		return "message/list";
	}
	
}
