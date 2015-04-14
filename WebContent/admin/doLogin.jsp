<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.qdgs.bean.UserInfo,com.lxm.bbs.dao.*,com.lxm.bbs.dao.impl.*,java.util.*"%>
<%
request.setCharacterEncoding("utf-8");
String userName=request.getParameter("userName");
String password=request.getParameter("userPass");
UserDao userDao=new UserDaoImpl();
UserInfo user=userDao.findUser(userName);

if(user!=null&&user.getUserPwd().equals(password)){
	session.setAttribute("users", user);//存到session里面
	List list=new ArrayList();
	if(application.getAttribute("findUser")!=null)
	list=(List)application.getAttribute("findUser");
	boolean t=true;
	for(int i=0;i<list.size();i++){
		if(userName.equals(list.get(i).toString())){
			t=false;
			break;
		}
		
		
	}
	if(t)
	list.add(userName);//存放用户名到list里面
	application.setAttribute("findUser", list);
	response.sendRedirect("../index.jsp");
	
}else{
	response.sendRedirect("../login.jsp");
	
	
}




%>