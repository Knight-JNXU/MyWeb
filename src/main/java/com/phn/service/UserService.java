package com.phn.service;
 
import javax.servlet.http.HttpSession;

import com.phn.model.UserModel;
 
/**
 * 
 * @author Knight
 *
 */
public interface UserService {
	public boolean isExist(HttpSession httpSession, UserModel user);
}