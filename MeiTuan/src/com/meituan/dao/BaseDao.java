package com.meituan.dao;


import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public interface BaseDao<T> {

	/**
	 * ������
	 * �ֶ��ύ����
	 * @param con
	 * @param sql
	 * @param params
	 * @throws SQLException
	 */
	int[] batch(Connection con, String sql, Object[]... params) throws SQLException;

	/**
	 * ������
	 * �Զ��ύ����
	 * @param sql
	 * @param params
	 * @throws SQLException
	 */
	int[] batch(String sql, Object[]... params) throws SQLException;

	/**
	 * ��ѯָ��ֵ���磬count
	 * @param sql
	 * @param params
	 * @return
	 * @throws SQLException
	 */
	Object queryValue(String sql, Object... params) throws SQLException;

	/**
	 * ��ѯ����bean�ļ���
	 * @param con
	 * @param sql
	 * @param params
	 * @return
	 * @throws SQLException
	 */
	List<T> queryBeanList(String sql, Object... params) throws SQLException;

	/**
	 * ��ѯ����bean
	 * @param sql
	 * @param params
	 * @return
	 * @throws SQLException
	 */
	T queryBean(String sql, Object... params) throws SQLException;

	/**
	 * �ֶ��ύ����
	 *  update�� delete��insert 
	 * @param con
	 * @param sql
	 * @param params
	 * @throws SQLException
	 */
	int update(Connection con, String sql, Object... params) throws SQLException;

	/**
	 * �Զ��ύ
	 * update�� delete��insert 
	 * @param sql
	 * @param params
	 * @return 
	 * @throws SQLException
	 */
	int update(String sql, Object... params) throws SQLException;

}