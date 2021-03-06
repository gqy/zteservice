package com.qdgs.daoimpl;

import java.util.List;

import com.qdgs.bean.LoginTest;
import com.qdgs.dao.LoginTestDao;
import com.qdgs.global.QdgsHibernateDaoSupport;

public class LoginTestDaoImpl extends QdgsHibernateDaoSupport implements LoginTestDao{

	@Override
	public LoginTest get(Integer id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate()
				.get(LoginTest.class , id);
	}

	@Override
	public Integer save(LoginTest loginTest) {
		// TODO Auto-generated method stub
		return (Integer)getHibernateTemplate().save(loginTest);
	}

	@Override
	public void update(LoginTest loginTest) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(loginTest);
	}

	@Override
	public void delete(LoginTest loginTest) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(loginTest);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(id);
	}

	@Override
	public List<LoginTest> findAll() {
		// TODO Auto-generated method stub
		return (List<LoginTest>)getHibernateTemplate()
				.find("from LoginTest");
	}

	@Override
	public List<LoginTest> getByName(String name) {
		// TODO Auto-generated method stub
        return (List<LoginTest>)getHibernateTemplate().find("from LoginTest logintest where logintest.name=?",name);
	}
	

}
