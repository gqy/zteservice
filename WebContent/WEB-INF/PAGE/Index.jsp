<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="NaveBar.jsp"/>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>ZTE Corporation</title>

<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/bootstrap-responsive.css" rel="stylesheet">
</head>
<body>

	

<!-- 轮播 -->
<div id="carousel1" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
         <li data-target="#carousel1" data-slide-to="0" class="active"></li>
         <li data-target="#carousel1" data-slide-to="1"></li>
        </ol>
        <div class="carousel-inner">
            <div class="item active">
                <img src="${pageContext.request.contextPath}/image/1.jpg" alt="" id="pic1">
                <div class="carousel-caption">
                    <h4>标题一</h4>
                    <p>dkeojgook</p>
                </div>
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/image/2.jpg" alt="" id="pic2">

            </div>
        </div>
        <a href="#carousel1" data-slide="prev" class="left carousel-control">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a href="#carousel1" data-slide="next" class="right carousel-control">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>   
</div>
    <script>
     $(function(){
     $('.carousel').carousel();
     });
    </script>
<!--  轮播结束 -->
<div class="container">
</div>

</body>
</html>
<jsp:include page="Footer.jsp"/>