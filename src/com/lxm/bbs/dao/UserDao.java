package com.lxm.bbs.dao;


import com.qdgs.bean.UserInfo;

public interface UserDao {
	public UserInfo findUser(String uName);  //�����û�
	//public int addUser(UserInfo user);  //�����û�
	public int updateUser(UserInfo user);  //�޸��û�
	public UserInfo findUser(int uId);  //ͨ���û�ID�ҵ���Ӧ���û���Ϣ
}