<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎登陆</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/elements.css" rel="stylesheet">


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
 
    <!-- 导航 -->            
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">

      <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
              <span class="sr-only">切换导航</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
          </button>
         <a class="navbar-brand" href="index.html"><img src="${pageContext.request.contextPath}/image/zte.png" width="100px"></a>
      </div>
      <div class="collapse navbar-collapse" id="navbar">
        <ul class="nav navbar-nav">
            <li class="active"><a href="index.html">首页</a></li>
            <li><a href="#">个人空间</a></li>
            <li><a href="#">服务</a></li>
            <li><a href="#">知识库</a></li>
            <li><a href="#">文档</a></li>
            <li><a href="#">技术社区</a></li>
            <li><a href="#">公告社区</a></li>
        </ul>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="#login" data-toggle="modal">登录</a></li>

            <li><a href="sub.html">注册</a></li>

            <li><a href="#">帮助</a></li>
             <li><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
        </ul>
      </div>

</nav>
<!-- 导航结束 -->

<!-- 弹窗开始 -->
  <form action="loginaction.html"  id="loginForm" class="form-signin" >
    <div class="modal fade" id="login">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">

        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">用户登录</h4>
      </div>
      <div class="modal-body">
       
      <div id="show" class="alert alert-warning" style="display:none;"></div>
      <label for="inputUsername">用户名</label>
      <input type="text" name="userInfo.userName" id="inputUsername" class="form-control" placeholder="Username" required autofocus>
      <label for="inputPassword" >密码</label>
      <input type="password" name="userInfo.userPwd" id="inputPassword" class="form-control" placeholder="Password" required>
     
      
    
      </div>
      <div class="modal-footer">
        
         <div class="col-sm-3">
              <div class="checkbox">
                  <label>   
                  <input type="checkbox" value="remember-me">
                  记住密码</label>
              </div>
         </div>
         <div class="col-sm-3">
            
         </div>
         
         <div class="col-sm-4 col-md-offset-2">
             <button class="btn  btn-primary " id="loginBtn" type="button">登&nbsp;&nbsp;&nbsp;&nbsp;录</button>
              <a href="#">忘记密码？</a>
         </div>
      
      
      </div>
    </div>
  </div>
</div>
     </form>
     
<script src="${pageContext.request.contextPath}/js/jquery-2.1.3.js"></script>
<script type="text/javascript">
 $("#loginBtn").click(function(){
	 $.post("loginaction.html",$("#loginForm").serializeArray(),
	 //回调
	 function(data,statusText){
		if(data=="用户名或者密码错误,请检查"){
		$("#show").append("登录结果：" + data + "<br />");
		$("#show").show(2000);}
		else{window.location.reload();}
	 },"html");
	 
 });
</script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

<script>$('.collapse').collapse("toggle")</script>

</body>
</html>