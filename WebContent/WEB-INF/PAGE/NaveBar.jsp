<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎登陆</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/bootstrap-responsive.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/elements.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

    

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><img src="${pageContext.request.contextPath}/image/zte.png" width="100px"></a>
      </div>
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">首页</a></li>
            <li><a href="#">个人空间</a></li>
            <li><a href="navebar.html">服务</a></li>
            <li><a href="#">知识库</a></li>
            <li><a href="#">文档</a></li>
            <li><a href="#">技术社区</a></li>
            <li><a href="#">公告社区</a></li>
        </ul>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="#login" data-toggle="modal">登录</a></li>
            <li class="divider-vertical"></li>
            <li><a href="#">注册</a></li>
            <li class="divider-vertical"></li>
            <li><a href="#">帮助</a></li>
        </ul>
      </div>
    </nav>
   
<script src="${pageContext.request.contextPath}/js/jquery-2.1.3.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script>$('.collapse').collapse("toggle")</script>
</body>
</html>