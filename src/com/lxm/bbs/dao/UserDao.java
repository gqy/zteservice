package com.lxm.bbs.dao;


import com.qdgs.bean.UserInfo;

public interface UserDao {
	public UserInfo findUser(String uName);  //查找用户
	//public int addUser(UserInfo user);  //增加用户
	public int updateUser(UserInfo user);  //修改用户
	public UserInfo findUser(int uId);  //通过用户ID找到对应的用户信息
}