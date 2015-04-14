package com.lxm.bbs.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.lxm.bbs.dao.BaseDao;
import com.lxm.bbs.dao.UserDao;

import com.qdgs.bean.UserInfo;

public class UserDaoImpl extends BaseDao implements UserDao{

	private Connection conn=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	private UserInfo [] users=new UserInfo[3];
//	public int addUser(User user) {
//		// TODO Auto-generated method stub
////		for (int i = 0; i < 3; i++) {
////			if (users[i]==null) {
////				users[i]=user;
////				users[i].setUId(i);
////				return 1;
////			}
////		}
////		return 0;
//		String time=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(new Date());
//		String sql="insert into user(uName,uPass,head,regTime,gender) values(?,?,?,?,?)";
//		String[] getValue={user.getUName(),user.getUPass(),user.getHead(),time,user.getGender()+""};
//		//如果定义的String类型数组要存int类型的数据时，只要在后面加上一个+号和""号
//		
//		return this.executeSQL(sql, getValue);
//	}

	public UserInfo findUser(String name) { //通过用户名查找对应的用户信息

		UserInfo user=null;
		String sql="select * from userinfo where userName=?";
		try {
			conn=this.getConn();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				user=new UserInfo();
				user.setUserId(rs.getInt("userId"));
				user.setId(rs.getInt("id"));
				user.setUserName(rs.getString("userName"));
				user.setUserPwd(rs.getString("userPwd"));
				user.setName(rs.getString("name"));
				user.setUserSex(rs.getString("userSex"));
				user.setUserLinkMan(rs.getString("userLinkMan"));
				user.setUserEmail(rs.getString("userEmail"));
				user.setUserTel(rs.getString("userTel"));
				user.setUserUnit(rs.getString("userUnit"));
				user.setUserUrl(rs.getString("userUrl"));
				user.setUserCountry(rs.getString("userCountry"));
				user.setUserProvince(rs.getString("userProvince"));
				user.setUserCity(rs.getString("userCity"));
				user.setUserPost(rs.getString("userPost"));
				user.setUserAddress(rs.getString("userAddress"));
				user.setUserProduct(rs.getString("userProduct"));
				user.setUserProductType(rs.getString("userProductType"));
				user.setUserProductId(rs.getString("userProductId"));
				user.setHead(rs.getString("head"));
				user.setRegTime(rs.getString("regTime"));
				
				
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("findUser方法异常通过用户名查找");
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return user;
	}

	public int updateUser(UserInfo user) {
		// TODO Auto-generated method stub
		String sql="update userinfo set userPwd=? where userName=?";
		String[] getValue={user.getUserPwd(),user.getUserName()};
		return this.executeSQL(sql, getValue);
	}

	@Override
	public UserInfo findUser(int id) {
		// TODO Auto-generated method stub
		UserInfo user=null;
		String sql="select * from userinfo where userId=?";
		try {
			conn=this.getConn();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				user=new UserInfo();
				user.setUserId(rs.getInt("userId"));
				user.setId(rs.getInt("id"));
				user.setUserName(rs.getString("userName"));
				user.setUserPwd(rs.getString("userPwd"));
				user.setName(rs.getString("name"));
				user.setUserSex(rs.getString("userSex"));
				user.setUserLinkMan(rs.getString("userLinkMan"));
				user.setUserEmail(rs.getString("userEmail"));
				user.setUserTel(rs.getString("userTel"));
				user.setUserUnit(rs.getString("userUnit"));
				user.setUserUrl(rs.getString("userUrl"));
				user.setUserCountry(rs.getString("userCountry"));
				user.setUserProvince(rs.getString("userProvince"));
				user.setUserCity(rs.getString("userCity"));
				user.setUserPost(rs.getString("userPost"));
				user.setUserAddress(rs.getString("userAddress"));
				user.setUserProduct(rs.getString("userProduct"));
				user.setUserProductType(rs.getString("userProductType"));
				user.setUserProductId(rs.getString("userProductId"));
				user.setHead(rs.getString("head"));
				user.setRegTime(rs.getString("regTime"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("findUser方法异常通过用户id查找");
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return user;
	}

	

}