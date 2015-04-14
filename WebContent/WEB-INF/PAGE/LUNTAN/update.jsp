<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.qdgs.bean.UserInfo,com.lxm.bbs.dao.entity.Reply,com.lxm.bbs.dao.*,com.lxm.bbs.dao.impl.*,java.util.*"%>
<%
    UserInfo user2 = null;
	ReplyDao replyDao = new ReplyDaoImpl();

	int uId = Integer.parseInt(request.getParameter("uId"));
	int replyId = Integer.parseInt(request.getParameter("replyId"));
	int topicId=Integer.parseInt(request.getParameter("topicId"));
	int boardId=Integer.parseInt(request.getParameter("boardId"));
	Reply reply = replyDao.findReply(replyId);

	if (session.getAttribute("users") != null) {
		user2 = (UserInfo) session.getAttribute("users");

	} else {
		user2 = new UserInfo();
		response.sendRedirect("login.jsp");
	}
	if (user2.getUserId() != uId) {
		out.print("<script type='text/javascript'>alert('您无权修改该用户帖子');location.replace('index.jsp')</script>");

	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改帖子-bbs论坛</title>
<link rel="stylesheet" type="text/css" href="img/style.css" />
<script type="text/javascript">
	function login() {
		var title = document.postForm.title.value;
		var content = document.postForm.content.value;
		if (title == "" || title == null) {
			alert("标题不能为空");
			return false;

		} else if (content == "" || content == null) {
			alert("内容不能为空");
			return false;

		} else {
			return true;

		}

	}
</script>
</head>
<body>
	<div class="main w">

		<div class="menu w">
			<span><a href="login.jsp">论坛首页</a>><a href=" update.jsp">修改帖子</a></span>

		</div>
		<div class="reg w">
			<form name="postForm" method="post" action="admin/doUpdate.jsp"
				onsubmit="return login()">
				<input type="hidden" name="topicId" value="<%=topicId%>" /> <input
					type="hidden" name="uId" value="<%=user2.getUserId()%>" />
					<input type="hidden" name="boardId" value="<%=boardId%>" /> 
					<input type="hidden" name="replyId" value="<%=replyId%>" />

				<table width="90%" border="0">

					<tr>
						<td width="6%">标题：</td>
						<td width="94"><input type="text" name="title"
							style="width: 70%" value="<%=reply.getTitle()%>" /></td>
					</tr>
					<tr>
						<td>内容</td>
						<td><textarea name="content"
								style="width: 100%; height: 600px;"><%=reply.getContent()%></textarea></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input name="" type="submit"
							value="修改" /></td>
					</tr>

				</table>
			</form>
		</div>


	</div>
	<!-- main end -->

</body>
</html>