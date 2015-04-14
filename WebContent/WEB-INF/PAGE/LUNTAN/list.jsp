<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.lxm.bbs.dao.entity.Board,com.lxm.bbs.dao.entity.Topic,com.qdgs.bean.UserInfo,com.lxm.bbs.dao.*,com.lxm.bbs.dao.impl.*,java.util.*"%>
<%  
	TopicDao topicDao = new TopicDaoImpl();
	int p = 1;
	int boardId = 4;
	if (request.getParameter("page") != null
			&& request.getParameter("boardId") != null) {
		p = Integer.parseInt(request.getParameter("page"));
		boardId = Integer.parseInt(request.getParameter("boardId"));
		
	}
	List listTopic = topicDao.findListTopic(p, boardId);
	System.out.print(listTopic);
	BoardDao boardDao = new BoardDaoImpl();
	Board board = boardDao.findBoard(boardId);
	UserInfo user2 = null;
	if (session.getAttribute("users") != null) {
		user2 = (UserInfo) session.getAttribute("users");
	} else {
		user2 = new UserInfo();
	}
	int up = p;
	int down = p;
	if (listTopic.size() == 20) {
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
<title><%=board.getBoardTitle()%>--ZTE技术论坛</title>
<link rel="stylesheet" type="text/css" href="img/style.css" />
</head>
<body>
	<div class="main w">
		
		<div class="menu w">
			<span><a href="luntanindex.html">论坛首页--</a><a href="#"><%=board.getBoardTitle()%></a></span>

		</div>

		<div class="page w">
			<div class="fy">
				<a href="luntanlist.html?page=<%=up%>&boardId=<%=boardId%>">上一页 </a>|<a
					href="luntanlist.html?page=<%=down%>&boardId=<%=boardId%>"> 下一页</a>
			</div>

			<div class="post">
				<a href="luntanpost.html?boardId=<%=boardId%>"><img src="img/post.gif"
					alt="发表话题" /></a>
			</div>

		</div>
		<!-- page end -->
		<div class="body1 w">
			<div class="title">
				<span style="margin-left: 350px">文章</span> <span
					style="margin-left: 350px">作者</span> <span
					style="margin-left: 70px">回复</span>
			</div>
			<div class="list">
				<div class="board w"></div>
				<%
					UserInfo user = new UserInfo();
					UserDao userDao = new UserDaoImpl();
					ReplyDao replyDao = new ReplyDaoImpl();
					int count = 0;

					for (int i = 0; i < listTopic.size(); i++) {
						Topic topic = (Topic) listTopic.get(i);
						user = userDao.findUser(topic.getUserId());
						count = replyDao.findCountReply(topic.getTopicId());
				%>


				<div class="topic">

					<div class="item">
						<a
							href="luntandetail.html?page=1&boardId=<%=boardId%>&topicId=<%=topic.getTopicId()%>&uId=<%=topic.getUserId()%>"><%=topic.getTitle()%></a>
					</div>
					  <div class="zj"><%=user.getUserName()%></div>
					<div class="hf"><%=count %></div>

				</div>

				<%
					}
				%>


			</div>
			<!-- list end -->
		</div>
		<!-- body1 -->

		<div class="page w">
			<div class="fy">
				<a href="luntanlist.html?page=<%=up%>&boardId=<%=boardId%>">上一页 </a>|<a
					href="luntanlist.html?page=<%=down%>&boardId=<%=boardId%>"> 下一页</a>
			</div>



		</div>
		<!-- page end -->

	</div>
	<!-- main end -->
	
</body>
</html>