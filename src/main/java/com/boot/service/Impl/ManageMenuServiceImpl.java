package com.boot.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.bean.ManageMenu;
import com.boot.dao.ManageMenuMapper;
import com.boot.service.ManageMenuService;
@Service
public class ManageMenuServiceImpl implements ManageMenuService{
	@Autowired
	private ManageMenuMapper manageMenuMapper;
	
	@Override
	public List<ManageMenu> selectByMap(Map map) {
		return manageMenuMapper.selectByMap(map);
	}
}
