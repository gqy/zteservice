<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.lxm.bbs.dao.entity.*,com.lxm.bbs.dao.*,com.lxm.bbs.dao.impl.*,java.util.*"%>
<%
	request.setCharacterEncoding("utf-8");
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	int uId=Integer.parseInt(request.getParameter("uId"));
	int topicId=Integer.parseInt(request.getParameter("topicId"));
	int boardId=Integer.parseInt(request.getParameter("boardId"));
	int replyId=Integer.parseInt(request.getParameter("replyId"));
	int flag=0;
	ReplyDao replyDao=new ReplyDaoImpl();
	Reply reply=new Reply();
	reply.setTitle(title);
	reply.setContent(content);
	reply.setUserId(uId);
	reply.setTopicId(topicId);
	reply.setReplyId(replyId);
	flag=replyDao.updateReply(reply);
	if(flag>0){
		response.sendRedirect("../luntandetail.html?page=1&boardId="+boardId+"&topicId="+topicId+"&uId="+uId);
	}else{
		response.sendRedirect("../luntanupdate.html?uId="+uId+"&boardId"+boardId+"&topicId="+topicId+"&replyId"+replyId);
	}
%>