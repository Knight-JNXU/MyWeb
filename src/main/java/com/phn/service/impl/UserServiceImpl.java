package com.phn.service.impl;
 
import javax.annotation.Resource;
 
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 

import com.phn.dao.UserDao;
import com.phn.model.UserModel;
import com.phn.service.UserService;
 
/**
 * 
 * @author Knight
 *
 */
@Transactional
@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource
	private UserDao userDao;
 
	public boolean isExist(HttpSession httpSession, UserModel user) {
		return userDao.isExist(httpSession, user);
	}
 
}