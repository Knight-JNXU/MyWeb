package com.phn.dao;

import java.util.Map;

/**
 * 
 * @author Knight
 *
 */
public interface JokeDao {
	
	// 获取笑话
	public String net(String strUrl, Map params, String method) throws Exception;
}
