<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎注册</title>
</head>
<body>
<s:form action="regist">
    <s:textfield name="userInfo.userId"/>
	<s:password name="userInfo.userName"/>
	<s:textfield name="userInfo.userPwd"/>
	<s:textfield name="userInfo.name"/>
	<s:textfield name="userInfo.userSex"/>
	<s:textfield name="userInfo.userLinkMan"/>
	<s:textfield name="userInfo.userEmail"/>
	<s:textfield name="userInfo.userTel"/>
	<s:textfield name="userInfo.userUnit"/>
	<s:textfield name="userInfo.userUrl"/>
	<s:textfield name="userInfo.userCountry"/>
	<s:textfield name="userInfo.userProvince"/>
	<s:textfield name="userInfo.userCity"/>
	<s:textfield name="userInfo.userPost"/>
	<s:textfield name="userInfo.userAddress"/>
	<s:textfield name="userInfo.userProduct"/>
	<s:textfield name="userInfo.userProductType"/>
	<s:textfield name="userInfo.userProductId"/>
    <s:submit name="registSubmit" value="注册"/>
</s:form>
</body>
</html>