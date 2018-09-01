package com.meituan.service.impl;

import java.sql.SQLException;

import com.meituan.bean.User;
import com.meituan.dao.impl.UserDaoImpl;
import com.meituan.service.UserService;

public class UserServiceImpl implements UserService {
	//单例
	private static UserServiceImpl userServiceImpl =null;
	private UserServiceImpl(){};
	public static UserServiceImpl getUserServiceImpl(){
		if (userServiceImpl==null) {
			return new UserServiceImpl();
		}
		return userServiceImpl;
	}
	
	//获得dao层对象
	private static UserDaoImpl userDaoImpl = UserDaoImpl.getUserDaoImpl();
	
	@Override
	public User login(String name, String password) throws SQLException {
		String sql = "select * from userlist where name=? and password = ?";
		User user = userDaoImpl.queryBean(sql,name,password);
		return user;
	}

}
