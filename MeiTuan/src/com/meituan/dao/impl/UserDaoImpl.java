package com.meituan.dao.impl;

import com.meituan.bean.User;
import com.meituan.dao.BaseDaoImpl;

public class UserDaoImpl extends BaseDaoImpl<User> {
	//����
	private UserDaoImpl(){};
	private static UserDaoImpl userDaoImpl = null;
	
	public static UserDaoImpl getUserDaoImpl(){
		if (userDaoImpl==null) {
			return userDaoImpl = new UserDaoImpl();
		}
		return userDaoImpl;
	}
	 
}
