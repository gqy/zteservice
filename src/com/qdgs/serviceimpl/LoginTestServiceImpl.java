package com.qdgs.serviceimpl;

import com.qdgs.bean.LoginTest;
import com.qdgs.dao.LoginTestDao;
import com.qdgs.service.LoginTestService;

public class LoginTestServiceImpl implements LoginTestService{
    private LoginTestDao loginTestDao;
	public LoginTestDao getLoginTestDao() {
		return loginTestDao;
	}
	public void setLoginTestDao(LoginTestDao loginTestDao) {
		this.loginTestDao = loginTestDao;
	}
	@Override
	public boolean isValidLogin() {
		// TODO Auto-generated method stub
		
		return false;
	}
	@Override
	public boolean regist(LoginTest loginTest) {
		//����dao�������ʵ��ҵ���߼�
		int result=loginTestDao.save(loginTest);
		if(result >0){
			return true;
		}
		return false;
	}
	

}
