package com.qdgs.controllergqy;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.qdgs.bean.UserInfo;
import com.qdgs.service.UserInfoService;

public class RegistAction extends ActionSupport{
	private UserInfo userInfo;
	//spring�Զ�װ�����,userInfoService��Ӧbean��id
	private UserInfoService userInfoService;
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	public UserInfoService getUserInfoService() {
		return userInfoService;
	}
	public void setUserInfoService(UserInfoService userInfoService) {
		this.userInfoService = userInfoService;
	}
	
	//�����û�����
			public String execute()
				throws Exception
			{
				if(userInfoService.regist(userInfo)==true)
					return "sucess";
				return "error";
			}
}