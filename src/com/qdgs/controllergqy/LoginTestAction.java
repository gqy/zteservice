package com.qdgs.controllergqy;

import com.opensymphony.xwork2.ActionSupport;
import com.qdgs.bean.LoginTest;
import com.qdgs.dao.LoginTestDao;
import com.qdgs.daoimpl.LoginTestDaoImpl;
import com.qdgs.service.LoginTestService;

public class LoginTestAction extends ActionSupport{
	/**
	 * spring�Զ�װ����ԣ�loginTestService��Ӧbean��id
	 */
	private LoginTestService loginTestService;
	private LoginTest loginTest;
	public LoginTest getLoginTest() {
		return loginTest;
	}
	public void setLoginTest(LoginTest loginTest) {
		this.loginTest = loginTest;
	}
	public LoginTestService getLoginTestService() {
		return loginTestService;
	}
	public void setLoginTestService(LoginTestService loginTestService) {
		this.loginTestService = loginTestService;
	}
		//�����û�����
		public String execute()
			throws Exception
		{
		    
		  if(loginTestService.regist(loginTest)){
			  return "success";
		  }
		    
			return "error";
		}
}
