package com.boot.dao;

import com.boot.bean.ManageMenu;

public interface ManageMenuMapper {
    int insert(ManageMenu record);

    int insertSelective(ManageMenu record);

    ManageMenu selectByPrimaryKey(String mId);

    int updateByPrimaryKeySelective(ManageMenu record);

    int updateByPrimaryKey(ManageMenu record);
}