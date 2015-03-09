package com.qdgs.controllergqy;

import com.opensymphony.xwork2.ActionSupport;
import com.qdgs.bean.UserInfo;
import com.qdgs.service.UserInfoService;

import java.io.*;
public class LoginAction extends ActionSupport{
private UserInfoService userInfoService;
private UserInfo userInfo;
private InputStream inputStream;
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

public InputStream getResult() {
	return inputStream;
}
public void setInputStream(InputStream inputStream) {
	this.inputStream = inputStream;
}
		//处理用户请求
		public String execute()
			throws Exception
		{
			
			System.out.println(userInfo);
			if(userInfoService.isValidLogin(userInfo)==true){
				inputStream=new ByteArrayInputStream("登录成功".getBytes("UTF-8"));
				
			}else{
			inputStream=new ByteArrayInputStream("用户名或者密码错误,请检查".getBytes("UTF-8"));
		}
			return "success";
		}
}
