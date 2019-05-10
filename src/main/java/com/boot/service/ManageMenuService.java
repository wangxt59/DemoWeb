package com.boot.service;

import java.util.List;
import java.util.Map;

import com.boot.bean.ManageMenu;

public interface ManageMenuService {
	public List<ManageMenu> selectByMap(Map map);
}
