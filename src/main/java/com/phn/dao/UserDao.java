package com.phn.dao;
 
import javax.servlet.http.HttpSession;

import com.phn.model.UserModel;
 
/**
 * 
 * @author Knight
 *
 */
public interface UserDao {
	public boolean isExist(HttpSession httpSession, UserModel user);
}
