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

}
