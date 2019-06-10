package com.oaec.OnlineStore.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCUtils {

	
	public Connection getConnection() throws SQLException {
		try {
			return JdbcDataSource.getDataSource().getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void close(ResultSet rs, Statement stm, Connection conn) {
		try {
			if(rs != null) {
				rs.close();
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		} finally {
			try {
				if(stm != null) {
					stm.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					if(conn != null && !conn.isClosed()) {
						conn.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	public void close(Statement stm, Connection conn) {
		try {
			if(stm != null) {
				stm.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(conn != null && !conn.isClosed()) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
