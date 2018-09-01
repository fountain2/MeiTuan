package com.meituan.service.impl;

import java.sql.SQLException;

import com.meituan.bean.User;
import com.meituan.dao.impl.UserDaoImpl;
import com.meituan.service.UserService;

public class UserServiceImpl implements UserService {
	//����
	private static UserServiceImpl userServiceImpl =null;
	private UserServiceImpl(){};
	public static UserServiceImpl getUserServiceImpl(){
		if (userServiceImpl==null) {
			return new UserServiceImpl();
		}
		return userServiceImpl;
	}
	
	//���dao�����
	private static UserDaoImpl userDaoImpl = UserDaoImpl.getUserDaoImpl();
	
	@Override
	public User login(String name, String password) throws SQLException {
		String sql = "select * from userlist where name=? and password = ?";
		User user = userDaoImpl.queryBean(sql,name,password);
		return user;
	}

}
