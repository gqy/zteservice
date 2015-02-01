package com.qdgs.controllergqy;

import com.opensymphony.xwork2.ActionSupport;
import com.qdgs.bean.LoginTest;
import com.qdgs.dao.LoginTestDao;
import com.qdgs.daoimpl.LoginTestDaoImpl;

public class LoginActionTest extends ActionSupport{
	private LoginTest logintest;

	public LoginTest getLogintest() {
		return logintest;
	}

	public void setLogintest(LoginTest logintest) {
		this.logintest = logintest;
	}
	//处理用户请求
		public String execute()
			throws Exception
		{
		    System.out.print(logintest.getName()+logintest.getPass());
		 
		    
			return "success";
		}
}
