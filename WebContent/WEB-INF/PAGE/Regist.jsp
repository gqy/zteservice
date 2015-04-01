<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<jsp:include page="NaveBar.jsp"/>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎注册</title>
</head>
<body>

<!-- 折叠 -->
<div class="container">
	<div class="row">
    	<div class="col-md-offset-1 col-md-10">
        <div class="alert alert-info" style="margin-top:70px">
			请根据自身情况选择填写！（带<font color="red">*</font>为必填项）<br>
			<font color="grey" size="1px">注:ZTE员工,直接使用人事在线的用户名和密码登录</font>
		</div>
            <div class="panel-group" id="accordion" style="margin-top:10px">
			  <!-- 系统设备用户 -->
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#a" id="species">
                      <b>系统设备用户</b>&nbsp;&nbsp;&nbsp;&nbsp;
					  <span id="t1">(指购买中兴系统设备并享受相应服务的个人或单位)</span>
                    </a>
                  </h4>
                </div>
                <div id="a" class="panel-collapse collapse in" style="height: 0px;">
                  <div class="panel-body">
                    <form class="form-horizontal" role="form" action="registaction.html" method="post" id="user">
                       <input type="hidden" name="userId" id="hid" value="1">
                       <div class="form-group">
                          <label for="userName" class="col-md-2 control-label">
							<font color="red">*</font>用户账号
						  </label>
                          <div class="col-md-8">
                             <input type="text" class="form-control" name="userName" 
							 placeholder="用户帐号由3-20位的英文字母、数字或下划线组成，必须以字母开头">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="userPwd" class="col-md-2 control-label">
							<font color="red">*</font>密码
						  </label>
                          <div class="col-md-8">
                             <input type="password" class="form-control" name="userPwd" placeholder="密码请保持在6-40位字符长度 ">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="affirmPwd" class="col-md-2 control-label">
							<font color="red">*</font>重复密码
						  </label>
                          <div class="col-md-8">
                             <input type="password" class="form-control" name="affirmPwd" placeholder="再次输入你的密码，两次密码需一致">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="name" class="col-md-2 control-label">
							<font color="red">*</font>姓名
						  </label>
                          <div class="col-md-8">
                             <input type="text" class="form-control" name="name" placeholder="完善您个人基本信息有助于提高我们的服务质量">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="userSex" class="col-md-2 control-label">
							<font color="red">*</font>性别
						  </label>
                          <div  class="col-md-3">
                             <label class="checkbox-inline">
                                <input type="radio" name="sex" id="userSex" value="male" checked>&nbsp;&nbsp;男
                             </label>
                          </div>
                          <div  class="col-md-3">
                             <label class="checkbox-inline">
                                <input type="radio" name="sex" id="userSex" value="female">&nbsp;&nbsp;女
                             </label>
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="userEmail" class="col-md-2 control-label">
							<font color="red">*</font>邮箱
						  </label>
                          <div class="col-md-8">
                             <input type="email" class="form-control" name="userEmail">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="userTel" class="col-md-2 control-label">
							<font color="red">*</font>联系电话
						  </label>
                          <div class="col-md-8">
                             <input type="tel" class="form-control" name="userTel">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="userUnit" class="col-md-2 control-label">
							<font color="red">*</font>客户单位
						  </label>
                          <div class="col-md-8">
                             <input type="text" class="form-control" name="userUnit" placeholder="请填写单位全称">
                          </div>
                       </div>
					   <div class="form-group">
                          <label for="userUrl" class="col-md-2 control-label">公司网址</label>
                          <div class="col-md-8">
                             <input type="url" class="form-control" name="userUrl" placeholder="http://">
                          </div>
                       </div>
					   <div class="form-group">
                          <label for="userCity" class="col-md-2 control-label">
							<font color="red">*</font>城市
						  </label>
						  <div class="col-md-2">
							 <select id="provinces" name="userProvince" class="form-control" required>
							 </select>
						  </div>
						  <div class="col-md-2 col-md-offset-1">
							 <select id="cities" name="userCity" class="form-control" required>
							 </select>
						  </div>
						  <div class="col-md-2 col-md-offset-1">
							 <select id="counties" name="userCountie" class="form-control" required>
							 </select>
						  </div>							
                       </div>
					   <div class="form-group">
                          <label for="userPost" class="col-md-2 control-label">邮编</label>
                          <div class="col-md-8">
                             <input type="text" class="form-control" name="userPost">
                          </div>
                       </div>
					   <div class="form-group">
                          <label for="userAddress" class="col-md-2 control-label">联系地址</label>
                          <div class="col-md-8">
                             <input type="text" class="form-control" name="userAddress" placeholder="添加你当前联系地址">
                          </div>
                       </div>
					   <div class="form-group">
                          <label for="userProduct" class="col-md-2 control-label">您熟悉的产品<br>(按ctrl键多选)</label>
						  <div class="col-md-8">
                          <select multiple class="form-control" id="userProduct" name="userProduct">
							 <option>产品1</option>
							 <option>产品2</option>
							 <option>产品3</option>
							 <option>产品4</option>
							 <option>产品5</option>
						  </select>
						  </div>
                       </div>
                       <div class="col-md-6 col-md-offset-4">
						<input type="checkbox" id="check">&nbsp;&nbsp;我已阅读并同意中兴公司
						<a href="treaty.html">用户注册协议</a>
					   </div>
					   <div class="col-md-10" style="height:10px"></div>
                       <div class="form-group">
                          <div class="col-md-offset-3 col-md-4">
                             <button type="submit" class="btn btn-info">确认注册</button>
                          </div>
                          <div class="col-md-4">
                             <button type="reset" class="btn btn-info">重&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;置</button>
                          </div>
                       </div>
                    </form>
                  </div>
                </div>
              </div>
			  <!-- 系统设备用户 -->
			  <!-- 终端设备用户 -->
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#b">
                      <b>终端设备用户</b>&nbsp;&nbsp;&nbsp;&nbsp;<span id="t1">(指购买中兴终端设备并享受相应服务的个人或单位)</span>
                    </a>
                  </h4>
                </div>
                <div id="b" class="panel-collapse collapse in" style="height: 0px;">
                  <div class="panel-body">
                    <form class="form-horizontal" role="form" action="#" method="post" id="user2">
                       <div class="form-group">
                          <label for="userName" class="col-md-2 control-label"><font color="red">*</font>用户账号</label>
                          <div class="col-md-8">
                             <input type="text" class="form-control" name="userName" placeholder="用户帐号由3-20位的英文字母、数字或下划线组成，必须以字母开头">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="userPwd" class="col-md-2 control-label"><font color="red">*</font>密码</label>
                          <div class="col-md-8">
                             <input type="password" class="form-control" name="userPwd" placeholder="密码请保持在6-40位字符长度 ">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="affirmPwd" class="col-md-2 control-label"><font color="red">*</font>重复密码</label>
                          <div class="col-md-8">
                             <input type="password" class="form-control" name="affirmPwd" placeholder="再次输入你的密码，两次密码需一致">
                          </div>
                       </div>
					   <div class="form-group">
                          <label for="userProvince" class="col-md-2 control-label"><font color="red">*</font>您所在的省份</label>
							  <div class="col-md-8">
								 <select id="userProvince" class="form-control" name="userProvince" required>
									 <option>请选择</option>
									 <option>北京市</option>
									 <option>上海市</option>
									 <option>天津市</option>
									 <option>重庆市</option>
									 <option>内蒙古自治区</option>
									 <option>维吾尔自治区</option>
									 <option>西藏自治区</option>
									 <option>宁夏回族自治区</option>
									 <option>广西壮族自治区</option>
									 <option>香港特别行政区</option>
									 <option>澳门特别行政区</option>
									 <option>黑龙江省</option>
									 <option>吉林省</option>
									 <option>辽宁省</option>
									 <option>河北省</option>
									 <option>山西省</option>
									 <option>青海省</option>
									 <option>山东省</option>
									 <option>河南省</option>
									 <option>江苏省</option>
									 <option>安徽省</option>
									 <option>浙江省</option>
									 <option>福建省</option>
									 <option>江西省</option>
									 <option>湖南省</option>
									 <option>湖北省</option>
									 <option>广东省</option>
									 <option>台湾省</option>
									 <option>海南省</option>
									 <option>甘肃省</option>
									 <option>陕西省</option>
									 <option>四川省</option>
									 <option>贵州省</option>
									 <option>云南省</option>
								 </select>
							  </div>
                       </div>
                       <div class="form-group">
                          <label for="name" class="col-md-2 control-label"><font color="red">*</font>姓名</label>
                          <div class="col-md-8">
                             <input type="text" class="form-control" name="name" placeholder="完善您个人基本信息有助于提高我们的服务质量">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="userEmail" class="col-md-2 control-label"><font color="red">*</font>邮箱</label>
                          <div class="col-md-8">
                             <input type="email" class="form-control" name="userEmail">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="userTel" class="col-md-2 control-label"><font color="red">*</font>联系电话</label>
                          <div class="col-md-8">
                             <input type="tel" class="form-control" name="userTel">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="userUnit" class="col-md-2 control-label"><font color="red">*</font>客户单位</label>
                          <div class="col-md-8">
                             <input type="text" class="form-control" name="userUnit" placeholder="请填写单位全称">
                          </div>
                       </div>
					   <div class="form-group">
                          <label for="userUrl" class="col-md-2 control-label">公司网址</label>
                          <div class="col-md-8">
                             <input type="url" class="form-control" name="userUrl" placeholder="http://">
                          </div>
                       </div>
					   <div class="form-group">
                          <label for="userProductType" class="col-md-2 control-label">您使用我公司的终端产品类别</label>
							  <div class="col-md-8">
								 <select id="userProvince" class="form-control" id="userProductType" name="userProductType">
									 <option>请选择</option>
									 <option>WLAN</option>
									 <option>ADSL Modem</option>
									 <option>Mobile</option>
									 <option>US Equipment</option>
								 </select>
							  </div>
                       </div>
					   <div class="form-group">
                          <label for="userProductId" class="col-md-2 control-label">您的终端设备编号</label>
                          <div class="col-md-8">
                             <input type="text" class="form-control" name="userProductId">
                          </div>
                       </div>
					   <div class="col-md-6 col-md-offset-4">
						<input type="checkbox" id="check">&nbsp;&nbsp;我已阅读并同意中兴公司<a href="treaty.html">用户注册协议</a>
					   </div>
					   <div class="col-md-10" style="height:10px"></div>
                       <div class="form-group">
                          <div class="col-md-offset-3 col-md-4">
                             <button type="submit" class="btn btn-info">确认注册</button>
                          </div>
                          <div class="col-md-4">
                             <button type="reset" class="btn btn-info">重&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;置</button>
                          </div>
                       </div>
                    </form>
                  </div>
                </div>
              </div>
			  <!-- 终端设备用户 -->
			  <!-- 外包商用户 -->
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#c">
                      <b>外包商用户</b>&nbsp;&nbsp;&nbsp;&nbsp;<span id="t1">(与中兴合作提供产品及服务的个人和单位)</span>
                    </a>
                  </h4>
                </div>
                <div id="c" class="panel-collapse collapse in" style="height: 0px;">
                  <div class="panel-body">
                    <form class="form-horizontal" role="form" action="#" method="post" id="user3">
                       <div class="form-group">
                          <label for="userName" class="col-md-2 control-label"><font color="red">*</font>用户账号</label>
                          <div class="col-md-8">
                             <input type="text" class="form-control" name="userName" placeholder="用户帐号由3-20位的英文字母、数字或下划线组成，必须以字母开头">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="userPwd" class="col-md-2 control-label"><font color="red">*</font>密码</label>
                          <div class="col-md-8">
                             <input type="password" class="form-control" name="userPwd" placeholder="密码请保持在6-40位字符长度 ">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="affirmPwd" class="col-md-2 control-label"><font color="red">*</font>重复密码</label>
                          <div class="col-md-8">
                             <input type="password" class="form-control" name="affirmPwd" placeholder="再次输入你的密码，两次密码需一致">
                          </div>
                       </div>
					   <div class="form-group">
                          <label for="userProvince" class="col-md-2 control-label"><font color="red">*</font>您所在的省份</label>
							  <div class="col-md-8">
								 <select id="userProvince" class="form-control" name="userProvince" required>
									 <option>请选择</option>
									 <option>北京市</option>
									 <option>上海市</option>
									 <option>天津市</option>
									 <option>重庆市</option>
									 <option>内蒙古自治区</option>
									 <option>维吾尔自治区</option>
									 <option>西藏自治区</option>
									 <option>宁夏回族自治区</option>
									 <option>广西壮族自治区</option>
									 <option>香港特别行政区</option>
									 <option>澳门特别行政区</option>
									 <option>黑龙江省</option>
									 <option>吉林省</option>
									 <option>辽宁省</option>
									 <option>河北省</option>
									 <option>山西省</option>
									 <option>青海省</option>
									 <option>山东省</option>
									 <option>河南省</option>
									 <option>江苏省</option>
									 <option>安徽省</option>
									 <option>浙江省</option>
									 <option>福建省</option>
									 <option>江西省</option>
									 <option>湖南省</option>
									 <option>湖北省</option>
									 <option>广东省</option>
									 <option>台湾省</option>
									 <option>海南省</option>
									 <option>甘肃省</option>
									 <option>陕西省</option>
									 <option>四川省</option>
									 <option>贵州省</option>
									 <option>云南省</option>
								 </select>
							  </div>
                       </div>
                       <div class="form-group">
                          <label for="name" class="col-md-2 control-label"><font color="red">*</font>姓名</label>
                          <div class="col-md-8">
                             <input type="text" class="form-control" name="name" placeholder="完善您个人基本信息有助于提高我们的服务质量">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="userEmail" class="col-md-2 control-label"><font color="red">*</font>邮箱</label>
                          <div class="col-md-8">
                             <input type="email" class="form-control" name="userEmail">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="userTel" class="col-md-2 control-label"><font color="red">*</font>联系电话</label>
                          <div class="col-md-8">
                             <input type="tel" class="form-control" name="userTel">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="userUnit" class="col-md-2 control-label"><font color="red">*</font>客户单位</label>
                          <div class="col-md-8">
                             <input type="text" class="form-control" name="userUnit" placeholder="请填写单位全称">
                          </div>
                       </div>
					   <div class="form-group">
                          <label for="userUrl" class="col-md-2 control-label">公司网址</label>
                          <div class="col-md-8">
                             <input type="url" class="form-control" name="userUrl" placeholder="http://">
                          </div>
                       </div>
					   <div class="col-md-6 col-md-offset-4">
						<input type="checkbox" id="check">&nbsp;&nbsp;我已阅读并同意中兴公司<a href="treaty.html">用户注册协议</a>
					   </div>
					   <div class="col-md-10" style="height:10px"></div>
                       <div class="form-group">
                          <div class="col-md-offset-3 col-md-4">
                             <button type="submit" class="btn btn-info">确认注册</button>
                          </div>
                          <div class="col-md-4">
                             <button type="reset" class="btn btn-info">重&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;置</button>
                          </div>
                       </div>
                    </form>
                  </div>
                </div>
              </div>
			  <!-- 外包商用户结束 -->
			  <!-- 手机维修用户 -->
			  <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#d">
                      <b>手机维修用户</b>&nbsp;&nbsp;&nbsp;&nbsp;<span id="t1">(指与中兴手机合作的售后网点)</span>
                    </a>
                  </h4>
                </div>
                <div id="d" class="panel-collapse collapse in" style="height: 0px;">
                  <div class="panel-body">
                    <form class="form-horizontal" role="form" action="#" method="post" id="user4">
                       <div class="form-group">
                          <label for="userName" class="col-md-2 control-label"><font color="red">*</font>用户账号</label>
                          <div class="col-md-8">
                             <input type="text" class="form-control" name="userName" placeholder="用户帐号由3-20位的英文字母、数字或下划线组成，必须以字母开头">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="userPwd" class="col-md-2 control-label"><font color="red">*</font>密码</label>
                          <div class="col-md-8">
                             <input type="password" class="form-control" name="userPwd" placeholder="密码请保持在6-40位字符长度 ">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="affirmPwd" class="col-md-2 control-label"><font color="red">*</font>重复密码</label>
                          <div class="col-md-8">
                             <input type="password" class="form-control" name="affirmPwd" placeholder="再次输入你的密码，两次密码需一致">
                          </div>
                       </div>
					   <div class="form-group">
                          <label for="userCountry" class="col-md-2 control-label"><font color="red">*</font>国家</label>
							  <div class="col-md-8">
								 <select id="userCountry" class="form-control" name="userCountry" required>
									 <option>请选择</option>
									 <option>阿尔及利亚</option>
									 <option>阿尔巴尼亚</option>
									 <option>阿富汗</option>
									 <option>阿根廷</option>
									 <option>阿联酋</option>
									 <option>阿鲁巴</option>
									 <option>阿曼</option>
									 <option>阿塞拜疆</option>
									 <option></option>
									 <option></option>
									 <option></option>
									 <option></option>
									 <option></option>
									 <option></option>
									 <option></option>
								 </select>
							  </div>
                       </div>
                       <div class="form-group">
                          <label for="userLinkMan" class="col-md-2 control-label"><font color="red">*</font>联系人</label>
                          <div class="col-md-8">
                             <input type="text" class="form-control" name="userLinkMan" placeholder="完善您个人基本信息有助于提高我们的服务质量">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="userEmail" class="col-md-2 control-label"><font color="red">*</font>邮箱</label>
                          <div class="col-md-8">
                             <input type="email" class="form-control" name="userEmail"> 
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="userTel" class="col-md-2 control-label"><font color="red">*</font>联系电话</label>
                          <div class="col-md-8">
                             <input type="tel" class="form-control" name="userTel">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="userUnit" class="col-md-2 control-label"><font color="red">*</font>客户单位</label>
                          <div class="col-md-8">
                             <input type="text" class="form-control" name="userUnit" placeholder="请填写单位全称">
                          </div>
                       </div>
					   <div class="form-group">
                          <label for="userUrl" class="col-md-2 control-label">公司网址</label>
                          <div class="col-md-8">
                             <input type="url" class="form-control" name="userUrl" placeholder="http://">
                          </div>
                       </div>
					   <div class="form-group">
                          <label for="userPost" class="col-md-2 control-label">邮编</label>
                          <div class="col-md-8">
                             <input type="text" class="form-control" name="userPost">
                          </div>
                       </div>
					   <div class="form-group">
                          <label for="userAddress" class="col-md-2 control-label">联系地址</label>
                          <div class="col-md-8">
                             <input type="text" class="form-control" name="userAddress" placeholder="添加你当前联系地址">
                          </div>
                       </div>
                       <div class="col-md-6 col-md-offset-4">
						<input type="checkbox" id="check">&nbsp;&nbsp;我已阅读并同意中兴公司<a href="treaty.html">用户注册协议</a>
					   </div>
					   <div class="col-md-10" style="height:10px"></div>
                       <div class="form-group">
                          <div class="col-md-offset-3 col-md-4">
                             <button type="submit" class="btn btn-info">确认注册</button>
                          </div>
                          <div class="col-md-4">
                             <button type="reset" class="btn btn-info">重&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;置</button>
                          </div>
                       </div>
                    </form>
                  </div>
                </div>
              </div>
			  <!-- 手机维护用户结束 -->
			  <!-- 多厂商用户 -->
			  <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#e">
                      <b>多厂商用户</b>&nbsp;&nbsp;&nbsp;&nbsp;<span id="t1">(指使用中兴之外的厂商设备,并需要获得中兴的服务的用户)</span>
                    </a>
                  </h4>
                </div>
                <div id="e" class="panel-collapse collapse in" style="height: 0px;">
                  <div class="panel-body">
                    <form class="form-horizontal" role="form" action="#" method="post" id="user5">
                       <div class="form-group">
                          <label for="userName" class="col-md-2 control-label"><font color="red">*</font>用户账号</label>
                          <div class="col-md-8">
                             <input type="text" class="form-control" name="userName" placeholder="用户帐号由3-20位的英文字母、数字或下划线组成，必须以字母开头">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="userPwd" class="col-md-2 control-label"><font color="red">*</font>密码</label>
                          <div class="col-md-8">
                             <input type="password" class="form-control" name="userPwd" placeholder="密码请保持在6-40位字符长度 ">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="affirmPwd" class="col-md-2 control-label"><font color="red">*</font>重复密码</label>
                          <div class="col-md-8">
                             <input type="password" class="form-control" name="affirmPwd" placeholder="再次输入你的密码，两次密码需一致">
                          </div>
                       </div>
					   <div class="form-group">
                          <label for="userProvince" class="col-md-2 control-label"><font color="red">*</font>您所在的省份</label>
							  <div class="col-md-8">
								 <select id="userProvince" class="form-control" name="userProvince" required>
									 <option>请选择</option>
									 <option>北京市</option>
									 <option>上海市</option>
									 <option>天津市</option>
									 <option>重庆市</option>
									 <option>内蒙古自治区</option>
									 <option>维吾尔自治区</option>
									 <option>西藏自治区</option>
									 <option>宁夏回族自治区</option>
									 <option>广西壮族自治区</option>
									 <option>香港特别行政区</option>
									 <option>澳门特别行政区</option>
									 <option>黑龙江省</option>
									 <option>吉林省</option>
									 <option>辽宁省</option>
									 <option>河北省</option>
									 <option>山西省</option>
									 <option>青海省</option>
									 <option>山东省</option>
									 <option>河南省</option>
									 <option>江苏省</option>
									 <option>安徽省</option>
									 <option>浙江省</option>
									 <option>福建省</option>
									 <option>江西省</option>
									 <option>湖南省</option>
									 <option>湖北省</option>
									 <option>广东省</option>
									 <option>台湾省</option>
									 <option>海南省</option>
									 <option>甘肃省</option>
									 <option>陕西省</option>
									 <option>四川省</option>
									 <option>贵州省</option>
									 <option>云南省</option>
								 </select>
							  </div>
                       </div>
                       <div class="form-group">
                          <label for="name" class="col-md-2 control-label"><font color="red">*</font>姓名</label>
                          <div class="col-md-8">
                             <input type="text" class="form-control" name="name" placeholder="完善您个人基本信息有助于提高我们的服务质量">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="userEmail" class="col-md-2 control-label"><font color="red">*</font>邮箱</label>
                          <div class="col-md-8">
                             <input type="email" class="form-control" name="userEmail">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="userTel" class="col-md-2 control-label"><font color="red">*</font>联系电话</label>
                          <div class="col-md-8">
                             <input type="tel" class="form-control" name="userTel">
                          </div>
                       </div>
                       <div class="form-group">
                          <label for="userUnit" class="col-md-2 control-label"><font color="red">*</font>客户单位</label>
                          <div class="col-md-8">
                             <input type="text" class="form-control" name="userUnit" placeholder="请填写单位全称">
                          </div>
                       </div>
					   <div class="form-group">
                          <label for="userUrl" class="col-md-2 control-label">公司网址</label>
                          <div class="col-md-8">
                             <input type="url" class="form-control" name="userUrl" placeholder="http://">
                          </div>
                       </div>
                       <div class="col-md-6 col-md-offset-4">
						<input type="checkbox" id="check">&nbsp;&nbsp;我已阅读并同意中兴公司<a href="treaty.html">用户注册协议</a>
					   </div>
					   <div class="col-md-10" style="height:10px"></div>
                       <div class="form-group">
                          <div class="col-md-offset-3 col-md-4">
                             <button type="submit" class="btn btn-info">确认注册</button>
                          </div>
                          <div class="col-md-4">
                             <button type="reset" class="btn btn-info">重&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;置</button>
                          </div>
                       </div>
                    </form>
                  </div>
                </div>
              </div>
			  <!-- 多厂商用户结束 -->
            </div>
        </div>
	</div>
</div>
<!-- 折叠结束 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cascade1.js" charset="UTF-8"></script> 
<script src="${pageContext.request.contextPath}/js/bootstrapValidator.js"></script>
<script src="${pageContext.request.contextPath}/js/ToValidate.js"></script>
<script>$('.collapse').collapse()</script>
</body>

</html>
<jsp:include page="Footer.jsp"/>