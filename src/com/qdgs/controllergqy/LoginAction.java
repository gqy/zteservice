package com.qdgs.controllergqy;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.qdgs.bean.UserInfo;
import com.qdgs.dao.UserInfoDao;
import com.qdgs.daoimpl.UserInfoDaoImpl;
import com.qdgs.service.UserInfoService;

import java.io.*;
import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
public class LoginAction extends ActionSupport implements ServletResponseAware,ServletRequestAware{
private UserInfoService userInfoService;
private UserInfo userInfo;
private InputStream inputStream;
private HttpServletResponse response;
private HttpServletRequest request;
@Override
public void setServletResponse(HttpServletResponse response) {
	// TODO Auto-generated method stub
	this.response=response;
}
@Override
public void setServletRequest(HttpServletRequest request) {
	// TODO Auto-generated method stub
	this.request=request;
}
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
			//创建ActionContext实例
			ActionContext ctx = ActionContext.getContext();
			
			//System.out.println(userInfo);
			if(userInfoService.isValidLogin(userInfo)==true){
				
				String username=URLEncoder.encode(userInfo.getUserName(),"UTF-8");
				UserInfo uf=new UserInfo();
				
			    uf=userInfoService.getUserByName(userInfo);
			    ctx.getSession().put("users", uf);
			
//				Cookie userName=new  Cookie("userName",username);
//				userName.setMaxAge(7*60*60*24);
//				response.addCookie(userName);
				
				
				inputStream=new ByteArrayInputStream("登录成功".getBytes("UTF-8"));
				
			}else{
			inputStream=new ByteArrayInputStream("用户名或者密码错误,请检查".getBytes("UTF-8"));
		     }
			return "success";
		}
	
		
}
