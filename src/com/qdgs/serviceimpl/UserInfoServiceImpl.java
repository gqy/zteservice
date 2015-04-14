package com.qdgs.serviceimpl;

import com.opensymphony.xwork2.ActionContext;
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
	public boolean isValidLogin(UserInfo userInfo) {
		// TODO Auto-generated method stub
		//创建ActionContext实例
		
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
	@Override
	public UserInfo getUserByName(UserInfo userInfo) {
		// TODO Auto-generated method stub
		UserInfo userinfo=userInfoDao.getUserByUserName(userInfo.getUserName());
		if(userinfo!=null){
			return userinfo;
		}
		return null;
	}

}
