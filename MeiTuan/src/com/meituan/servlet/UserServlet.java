package com.meituan.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.meituan.bean.User;
import com.meituan.service.UserService;
import com.meituan.service.impl.UserServiceImpl;

@WebServlet("/userServlet")
public class UserServlet extends BaseServlet {
	// 获得service对象
	private static UserService userService = UserServiceImpl.getUserServiceImpl();

	public void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException, IllegalAccessException, InvocationTargetException {
		//已有全局乱码过滤器，无需写xxx  utf-8
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		
		String path;
		User user = new User();
		user = userService.login(name, password);
//		BeanUtils.populate(user, request.getParameterMap());
//		user = userService.login(user.getName(), user.getPassword());
		
		if (user != null) {
			System.out.println(user);
			path = "/jsp/index.jsp";
			request.getSession().setAttribute("user", user);
			request.getRequestDispatcher(path).forward(request, response);
		} else {
			System.out.println(user);
			path = "/jsp/index.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		}
	}

	public void register(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}
