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
	public boolean isValidLogin(String name,String pass) {
		// TODO Auto-generated method stub
		boolean isCorrectLogin=false;
		if(loginTestDao.getByName(name).get(0).getPass().equals(pass))
			isCorrectLogin=true;
		return isCorrectLogin;
	}
	@Override
	public boolean regist(LoginTest loginTest) {
		//调用dao组件方法实现业务逻辑
		int result=loginTestDao.save(loginTest);
		if(result >0){
			return true;
		}
		return false;
	}
	@Override
	public int getMaxId() {
		// TODO Auto-generated method stub
		return 0;
	}
	

}
