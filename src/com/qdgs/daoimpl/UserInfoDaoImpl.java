package com.qdgs.daoimpl;


import java.util.List;

import org.hibernate.Session;

import com.qdgs.bean.UserInfo;
import com.qdgs.dao.UserInfoDao;
import com.qdgs.global.QdgsHibernateDaoSupport;

public class UserInfoDaoImpl extends QdgsHibernateDaoSupport implements UserInfoDao {

	@Override
	public Integer save(UserInfo userInfo) {
		// TODO Auto-generated method stub
		return (Integer)getHibernateTemplate().save(userInfo);
	}
	@Override
	public void update(UserInfo userInfo) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(userInfo);
	}

	@Override
	public void delete(UserInfo userInfo) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(userInfo);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(id);
	}
	@Override
	public List<UserInfo> getPassByUserNameAndUserPwd(UserInfo userInfo) {
		// TODO Auto-generated method stub
		return (List<UserInfo>)getHibernateTemplate().find("from UserInfo userinfo where userinfo.userName=? and userinfo.userPwd=?",userInfo.getUserName(),userInfo.getUserPwd());
	}
	@Override
	public UserInfo getMaxUserId() {
		// TODO Auto-generated method stub select max(id) from
	   List<UserInfo>  ui=(List<UserInfo>)getHibernateTemplate().find("from UserInfo where userId=(select max(userId) from UserInfo)");
	   if(ui!=null && ui.size()>=1){
		   return ui.get(0);
	   }
	   return null;
	}

}
