<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.qdgs.bean.UserInfo,com.lxm.bbs.dao.entity.Board,com.lxm.bbs.dao.entity.Topic,com.lxm.bbs.dao.*,com.lxm.bbs.dao.impl.*,java.util.*"%>
<%
	BoardDao boardDao = new BoardDaoImpl();
	TopicDao topicDao = new TopicDaoImpl();
	UserDao userDao = new UserDaoImpl();

	Map map = boardDao.findBoard();//取得Map的版块信息
	System.out.println("boardMap"+map);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="img/style.css" />
</head>
<body>
	<div class="main w">
	

		<div class="body1 w">
			<div class="title">
				<span class="one">论坛</span> <span class="two">主题</span> <span
					class="three">最后发表时间</span>
			</div>
			<div class="list">
				<%
					List list = (List) map.get(0 + "");
					for (int i = 0; i < list.size(); i++) {
						Board board = (Board) list.get(i);//
						System.out.println("board:"+board);
				%>
				<div class="board w">
					<span><h3><%=board.getBoardTitle()%></h3></span>
				</div>


				<%	int count=0;
					List listSon = (List) map.get(board.getBoardId() + "");
					System.out.println("listSon:"+listSon);
						if (listSon != null) {
							for (int j = 0; j < listSon.size(); j++) {
								Board boardSon = (Board) listSon.get(j);
								
								int boardId = boardSon.getBoardId();
								List listTopic = topicDao.findListTopic(1, boardId);
								System.out.println("boardId"+boardId);
								System.out.println("a"+listTopic);
								Topic topic = new Topic();
								UserInfo user = new UserInfo();
								if (listTopic != null && listTopic.size() > 0&&user!=null) {
									topic = (Topic) listTopic.get(0);
									
								}
								user = userDao.findUser(topic.getUserId());
							    count=topicDao.findCountTopic(boardId);//找对应的主题数
								
				%>



				<div class="topic">

					<div class="title1">
						<a href="luntanlist.html?page=1&boardId=<%=boardSon.getBoardId()%>"><%=boardSon.getBoardTitle()%></a>
					</div>
					<div class="zt"><%=count %></div>
					<div class="time">
						<a
							href="luntandetail.html?page=1&boardId=<%=boardId%>&topicId=<%=topic.getTopicId()%>&uId=<%=topic.getUserId()%>"><%=topic.getTitle()%></a>
							<%if (user!=null){ %>[<%=user.getUserName() %>]<%} %>  [<%=topic.getModifyTime().substring(0,19) %>]
					
					</div>

				</div>

				<%
					}
						}
					}
				%>
			</div>
			<!-- list end -->
		</div>
		<!-- body1 -->
		<div style="clear:both; height:20px;"></div>
<div>
<%
	String name=null;
	List listUser=new ArrayList();
	if(application.getAttribute("findUser")!=null)
	listUser=(List)application.getAttribute("findUser");
 %>
一共有<%=listUser.size() %> 人会员在线，会员有：
<%
	for(int i=0;i<listUser.size();i++)
	{
		name=(String)listUser.get(i);
 %>
[<%=name %>]
<%} %>
</div>
	</div>

	<!-- main end -->
	
</body>
</html>