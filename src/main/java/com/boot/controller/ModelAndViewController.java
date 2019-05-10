package com.boot.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.boot.bean.ManageMenu;
import com.boot.service.ManageMenuService;
//@RestController
@Controller
@RequestMapping(value="/")
public class ModelAndViewController{
	@Autowired
	private ManageMenuService manageMenuService;
	
	@RequestMapping("/")
	public ModelAndView tologin(HttpServletRequest request, HttpSession session) {
		
		return new ModelAndView("page/login");
	}
	@RequestMapping(value="/login.do" , method=RequestMethod.POST)
//	@ResponseBody
	public  String login(HttpServletRequest request, HttpSession session) {
		System.out.println("llllllllllllllll");
		Map<String, Object> reMap=new HashMap<String, Object>();
		Map<String, Object> returnMap=new HashMap<String, Object>();
		List<Map<String, Object>> manageMenuList =new ArrayList<Map<String, Object>>();
		
		String loginName=request.getParameter("loginName");
		String passWord=request.getParameter("pwd");
		System.out.println(loginName+"-------"+passWord);
		returnMap.put("code", 0);
		return "redirect:/index.do";
	}
	
	
	@RequestMapping("/index.do")
//	@ResponseBody
	public ModelAndView index(HttpServletRequest request, HttpSession session) {
		Map<String, Object> reMap=new HashMap<String, Object>();
		Map<String, Object> returnMap=new HashMap<String, Object>();
		List<Map<String, Object>> manageMenuList =new ArrayList<Map<String, Object>>();
		
		List<ManageMenu> manageMenus=manageMenuService.selectByMap(reMap);
		for (ManageMenu manageMenu : manageMenus) {
			Map<String, Object> topMenuList=new HashMap<String, Object>();
			if (manageMenu.getLevels().equals("2")) {
				topMenuList.put("menu_id",manageMenu.getmId());
				topMenuList.put("icon_url",manageMenu.getIconUrl());
				topMenuList.put("menu_name",manageMenu.getMenuName());
				topMenuList.put("menu_desciption",manageMenu.getMenuDesciption());
				manageMenuList.add(topMenuList);
			}
		}
		for (Map<String, Object> manageMenu : manageMenuList) {
			for (ManageMenu manageMenu2 : manageMenus) {
				Map<String, Object> childMenuList=new HashMap<String, Object>();
				if (manageMenu.get("menu_id").equals(manageMenu2.getParentid())) {
					childMenuList.put("menu_id",manageMenu2.getmId());
					childMenuList.put("icon_url",manageMenu2.getIconUrl());
					childMenuList.put("menu_name",manageMenu2.getMenuName());
					childMenuList.put("menu_desciption",manageMenu2.getMenuDesciption());
					manageMenu.put("childMenuList", childMenuList);
				}
			}
		}
		
		returnMap.put("code", 0);
		returnMap.put("url", "power");
		returnMap.put("menus",manageMenuList);
		System.out.println(returnMap.toString());
		ModelAndView modelAndView=new ModelAndView("page/power","data",returnMap);
		System.out.println(modelAndView);
		return modelAndView;
		
	}
	
	
	
	
	@RequestMapping("/toUrl.do")
	@ResponseBody
	public Map<String, Object> toUrl(HttpServletRequest request, HttpSession session) {
		Map<String, Object> reMap=new HashMap<String, Object>();
		Map<String, Object> returnMap=new HashMap<String, Object>();
		String url=request.getParameter("url");
		List<ManageMenu> manageMenus=manageMenuService.selectByMap(reMap);
		System.out.println(manageMenus.toString());
		returnMap.put("code", 0);
		returnMap.put("url", url);
		returnMap.put("menus", manageMenus);
		return returnMap;
	}
	
}
