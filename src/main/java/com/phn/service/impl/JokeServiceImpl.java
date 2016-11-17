package com.phn.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.phn.dao.JokeDao;
import com.phn.dao.MessageDao;
import com.phn.service.JokeService;
/**
 * 
 * @author Knight
 *
 */
@Transactional
@Service("jokeService")
public class JokeServiceImpl implements JokeService {
	
	@Resource
	private JokeDao jokeDao;
	
	// 获取笑话
	public String getJokes(){
		Map params = new HashMap();//请求参数
        params.put("sort","desc");//类型，desc:指定时间之前发布的，asc:指定时间之后发布的
        params.put("page","1");//当前页数,默认1
        params.put("pagesize","20");//每次返回条数,默认1,最大20
        params.put("time", System.currentTimeMillis() / 1000);//时间戳（10位），如：1418816972
        params.put("key", "450ccabad500fda6964d6517a9c72647");//您申请的key
        try {
        	return jokeDao.net("http://japi.juhe.cn/joke/content/list.from", params, "GET");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
