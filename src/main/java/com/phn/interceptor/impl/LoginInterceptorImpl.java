package com.phn.interceptor.impl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.phn.interceptor.LoginInterceptor;

/**
 * 
 * @author Knight
 *
 */
public class LoginInterceptorImpl implements LoginInterceptor {

	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {

	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {

	}

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object obj) throws Exception {
		if(request.getSession().getAttribute("user") == null){
			response.sendRedirect(request.getContextPath() + "/user/preLogin");
		}
		else{
			return true;
		}
		return false;
	}

}
