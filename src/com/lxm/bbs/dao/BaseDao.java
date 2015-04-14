package com.lxm.bbs.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BaseDao {
	public final static String DRIVER = "com.mysql.jdbc.Driver";
	public final String URL="jdbc:mysql://localhost:3306/test2?user=root&password=111111";
	public final String DBNAME = "root";
	public final String DHPASS = "111111";

	public Connection getConn() {
		try {
			Class.forName(DRIVER);
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			System.out.println("注册驱动异常");
			e1.printStackTrace();
		}
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, DBNAME, DHPASS);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("连接数据库异常");
			e.printStackTrace();
		}
		return conn;

	}

	/* 关闭资源 */
	public void closeAll(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("RS关闭发生异常");
				e.printStackTrace();
			}
		}

		if (pstmt != null) {

			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("pstmt关闭发生异常");
				e.printStackTrace();
			}

		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("conn关闭发生异常");
				e.printStackTrace();
			}

		}
	}

	public int executeSQL(String sql,String[] getValue){
		int result=0;
		Connection conn=null;
		PreparedStatement pstmt=null;
		try {
			conn=getConn();  //获取数据库连接方法
			pstmt=conn.prepareStatement(sql);
			if (getValue!=null) {
				for (int i = 0; i < getValue.length; i++) {
					pstmt.setString(i+1, getValue[i]);
				}
			}
			result=pstmt.executeUpdate();  //执行SQL语句
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("executeSQL方法异常");
			e.printStackTrace();
		}finally{
			closeAll(conn,pstmt,null);
		}
		return result;
	}

}
