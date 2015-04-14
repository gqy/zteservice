<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.lxm.bbs.dao.entity.*,com.lxm.bbs.dao.*,com.lxm.bbs.dao.impl.*,java.util.*"%>

<%
	TopicDao topicDao=new TopicDaoImpl();
	
	request.setCharacterEncoding("utf-8");
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	int flag=0;
	int boardId=Integer.parseInt(request.getParameter("boardId"));
	int topicId=Integer.parseInt(request.getParameter("topicId"));
	int uId=Integer.parseInt(request.getParameter("uId"));
	Topic topic=topicDao.findTopic(topicId);
	Reply reply=new Reply();
	reply.setTitle(title);
	reply.setContent(content);
	reply.setUserId(uId);
	reply.setTopicId(topicId);
	ReplyDao replyDao=new ReplyDaoImpl();
	flag=replyDao.addReply(reply);
	if(flag>0){
		response.sendRedirect("../luntandetail.html?page=1&boardId="+boardId+"&topicId="+topicId+"&uId="+topic.getUserId());
	}else{
		out.print("回复主题失败");
	}
%>