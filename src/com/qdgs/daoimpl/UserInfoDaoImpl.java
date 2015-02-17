package com.qdgs.daoimpl;

import com.qdgs.bean.UserInfo;
import com.qdgs.dao.UserInfoDao;
import com.qdgs.global.QdgsHibernateDaoSupport;

public class UserInfoDaoImpl extends QdgsHibernateDaoSupport implements UserInfoDao {

	@Override
	public Integer save(UserInfo userInfo) {
		// TODO Auto-generated method stub
		return (Integer)getHibernateTemplate().save(userInfo);
	}

}
