package com.oaec.OnlineStore.util;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CommonDao extends JDBCUtils{

	
	public interface GetBean<T> {
		T getBeanFromResultSet(ResultSet rs) throws SQLException;
	}
	
	public int executeUpdate(String sql, Object... params) {
		Connection conn = null;
		PreparedStatement pstm = null;
		try {
			conn = getConnection();
			pstm = conn.prepareStatement(sql);
			if(params != null && params.length > 0) {
				for(int i = 0; i < params.length; i++) {
					pstm.setObject(i + 1, params[i]);
				}
			}
			int i = pstm.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstm, conn);
		}
		return 0;
	}
	
	
	/**
	 * ���İ�
	 * @param sql
	 * @param clazz
	 * @param params
	 * @return
	 */
	public <T> List<T> query4BeanList(String sql, Class<T> clazz, Object...params){
		List<T> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstm = conn.prepareStatement(sql);
			if(params != null && params.length > 0) {
				for(int i = 0; i < params.length; i++) {
					pstm.setObject(i + 1, params[i]);
				}
			}
			rs = pstm.executeQuery();
			ResultSetMetaData metaData = rs.getMetaData();
			int columnCount = metaData.getColumnCount();
			String[] columnNames = new String[columnCount];
			for(int i = 1; i <= columnCount; i++) {
				String columnName = metaData.getColumnName(i);
				columnNames[i - 1] = columnName;
			}
			while(rs.next()) {
				clazz.getClass();
				T newInstance = clazz.newInstance();
				Field[] fields = clazz.getDeclaredFields();
				for (Field field : fields) {
					String name = field.getName();
					String setMethodName = "set" + name.substring(0, 1).toUpperCase() + name.substring(1);
					Class<?> type = field.getType();
					Method setMethod = clazz.getMethod(setMethodName, type);
					for (String columnName : columnNames) {
						if(columnName.replaceAll("_", "").equalsIgnoreCase(name)) {
							Object value = rs.getObject(name);
							if(value instanceof BigDecimal && type == Integer.class) {
								value = ((BigDecimal)value).intValue();
							}
							if(value instanceof BigDecimal && type == Double.class) {
								value = ((BigDecimal)value).doubleValue();
							}
							setMethod.invoke(newInstance, value);
						}
					}
				}
				list.add(newInstance);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstm, conn);
		}
		return list;
	}
	
	public <T> T query4Bean(String sql, Class<T> clazz, Object...params) {
		List<T> list = query4BeanList(sql, clazz, params);
		if(list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
	
	/**
	 * ������
	 * @param sql
	 * @param g
	 * @param params
	 * @return
	 */
	
	public <T> List<T> query4BeanList(String sql, GetBean<T> g, Object...params){
		List<T> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstm = conn.prepareStatement(sql);
			if(params != null && params.length > 0) {
				for(int i = 0; i < params.length; i++) {
					pstm.setObject(i + 1, params[i]);
				}
			}
			rs = pstm.executeQuery();
			while(rs.next()) {
				T t = g.getBeanFromResultSet(rs);
				list.add(t);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstm, conn);
		}
		return list;
	}
	
	public <T> T query4Bean(String sql, GetBean<T> g, Object...params){
		List<T> list = query4BeanList(sql, g, params);
		if(list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
	
	/**
	 * �ڶ���
	 * @param sql
	 * @param params
	 * @return
	 */
	public List<Map<String, Object>> query4MapList(String sql, Object...params){
		List<Map<String, Object>> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstm = conn.prepareStatement(sql);
			if(params != null && params.length > 0) {
				for(int i = 0; i < params.length; i++) {
					pstm.setObject(i + 1, params[i]);
				}
			}
			rs = pstm.executeQuery();
			ResultSetMetaData metaData = rs.getMetaData();
			int count = metaData.getColumnCount();
			while(rs.next()) {
				Map<String, Object> map = new HashMap<>();
				for(int i = 1; i <= count; i++) {
					map.put(metaData.getColumnName(i), rs.getObject(i));
				}
				list.add(map);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstm, conn);
		}
		return list;
	}
	
	
	public Map<String, Object> query4Map(String sql, Object...params) {
		List<Map<String, Object>> list = query4MapList(sql, params);
		if(list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
}
