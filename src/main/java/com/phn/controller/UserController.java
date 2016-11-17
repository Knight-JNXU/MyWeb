package com.phn.controller;
 
 
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.phn.model.UserModel;
import com.phn.service.UserService;
 
/**
 * 
 * @author Knight
 *
 */
@Controller
@RequestMapping("/user")
public class UserController{
	@Resource
	private UserService userService;
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login(HttpSession httpSession, UserModel user, Model model){
		System.out.println(user.toString());
		boolean loginResult = userService.isExist(httpSession, user);
		if(loginResult){
			return "user/admin";
		}else{
			model.addAttribute("result", "登录失败!");
			return "user/result";
		}
	}
	
	@RequestMapping(value="/preLogin")
	public String preLogin(){
		return "user/login";
	}
	
	@RequestMapping(value="admin")
	public String admin(HttpSession httpSession, Model model){
		model.addAttribute("user", httpSession.getAttribute("user"));
		return "user/admin";
	}
	
}