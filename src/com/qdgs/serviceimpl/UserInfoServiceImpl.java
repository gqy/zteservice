package com.qdgs.serviceimpl;

import com.qdgs.bean.UserInfo;
import com.qdgs.dao.UserInfoDao;
import com.qdgs.service.UserInfoService;

public class UserInfoServiceImpl implements UserInfoService{
    private UserInfoDao userInfoDao;
	public UserInfoDao getUserInfoDao() {
		return userInfoDao;
	}
	public void setUserInfoDao(UserInfoDao userInfoDao) {
		this.userInfoDao = userInfoDao;
	}
	@Override
	public boolean regist(UserInfo userInfo) {
		// TODO Auto-generated method stub
		//调用dao组件方法实现业务逻辑
		int result=userInfoDao.save(userInfo);
		if(result>0)
			return true;
		return false;
	}
	@Override
	public boolean isValidLogin(String username, String password) {
		// TODO Auto-generated method stub
		boolean isCorrectLogin=false;
		if(userInfoDao.getPassByUserName(username).get(0).getUserPwd().equals(password)){
			isCorrectLogin=true;
		}
		return isCorrectLogin;
	}

}
