package com.meituan.service;

import java.sql.SQLException;

import com.meituan.bean.User;


public interface UserService {

	/**
	 * µÇÂ¼
	 * @param username
	 * @param password
	 * @return
	 * @throws SQLException 
	 */
	User login(String name, String password) throws SQLException;
	
}
