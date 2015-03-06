<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<jsp:include page="NaveBar.jsp"/>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎登陆</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" />
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<br/><br/><br/>
<div class="container">
<div class="row">
  <div class="col-sm-4">
    <h1 class="page-header">已经注册？</h1>
    <form action="loginaction.html" class="form-signin">
      <h2 class="form-signin-heading">请登录</h2>
      <label for="inputEmail" class="sr-only">Email address</label>
      <input type="text" name="userInfo.userName" id="inputUsername" class="form-control" placeholder="Username" required autofocus>
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" name="userInfo.userPwd" id="inputPassword" class="form-control" placeholder="Password" required>
     
      <div class="checkbox">
        
        <div class="col-sm-8">
          <label>
          <input type="checkbox" value="remember-me">
          记住密码</label>
          
          
          </div>
          <div class="col-sm-4">
           <a href="#">忘记密码？</a>
          
         </div>
      </div>
      <div class="col-sm-6">
      <button class="btn  btn-primary btn-block " type="submit">登录</button>
      </div>
        <div class="col-sm-6">
      <button class="btn  btn-primary btn-block " type="reset">重置</button>
      </div>
  
    </form>
  </div>
  <div class="col-sm-7 col-sm-offset-1">
    <h1 class="page-header">欢迎注册ZTE中兴网站：</h1>
    <p>★你可以免费注册一个帐号，以能够获取更多的便利，例如，下载或浏览更有价值的信息，获取针对您的内容推送等。如果您购买了ZTE中兴的产品或服务，还可以获得定制化的技术支持服务。 </p>
    <div class="col-sm-5">
    <button class="btn  btn-primary  btn-block btn-info">现在去注册</button>
    </div>
  </div>
</div>
</div>

</body>

</html>