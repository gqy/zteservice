package com.qdgs.controllergqy;

import com.opensymphony.xwork2.ActionSupport;
import com.qdgs.bean.UserInfo;
import com.qdgs.service.UserInfoService;

public class LoginAction extends ActionSupport{
private UserInfoService userInfoService;
private UserInfo userInfo;
public UserInfoService getUserInfoService() {
	return userInfoService;
}
public void setUserInfoService(UserInfoService userInfoService) {
	this.userInfoService = userInfoService;
}
public UserInfo getUserInfo() {
	return userInfo;
}
public void setUserInfo(UserInfo userInfo) {
	this.userInfo = userInfo;
}

//处理用户请求
		public String execute()
			throws Exception
		{
			System.out.println(userInfo);
			if(userInfoService.isValidLogin(userInfo)==true){
				return "success";
			}
			return "error";
		}
}
