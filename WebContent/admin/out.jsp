<%
	if(session.getAttribute("users")!=null){
		session.removeAttribute("users");
		response.sendRedirect("../index.jsp");
	}
 %>