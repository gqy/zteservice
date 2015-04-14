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
			System.out.println("ע�������쳣");
			e1.printStackTrace();
		}
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, DBNAME, DHPASS);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("�������ݿ��쳣");
			e.printStackTrace();
		}
		return conn;

	}

	/* �ر���Դ */
	public void closeAll(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("RS�رշ����쳣");
				e.printStackTrace();
			}
		}

		if (pstmt != null) {

			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("pstmt�رշ����쳣");
				e.printStackTrace();
			}

		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("conn�رշ����쳣");
				e.printStackTrace();
			}

		}
	}

	public int executeSQL(String sql,String[] getValue){
		int result=0;
		Connection conn=null;
		PreparedStatement pstmt=null;
		try {
			conn=getConn();  //��ȡ���ݿ����ӷ���
			pstmt=conn.prepareStatement(sql);
			if (getValue!=null) {
				for (int i = 0; i < getValue.length; i++) {
					pstmt.setString(i+1, getValue[i]);
				}
			}
			result=pstmt.executeUpdate();  //ִ��SQL���
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("executeSQL�����쳣");
			e.printStackTrace();
		}finally{
			closeAll(conn,pstmt,null);
		}
		return result;
	}

}
