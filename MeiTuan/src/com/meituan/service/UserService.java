package com.meituan.service;

import java.sql.SQLException;

import com.meituan.bean.User;


public interface UserService {

	/**
	 * ��¼
	 * @param username
	 * @param password
	 * @return
	 * @throws SQLException 
	 */
	User login(String name, String password) throws SQLException;
	
}
