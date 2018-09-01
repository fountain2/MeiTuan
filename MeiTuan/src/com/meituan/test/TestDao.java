package com.meituan.test;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.List;

import org.junit.Test;

import com.meituan.bean.User;
import com.meituan.dao.BaseDao;
import com.meituan.dao.impl.UserDaoImpl;
import com.meituan.util.ManagerThreadLocal;

public class TestDao {
	
	/**
	 * 事务控制模板
	 */
	@Test
	public void test2() {
		BaseDao<User> daoImpl = UserDaoImpl.getUserDaoImpl();
		ManagerThreadLocal.startTransacation();
		try {
			daoImpl.update(ManagerThreadLocal.getConnection(),"update userlist set status = ? where id =? ", 1, 31);
			ManagerThreadLocal.commit();
		} catch (Exception e) {
			ManagerThreadLocal.rollback();
		}finally {
			ManagerThreadLocal.close();
		}
	}

	/**
	 * 自动提交事务
	 * @throws Exception
	 */
	@Test
	public void test1() throws Exception {
		BaseDao<User> daoImpl = UserDaoImpl.getUserDaoImpl();

		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		while (true) {
			System.out.println("1、增，2、改，3、查，4、删，5、查数量，6、查询所有");
			switch (br.readLine()) {
			case "1":
				daoImpl.update("insert into userlist(name,password,status) values(?,?,?)", "foun012", "4321", 2);
				System.out.println("增加");
				break;
			case "2":
				daoImpl.update("update userlist set status = ? where id =? ", 1, 33);
				System.out.println("修改");
				break;
			case "3":
				User userbean = daoImpl.queryBean("select * from userlist where id = ?", 33);
				System.out.println(userbean);
				break;
			case "4":
				daoImpl.update("delete from userlist where id = ?", 33);
				System.out.println("删除");
				break;
			case "5":
				int value = (int) daoImpl.queryValue("select count(*) from userlist");
				System.out.println("数据库的数据数量:" + value);
				break;
			case "6":
				List<User> list = daoImpl.queryBeanList("select * from userlist");
				for (User user : list) {
					System.out.println(user);
				}
				break;
			default:
				break;
			}
		}
	}

}
