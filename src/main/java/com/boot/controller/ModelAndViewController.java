package com.boot.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class ModelAndViewController {
	
	@RequestMapping("/")
	public String index(HttpServletRequest request, HttpSession session) {
		
		return "pages/login.html";
	}
	@RequestMapping("/toUrl")
	public String toUrl(HttpServletRequest request, HttpSession session) {
		
		return "pages/login.html";
	}
}
