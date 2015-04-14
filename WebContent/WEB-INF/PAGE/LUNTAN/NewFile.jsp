<%@page import="java.text.SimpleDateFormat,java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! String time=new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒").format(new Date()); 
	//int i=0;


%>
<table>
<tr>
<%for(int i=0;i<1;i++) {%>
<td><%=time %></td>
<%} %>




</tr>
</table>
<% int i=0; %>
<%=i++ %>

</body>
</html>