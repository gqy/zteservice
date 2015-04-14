<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.qdgs.bean.UserInfo,com.lxm.bbs.dao.*,com.lxm.bbs.dao.impl.*,java.util.*"%>
<%
request.setCharacterEncoding("utf-8");
String userName=request.getParameter("userName");
String userPass=request.getParameter("userPass");
int sex=Integer.parseInt(request.getParameter("sex"));
String head=request.getParameter("radio");


int flag=0;
UserInfo user=new UserInfo();
user.setUserName(userName);
user.setUserPwd(userPass);
//user.setUserSex(sex);
user.setHead(head);
UserDao userDao=new UserDaoImpl();
//flag=userDao.addUser(user);
if(flag>0){
	response.sendRedirect("../index.jsp");
	
	}else{
		
		response.sendRedirect("../reg.jsp");
	}





%>