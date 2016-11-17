package com.phn.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.phn.service.JokeService;
/**
 * 
 * @author Knight
 *
 */

@Controller
@RequestMapping("/joke")
public class JokeController {
	
	@Resource
	private JokeService jokeService;
	
	@RequestMapping(value="/list")
	public String list(Model model){
		model.addAttribute("jokes", jokeService.getJokes());
		return "joke/list";
	}
}
