<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.qdgs.bean.UserInfo,com.lxm.bbs.dao.entity.Reply,com.lxm.bbs.dao.entity.Board,com.lxm.bbs.dao.entity.Topic,com.lxm.bbs.dao.*,com.lxm.bbs.dao.impl.*,java.util.*"%>
<%
	UserDao userDao = new UserDaoImpl();
	TopicDao topicDao = new TopicDaoImpl();
	ReplyDao replyDao = new ReplyDaoImpl();
	BoardDao boardDao = new BoardDaoImpl();
	int boardId = 4;

	int p = 1;
	int topicId = 1;
	int uId = 5;

	if (request.getParameter("uId") != null
			&& request.getParameter("page") != null
			&& request.getParameter("topicId") != null
			&& request.getParameter("boardId") != null) {
		p = Integer.parseInt(request.getParameter("page"));
		topicId = Integer.parseInt(request.getParameter("topicId"));
		uId = Integer.parseInt(request.getParameter("uId"));
		boardId = Integer.parseInt(request.getParameter("boardId"));

	}
	int up = p;
	int down = p;
	int count=0;
	Board board = boardDao.findBoard(boardId);
	UserInfo topicUser = userDao.findUser(uId);
	count=replyDao.findUserCountReply(uId);//统计用户回复数
	
	Topic topic = topicDao.findTopic(topicId);
	List listReply = replyDao.findListReply(p, topicId);
	if (listReply.size() == 10) {
		down = p + 1;
	}
	if (p > 1) {
		up = p - 1;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=topic.getTitle()%>-bbs论坛</title>
<link rel="stylesheet" type="text/css" href="img/style.css" />
</head>
<body>
	<div class="main w">
	
		<div class="menu w">
			<span><a href="luntanindex.html">论坛首页</a>><a
				href="luntanlist.html?page=1&boardId=<%=boardId%>"><%=board.getBoardTitle()%></a></span>

		</div>

		<div class="page w">
			<div class="fy">
				<a href="luntandetail.html?page=<%=up%>&boardId=<%=boardId%>&topicId=<%=topicId%>&uId=<%=uId%>">上一页 </a>|<a
					href="luntandetail.html?page=<%=down%>&boardId=<%=boardId%>&topicId=<%=topicId%>&uId=<%=uId%>"> 下一页</a>
			</div>

			<div class="post">
				<a href="luntanpost.html?boardId=<%=boardId%>"><img src="img/post.gif"
					alt="发表话题" /></a> <a
					href="luntanreply.html?boardId=<%=boardId%>&topicId=<%=topicId%>"><img
					src="img/reply.gif" alt="回复帖子" /></a>
			</div>

		</div>
		<!-- page end -->
		<div style="clear: both; height: 10px;"></div>
		<div class="itemT w">
			<h1>
				<span><%=topic.getTitle()%></span>
			</h1>
		</div>
		<%if (p==1) {%>
		<div class="itemL ">
			<div class="info">
				<%=topicUser.getUserName()%><br /> <img
					src="img/head/<%=topicUser.getHead()%>" alt="头像" /><br /> 回帖数：<%=count %><br />
				注册时间：<%=topicUser.getRegTime().substring(0, 10)%>


			</div>
			<!-- info end -->
			<div class="content">
				<!--<div>
					编辑区:<a href="update.jsp">修改</a>|<a href="">删除</a>
				</div>-->
				<div><%=topic.getTitle()%></div>
				<div style="height: 10px"></div>
				<div><%=topic.getContent()%></div>
				<div>
					[发表：<%=topic.getPublishTime().substring(0, 19)%>] 最近修改：[发表：<%=topic.getModifyTime().substring(0, 19)%>]
				</div>
			</div>
			<!-- content end -->
		</div>
		<!-- itemL end -->
		<%}
			for (int i = 0; i < listReply.size(); i++) {
				Reply reply = (Reply) listReply.get(i);
				UserInfo replyUser = userDao.findUser(reply.getUserId());
				count=replyDao.findUserCountReply(replyUser.getUserId());
		%>


		<div class="itemL ">
			<div class="info">
				<%=replyUser.getUserName()%><br /> <img
					src="img/head/<%=replyUser.getHead()%>" alt="头像" /><br /> 回帖数：<%=count %><br />
				注册时间：<%=replyUser.getRegTime().substring(0, 10)%>


			</div>
			<!-- info end -->
			<div class="content">
				<div>
					编辑区:<a href="luntanupdate.html?uId=<%=replyUser.getUserId()%>&boardId=<%=boardId %>&topicId=<%=topicId %>&replyId=<%=reply.getReplyId()%>">修改</a>|<a href="admin/delete.jsp?uId=<%=replyUser.getUserId()%>&boardId=<%=boardId %>&topicId=<%=topicId %>&replyId=<%=reply.getReplyId()%>">删除</a>
				</div>
				<div><%=reply.getTitle()%></div>
				<div style="height: 10px"></div>
				<div><%=reply.getContent()%></div>
				<div>
					[发表：<%=reply.getPublishTime().substring(0, 19)%>] 最近修改：[发表：<%=reply.getModifyTime().substring(0, 19)%>]
				</div>
			</div>
			<!-- content end -->
		</div>
		<!-- itemL end -->

		<%
			}
		%>




		<div class="page w">
			<div class="fy">
				<a href="luntandetail.html?page=<%=up%>&boardId=<%=boardId%>&topicId=<%=topicId%>&uId=<%=uId%>">上一页 </a>|<a
					href="luntandetail.html?page=<%=down%>&boardId=<%=boardId%>&topicId=<%=topicId%>&uId=<%=uId%>"> 下一页</a>
			</div>


		</div>
		<!-- page end -->

	</div>
	<!-- main end -->

</body>
</html>