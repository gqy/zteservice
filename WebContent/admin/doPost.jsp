<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.lxm.bbs.dao.entity.*,com.lxm.bbs.dao.*,com.lxm.bbs.dao.impl.*,java.util.*"%>

<%
request.setCharacterEncoding("utf-8");
String title= request.getParameter("title");
String content =request.getParameter("content");
int boardId=Integer.parseInt(request.getParameter("boardId"));
int uId=Integer.parseInt(request.getParameter("uId"));
int flag=0;

Topic topic=new Topic();
topic.setTitle(title);
topic.setContent(content);
topic.setBoardId(boardId);
topic.setUserId(uId);
TopicDao topicDao=new TopicDaoImpl();
flag=topicDao.addTopic(topic);
if(flag>0){
	response.sendRedirect("../luntanlist.html?page=1&boardId="+boardId);
}else{
	response.sendRedirect("../luntanpost.html?boardId="+boardId);
	
}




%>