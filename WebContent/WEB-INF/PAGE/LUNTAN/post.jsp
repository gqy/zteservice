<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.qdgs.bean.UserInfo,com.lxm.bbs.dao.*,com.lxm.bbs.dao.impl.*,java.util.*"%>
<%
	int boardId = Integer.parseInt(request.getParameter("boardId"));
   
	UserInfo user2 = null;
	if (session.getAttribute("users") != null) {
		user2 = (UserInfo) session.getAttribute("users");
		System.out.println("user2"+user2);
	} else {
		user2 = new UserInfo();
		response.sendRedirect("index.html");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
			<span><a href="luntanindex.html">论坛首页</a>><a href=" luntanpost.html">发布帖子</a></span>

		</div>
		<form name="postForm" method="post" action="admin/doPost.jsp"
			onsubmit="return login()">
			<div class="reg w">
				<input type="hidden" name="boardId" value="<%=boardId%>" /> <input
					type="hidden" name="uId" value="<%=user2.getUserId()%>" />
				<table width="90%" border="0">

					<tr>
						<td width="6%">标题：</td>
						<td width="94"><input type="text" name="title"
							style="width: 70%" /></td>
					</tr>
					<tr>
						<td>内容</td>
						<td><textarea name="content"
								style="width: 100%; height: 600px;"></textarea></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input name="" type="submit"
							value="提交" /> <input name="" type="submit" value="重置" /></td>
					</tr>





				</table>




			</div>
		</form>

	</div>
	<!-- main end -->
	<div style="height: 20px; clear: both"></div>

</body>
</html>