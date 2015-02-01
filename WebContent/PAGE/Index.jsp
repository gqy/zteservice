<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>ZTE Corporation</title>

<link rel="stylesheet" href="../css/layout.css" type="text/css" />
<link rel="stylesheet" href="../css/nav.css" type="text/css" />
<link href="../css/jquery.slideBox.css" rel="stylesheet" type="text/css" />
<script src="../js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="../js/jquery.slideBox.js" type="text/javascript"></script>
<script>
jQuery(function($){
	$('#demo1').slideBox();
	$('#demo2').slideBox({
		direction : 'top',//left,top#方向
		duration : 0.3,//滚动持续时间，单位：秒
		easing : 'linear',//swing,linear//滚动特效
		delay : 5,//滚动延迟时间，单位：秒
		startIndex : 1//初始焦点顺序
	});
	$('#demo3').slideBox({
		duration : 0.3,//滚动持续时间，单位：秒
		easing : 'linear',//swing,linear//滚动特效
		delay : 5,//滚动延迟时间，单位：秒
		hideClickBar : false,//不自动隐藏点选按键
		clickBarRadius : 10
	});
	$('#demo4').slideBox({
		hideBottomBar : true//隐藏底栏
	});
});
</script>
</head>
<body>
	<div id="container">
		<div id="header">
			<div id="zte">
				<span id="logo">
					<img src="../image/zte_logo.jpg">
				</span>

				<span id="login">
					<a href="">登录</a>
				</span>
				<span id="v1">
					|
				</span>
				<span id="regist">
					<a href="">注册</a>
				</span>
				<span id="v2">
					|
				</span>
				<span id="help">
					<a href="">帮助</a>
				</span>
			</div>
			<div id="menu">
				<ul>
				<li><a href="#"><b>首页</b></a></li>
				<li><a href="#"><b>个人空间</b></a></li>
				<li><a href="#"><b>服务</b></a></li>
				<li><a href="#"><b>知识库</b></a></li>
				<li><a href="#"><b>文档</b></a></li>
				<li><a href="#"><b>技术社区</b></a></li>
				<li><a href="#"><b>公告信息</b></a></li>
				</ul>
			</div>
			<div id="figure">
				<div id="demo3" class="slideBox">
                  <ul class="items">
                       <li><a href="#" title="这里是测试标题一"><img src="../image/1.jpg"></a></li>
                       <li><a href="#" title="这里是测试标题二"><img src="../image/2.jpg"></a></li>
                       <li><a href="#" title="这里是测试标题三"><img src="../image/3.jpg"></a></li>
                       <li><a href="#" title="这里是测试标题四"><img src="../image/4.jpg"></a></li>
                       <li><a href="#" title="这里是测试标题五"><img src="../image/5.jpg"></a></li>
                  </ul>
               </div>
		   </div>
		</div>
		<div id="main">
			<span id="mleft">
				<div id="level1">
					<span id="a1">
						<div id="ad1">
							<span id="t1">
								<b>服务公告</b>
							</span>
							<span id="t2">
								<a href="#">更多</a>>>
							</span>
						</div>
						<div id="h">
							<hr>
						</div>
						<div>
							<table>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">【重要】中兴通讯系统维护通知20…</a></td>
									<td class="date">[2014-10-17]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">【重要】中兴通讯系统维护通知20…</a></td>
									<td class="date">[2013-05-16]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">重要通知:中兴通讯系统维护通知…</a></td>
									<td class="date">[2013-01-16]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">关于中兴通讯终端服务热线 服务…</a></td>
									<td class="date">[2012-12-31]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">关于中兴通讯技术支持热线平台业…</a></td>
									<td class="date">[2012-12-27]</td>
								</tr>
							</table>
						</div>
					</span>
					<span id="a2">
						<div id="ad1">
							<span id="t1">
								<b>产品公告</b>
							</span>
							<span id="t2">
								<a href="#">更多</a>>>
							</span>
						</div>
						<div id="h">
							<hr>
						</div>
						<div>
							<table>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">发布信：ZXMW SR10 S340产品停止…</a></td>
									<td class="date">[2014-10-17]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">发布信：中兴通讯ZXDSL 931CIIA…</a></td>
									<td class="date">[2013-05-16]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">发布信：中兴通讯ZXDSL 931VII产…</a></td>
									<td class="date">[2013-01-16]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">发布信：中兴通讯ZXDSL 931VII停…</a></td>
									<td class="date">[2012-12-31]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">发布信：中兴通讯ZXDSL 931CIIA…</a></td>
									<td class="date">[2012-12-27]</td>
								</tr>
							</table>
						</div>
					</span>
				</div>
				<div id="level2">
					<span id="b1">
						<div id="text01">
							<b>按照产品类型检索</b>
						</div><br><br>
						<div id="ad1">
							<span id="t1">
								<b>数据通信</b>
							</span>
							<span id="t2">
								<a href="#">更多</a>>>
							</span>
						</div>
						<div id="h">
							<hr>
						</div>
						<div>
							<table>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">NetNumen U31 R06（V12.14.30）…</a></td>
									<td class="date">[2015-01-21]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">ZXV10 M9000（V1.2.4）用户手册…</a></td>
									<td class="date">[2015-01-20]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">ZXV10 M9000C（V1.2.4）用户手册…</a></td>
									<td class="date">[2015-01-20]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">ZXV10 M900C（V1.2.4）用户手册…</a></td>
									<td class="date">[2015-01-20]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">ZXV10 M900 (V1.2.4) 用户手册文…</a></td>
									<td class="date">[2015-01-20]</td>
								</tr>
							</table>
						</div>
					</span>
					<span id="b2">
						<br><br>
						<div id="ad1">
							<span id="t1">
								<b>核心网</b>
							</span>
							<span id="t2">
								<a href="#">更多</a>>>
							</span>
						</div>
						<div id="h">
							<hr>
						</div>
						<div>
							<table>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">NetNumen U31 R06（V12.14.30）…</a></td>
									<td class="date">[2015-01-21]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">ZXV10 M9000（V1.2.4）用户手册…</a></td>
									<td class="date">[2015-01-20]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">ZXV10 M9000C（V1.2.4）用户手册…</a></td>
									<td class="date">[2015-01-20]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">ZXV10 M900C（V1.2.4）用户手册…</a></td>
									<td class="date">[2015-01-20]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">ZXV10 M900 (V1.2.4) 用户手册文…</a></td>
									<td class="date">[2015-01-20]</td>
								</tr>
							</table>
						</div>
					</span>
				</div>
				<div id="level3">
					<table id="table3">
						<tr>
							<td>无线</td><td>核心网</td><td>承载网</td><td>数据通信</td>
						</tr>
						<tr>
							<td>无线</td><td>核心网</td><td>承载网</td><td>数据通信</td>
						</tr>
						<tr>
							<td>无线</td><td>核心网</td>
						</tr>
					</table>
				</div>
				<div id="level4">
					<br>
					<span id="d1">
						<div id="ad1">
							<span id="t1">
								<b>技术社区</b>
							</span>
							<span id="t2">
								<a href="#">更多</a>>>
							</span>
						</div>
						<div id="h">
							<hr>
						</div>
						<div>
							<table>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">进行指定中继不成功时，可…</a></td>
									<td class="date">[2015-01-13]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">【祝各位PTN产品用户圣诞…</a></td>
									<td class="date">[2014-10-11]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">前后台通信断告警 </a></td>
									<td class="date">[2014-10-11]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">业务产品紧急故障处理基本…</a></td>
									<td class="date">[2014-09-26]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">基础知识第四期： 仪器仪…</a></td>
									<td class="date">[2014-09-25] </td>
								</tr>
							</table>
						</div>
					</span>
					</span>
					<span id="d2">
						<span id="d1">
						<div id="ad1">
							<span id="t1">
								<b>知识库</b>
							</span>
							<span id="t2">
								<a href="#">更多</a>>>
							</span>
						</div>
						<div id="h">
							<hr>
						</div>
						<div>
							<table>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">ZXMP S200-设备时钟引起… </a></td>
									<td class="date">[2015-01-20]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">ZXMP S325-站点无法进行…</a></td>
									<td class="date">[2015-01-20]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">ZXCTN 6300-主控板故障…</a></td>
									<td class="date">[2015-01-20]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">NetNumen U31 R20-网管…</a></td>
									<td class="date">[2015-01-19]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">NetNumen U31 R20-网管…</a></td>
									<td class="date">[2015-01-19]</td>
								</tr>
							</table>
						</div>
					</span>
				</div>
				<div id="level5">
					<span id="e1">
						<div id="ad1">
							<span id="t1">
								<b>技术社区</b>
							</span>
							<span id="t2">
								<a href="#">更多</a>>>
							</span>
						</div>
						<div id="h">
							<hr>
						</div>
						<div>
							<table>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="ereader">中兴e读 软件 <a href="#">下载</a></td>
									<td class="date"></td>
								</tr>
								<tr>
									<td></td>
									<td>
										中兴e读是中兴电子文档浏览器，主要用于浏览、搜<br>
										索、升级和管理中兴ZED文档包。ZED文档包是后缀名<br>
										为 ".zed" 的文件，可集成HTML、PDF、Flash、<br>
										Excel等多种类型文档，文档形式更丰富、内容更充实。
									</td>
									<td></td>
								</tr>
								<tr>
									<td></td>
									<td class="inf"><a href="#">如何找到ZED文档包 ? </a></td>
									<td class="date"></td>
								</tr>
							</table>
						</div>						
					</span>
					<span id="e2">
						<div id="ad1">
							<span id="t1">
								<b>版本发布信息 </b>
							</span>
							<span id="t2">
								<a href="#">更多</a>>>
							</span>
						</div>
						<div id="h">
							<hr>
						</div>
						<div>
							<table>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">ZXA10 F820 V1.2.0P2T3 (…</a></td>
									<td class="date">[2014-12-29]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">ZXA10 F829 V2.4.0T4版本 </a></td>
									<td class="date">[2014-12-29]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">ZXA10 F829 V2.2.0P1T2版本</a></td>
									<td class="date">[2014-12-29]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">ZXA10 F832 V1.0.0T3版本</a></td>
									<td class="date">[2014-12-29]</td>
								</tr>
								<tr>
									<td><img src="../image/x.jpg"></td>
									<td class="inf"><a href="#">ZXA10 F822P V1.1.0T4 版本</a></td>
									<td class="date">[2014-12-29]</td>
								</tr>
							</table>
						</div>
					</span>
				</div>
			</span>
			<span id="mright">
				<div id="rl1">
					<div id="rlup">
						<b>服务快速通道</b>
					</div>
					<div id="rlmid">
						<hr>
					</div>
					<div id="rlfo">
						<table>
							<tr>
								<td><img src="../image/x.jpg"></td>
								<td><a href="#">登记备件服务请求</a></td>
							</tr>
							<tr>
								<td><img src="../image/x.jpg"></td>
								<td><a href="#">提交服务请求</a></td>
							</tr>
							<tr>
								<td><img src="../image/x.jpg"></td>
								<td><a href="#">服务请求查询</a></td>
							</tr>
							<tr>
								<td><img src="../image/x.jpg"></td>
								<td><a href="#">提交知识</a></td>
							</tr>
							<tr>
								<td><img src="../image/x.jpg"></td>
								<td><a href="#">订阅版本发布信息</a></td>
							</tr>
						</table>
					</div>
				</div>
				<div id="rl2">
					<br>
					<div id="rla">
						<b>客户服务热线</b>
					</div>
					<div id="rlb">
						<hr>
					</div>
					<div id="rlc">
						Oversea System Equipment<br> 
						After-sales Support:<br>
						+86-755-26771900<br><br>
						China System Equipment<br>
						After-sales Support:<br>
						+86-755-26770800<br>
						800 830 1118/400 830 1118<br><br>
						Handset & Data Terminal:<br>
						手机与数据终端（网卡）:<br>
						+86-755-26779999<br>
						400-880-9999<br><br>
						ADSL MODEM and IPTV:<br>
						+86-755-26770188<br>

					</div>
				</div>
				<div id="rl3">
					<br><br><br><br>
					<div id="rld">
						<b>网站使用指南</b>
					</div>
					<div id="rle">
						<hr>
					</div>
					<div id="rlf">
						<table>
							<tr>
								<td><img src="../image/x.jpg"></td>
								<td><a href="#">SUPPORT技术支持网站用户...</a></td>
							</tr>
							<tr>
								<td><img src="../image/x.jpg"></td>
								<td><a href="#">ZTE Technical Support...</a></td>
							</tr>
						</table>
					<div>
				</div>
			</span>
		</div>
	</div>
	<div id="footer">
		<br>
		<div id="f1">
			<img src="../image/footer.jpg">	
		<div>
		<div id="f2">
			<span id="f21">
				<span id="f211"><a href="#">联系我们</a></span>
				<span id="f212">|</span> 
				<span id="f212"><a href="#">网站地图</a></span> 
				<span id="f212">|</span> 
				<span id="f212"><a href="#">法律声明</a></span> 
				<span id="f212">|</span> 
				<span id="f212"><a href="#">个人隐私</a></span> 
			</span>
			<span id="f22">
				 © 1998-2012 ZTE Corporation. All rights reserved.
			</span>
		</div>
	</div>
	<br><br>
</body>
</html>