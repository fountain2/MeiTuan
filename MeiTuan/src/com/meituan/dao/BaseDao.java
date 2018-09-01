package com.meituan.dao;


import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public interface BaseDao<T> {

	/**
	 * 批处理
	 * 手动提交事务
	 * @param con
	 * @param sql
	 * @param params
	 * @throws SQLException
	 */
	int[] batch(Connection con, String sql, Object[]... params) throws SQLException;

	/**
	 * 批处理
	 * 自动提交事务
	 * @param sql
	 * @param params
	 * @throws SQLException
	 */
	int[] batch(String sql, Object[]... params) throws SQLException;

	/**
	 * 查询指定值，如，count
	 * @param sql
	 * @param params
	 * @return
	 * @throws SQLException
	 */
	Object queryValue(String sql, Object... params) throws SQLException;

	/**
	 * 查询返回bean的集合
	 * @param con
	 * @param sql
	 * @param params
	 * @return
	 * @throws SQLException
	 */
	List<T> queryBeanList(String sql, Object... params) throws SQLException;

	/**
	 * 查询返回bean
	 * @param sql
	 * @param params
	 * @return
	 * @throws SQLException
	 */
	T queryBean(String sql, Object... params) throws SQLException;

	/**
	 * 手动提交事务
	 *  update， delete，insert 
	 * @param con
	 * @param sql
	 * @param params
	 * @throws SQLException
	 */
	int update(Connection con, String sql, Object... params) throws SQLException;

	/**
	 * 自动提交
	 * update， delete，insert 
	 * @param sql
	 * @param params
	 * @return 
	 * @throws SQLException
	 */
	int update(String sql, Object... params) throws SQLException;

}