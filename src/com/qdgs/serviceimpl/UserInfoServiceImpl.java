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
		//����dao�������ʵ��ҵ���߼�
		int result=userInfoDao.save(userInfo);
		if(result>0)
			return true;
		return false;
	}
	@Override
	public boolean isValidLogin(UserInfo userInfo) {
		// TODO Auto-generated method stub
		boolean isCorrectLogin=false;
		if(userInfoDao.getPassByUserNameAndUserPwd(userInfo).size()>=1){
			isCorrectLogin=true;
		}
		return isCorrectLogin;
	}
	@Override
	public UserInfo getMaxUserId() {
		// TODO Auto-generated method stub
		return userInfoDao.getMaxUserId();
	}

}
