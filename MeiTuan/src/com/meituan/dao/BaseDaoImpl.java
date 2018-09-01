package com.meituan.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.meituan.util.C3P0Util;
import com.meituan.util.ReflectionUtils;

public class BaseDaoImpl<T> implements BaseDao<T> {
	private QueryRunner qr = null;
	private Class<T> type;

	public BaseDaoImpl() {
		qr = new QueryRunner(C3P0Util.getDataSource());
		type = ReflectionUtils.getSuperGenericType(getClass());
//		System.out.println(type);
	}

	public int[] batch(Connection con, String sql, Object[]... params) throws SQLException {
		int[] batch = qr.batch(con, sql, params);
		return batch;
	}

	public int[] batch(String sql, Object[]... params) throws SQLException {
		int[] batch = qr.batch(sql, params);
		return batch;
	}

	public Object queryValue(String sql, Object... params) throws SQLException {
		Object query = qr.query(sql, new ScalarHandler() {
			@Override
			public Object handle(ResultSet rs) throws SQLException {
				rs.next();
				return rs.getInt(1);
			}
		}, params);
		return query;
	}

	public List<T> queryBeanList(String sql, Object... params) throws SQLException {
		List<T> list = qr.query(sql, new BeanListHandler<T>(type), params);
		return list;
	}

	public T queryBean(String sql, Object... params) throws SQLException {
		T bean = qr.query(sql, new BeanHandler<T>(type), params);
		return bean;
	}

	public int update(Connection con, String sql, Object... params) throws SQLException {
		int update = qr.update(con, sql, params);
		return update;
	}

	public int update(String sql, Object... params) throws SQLException {
		int update = qr.update(sql, params);
		return update;
	}

}
