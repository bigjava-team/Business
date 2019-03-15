<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>开店页面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


<style type="text/css">
body, select, textarea {
	font-size: 1.1em
}

body, html, input {
	font-family: "微软雅黑";
}

.all {
	width: 100%;
	height: 100%;
}

.head {
	width: 100%;
	height: 96px;
	background:;
	color: white;
}

.headone {
	width: 100%;
	height: 34%;
	background: #D0D0D0;
	color: #3C3C3C;
	line-height: 30px;
}

.headone a {
	color: #3C3C3C;
	text-decoration: none;
}

.headone a:hover {
	color: #8E8E8E
}

.headtwo {
	background: -webkit-linear-gradient(left, #FFCC00, #FFCC33);
	background: -o-linear-gradient(right, #FFCC00, #FFCC33);
	background: -moz-linear-gradient(right, #FFCC00, #FFCC33);
	background: linear-gradient(to right, #FFCC00, #FFCC33);
	width: 100%;
	height: 66%;
	color: white;
	line-height: 60px;
}

.headtwo a {
	color: white;
	text-decoration: none;
}

.headtwo a:hover {
	color: yellow
}

.body {
	margin: 20px auto;
	width: 90%;
	height: 90%;
	border: 1px solid #BEBEBE;
}

.fangkuai {
	width: 1022px;
	height: 150px;
	margin-top: 20px;
	margin: 20px auto;
}

.kaitou {
	color: #8E8E8E;
}

.neirong{
	margin-left: 20px;


}

.ziti {
	color: #4F4F4F;
	float: left;
}

.ziti1 font {
	color: white;
	size: 17px;
}

.ziti2 {
	text-align: center;
	margin-left: 20px;
}

#box1 {
	width: 293px;
	height: 150px;
	background: #FF9900;
	float: left;
	position: relative;
}

#box1:after {
	content: "";
	width: 0px;
	height: 150px;
	position: absolute;
	box-sizing: border-box;
	right: -30px;
	top: -1px;
	border-top: 75px solid transparent;
	border-left: 30px solid #FF9900;
	border-bottom: 75px solid transparent;
}

#box1:before {
	content: "";
	width: 0px;
	height: 150px;
	position: absolute;
	box-sizing: border-box;
	left: -30px;
	background: #06f;
	border-top: 75px solid transparent;
	border-bottom: 75px solid yellow;
}

#box2 {
	width: 293px;
	height: 150px;
	float: left;
	background: #FF9900;
	position: relative;
	margin-left: 60px;
}

#box2:after {
	content: "";
	width: 0px;
	height: 150px;
	position: absolute;
	box-sizing: border-box;
	right: -30px;
	top: -1px;
	border-top: 75px solid transparent; border-left : 30px solid #FF9900;
	border-bottom: 75px solid transparent;
	border-left: 30px solid #FF9900;
	border-bottom: 75px solid transparent;
	border-top: 75px solid transparent;
	border-left: 30px solid #FF9900;
	border-bottom: 75px solid transparent;
}

#box2:before {
	content: "";
	width: 0px;
	height: 150px;
	position: absolute;
	box-sizing: border-box;
	left: -30px;
	background: transparent;
	border-top: 75px solid #FF9900;
	border-left: 30px solid transparent;
	border-bottom: 75px solid #FF9900;
}

#box3 {
	width: 293px;
	height: 150px;
	float: left;
	background: #FF9900;
	position: relative;
	margin-left: 61px;
}

#box3:after {
	content: "";
	width: 0px;
	height: 150px;
	position: absolute;
	box-sizing: border-box;
	right: -30px;
	border-top: 75px solid transparent;
	border-bottom: 75px solid transparent;
}

#box3:before {
	content: "";
	width: 0px;
	height: 150px;
	position: absolute;
	box-sizing: border-box;
	left: -30px;
	background: #06f;
	border-top: 75px solid #FF9900;
	border-left: 30px solid #fff;
	border-bottom: 75px solid #FF9900;
}
</style>
</head>

<body style="margin:0px; padding:0px">
	<div class="head">
		<div class="headone">
			<a href="????"> <font size="3px" style="padding-left:10%">用户名</font></a>
			| <a href="????"> <font size="3px">退出</font>
			</a> <font style="float:right;padding-right:10%"> <a href="????"><font
					size="2px">光光网首页</font></a> | <a href="????"><font size="2px">我买的宝贝</font></a>
				| <a href="????"><font size="2px">我卖的宝贝 </font></a>
			</font>
		</div>

		<div class="headtwo">
			<a href="Maijia.jsp"><font size="5px" style="padding-left:10%">店铺注册页面</font></a>
		</div>
	</div>



<div class="body">
	<div class="neirong">
			<div class="kaitou">
			<h1>我要开店</h1>
			每一个光光账号最多开一个店铺。开店流程如下:
		</div>

		<div class="fangkuai">

			<div id="box1">
				<div class="ziti">
					<div class="ziti1">
						<font size="9px">1</font>
					</div>
					<div class="ziti2" style="margin-left: 100px">
						<font color="black">选择开店类型</font><br />
						<br /> 个人店铺
					</div>
				</div>

			</div>

			<div id="box2">
				<div class="ziti">
					<div class="ziti1">
						<font size="9px">2</font>
					</div>
					<div class="ziti2">
						<font color="black">阅读开店通知</font><br />
						<br /> 确认自己符合个人店铺的相关规定
					</div>
				</div>
			</div>

			<div id="box3">
				<div class="ziti">
					<div class="ziti1">
						<font size="9px">3</font>
					</div>
					<div class="ziti2">
						<font color="black">申请开店认证</font><br />
						<br /> 需提交店铺资料,等待审核通过
					</div>
				</div>
			</div>

		</div>
	</div>
</div>

</body>
</html>
