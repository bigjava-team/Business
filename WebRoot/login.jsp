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

<title>登录页面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<style type="text/css">
a {
	text-decoration: none;
	color: #424c50;
}

font {
	color: black;
}
.orange{
	margin-top: 10px;
}

.ziti1{
	color:orange;

}

.button {
	display: inline-block;
	border-radius: 4px;
	background-color: #88ada6;
	border: none;
	color: #FFFFFF;
	text-align: center;
	font-size: 28px;
	padding: 10px;
	width: 140px;
	transition: all 0.5s;
	cursor: pointer;
	margin: 5px;
}

.button span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
}

.button span:after {
	content: '»';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20px;
	transition: 0.5s;
}

.button:hover span {
	padding-right: 25px;
}

.button:hover span:after {
	opacity: 1;
	right: 0;
}

img {
	vertical-align: text-top;
}

.left {
	text-align: center;
	float: right;
	margin-right:150px;
	margin-top: 50px;
	width: 350px;
	left: 20px;
	height: 329px;
	border: #909090 1px solid;
	background: #fff;
	color: #333;
	filter: progid:DXImageTransform.Microsoft.Shadow(color=#909090,
		direction=120, strength=4);
	-moz-box-shadow: 2px 2px 10px #909090;
	-webkit-box-shadow: 2px 2px 10px #909090;
	box-shadow: 2px 2px 10px #909090;
}

.inleft {
	margin-top: 10px;
}

.kuang {
	margin-top: 10px;
}

.zhongjian{
	margin-top:20px;
	background-image: url(TuPian/test1.jpg);
    background-repeat: no-repeat;
    background-size: 100% 100%;
    -moz-background-size: 100% 100%;
	height:450px;
	width:100%;
}


.tou{
	margin-right:150px;
	float:right;
	width:auto;
	height:80px;
	background:borwn;
	background-repeat: no-repeat;
    background-size: 100% 100%;
}


.toubuwenzi{
		color:brown;
		font-size:33px;
}

.toubuwenzi1{
		margin-left:20px;
}

.mytxt {
	width: 200px;
	color: #333;
	line-height: normal;
	font-family: "Microsoft YaHei", Tahoma, Verdana, SimSun;
	font-style: normal;
	font-variant: normal;
	font-size-adjust: none;
	font-stretch: normal;
	font-weight: normal;
	margin-top: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
	padding-top: 4px;
	padding-right: 4px;
	padding-bottom: 4px;
	padding-left: 4px;
	font-size: 15px;
	outline-width: medium;
	outline-style: none;
	outline-color: invert;
	border-top-left-radius: 3px;
	border-top-right-radius: 3px;
	border-bottom-left-radius: 3px;
	border-bottom-right-radius: 3px;
	text-shadow: 0px 1px 2px #fff;
	background-attachment: scroll;
	background-repeat: repeat-x;
	background-position-x: left;
	background-position-y: top;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: rgb(255, 255, 255);
	margin-right: 8px;
	border-top-color: #ccc;
	border-right-color: #ccc;
	border-bottom-color: #ccc;
	border-left-color: #ccc;
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
	font-family: "Microsoft YaHei", Tahoma, Verdana, SimSun;
}

.mytxt:focus {
	border: 1px solid #fafafa;
	-webkit-box-shadow: 0px 0px 6px #007eff;
	-moz-box-shadow: 0px 0px 5px #007eff;
	box-shadow: 0px 0px 5px #007eff;
}

.foot {
	margin-top:70px;
	color: #424c50;
}
</style>
</head>

<body style="margin:0px; padding:0px">
	<div id="all">

		<div id="header" align="center">
			<a href="Save.jsp"><img src="TuPian/logo.jpg"></a><img
				src="TuPian/nuli.gif"><br/>
						<font size="33px"><b>用户登录</b></font>
			<div class="tou">
			<div class="wenti">
			<a href=""><font class="toubuwenzi">返回首页&nbsp;&nbsp;&nbsp;</font></a>
			</div>
			</div>
		</div>

		
<div class="zhongjian">
			<div id="menu" class="left" >
			
			<form align="center" class="inleft">
		
				<div class="geshi">
					&nbsp;<br /> 用户名
					<div class="kuang">
					<img src="TuPian/tubiao.jpg" width="27px" height="25px">
					
						<input type="text" class="mytxt" id="inputname" placeholder="用户名" >
					</div>
				</div><br/>

				<div class="geshi">
					密码
					<div class="kuang">
					<img src="TuPian/suo.jpg" width="27px" height="25px">
						<input type="password" class="mytxt" id="password"
							placeholder="密码">
					</div>
				</div><br/>


				<div class="anniu">
					<button class="button"
					style="vertical-align:middle" id="zhuce" disabled="true"
						>
						<span>登录</span>
					</button>
				</div>
				<div class="orange">
				<a href="Save.jsp"><font class="ziti1"> 还没有账号？点我去注册!</font></a>
				</div>
			</form>
</div>
</div>
		
		<div id="footer" style="clear:both;text-align:center;">

			
				<div class="footer-hd">
				<div class="foot">
					<hr width="100%">
					<p>
						<a href="//page.1688.com/shtml/about/ali_group1.shtml">百度</a> <b>|</b>
						<a href="//www.alibaba.com">谷歌</a> <b>|</b> <a
							href="//www.1688.com">尚硅谷</a> <b>|</b> <a
							href="//www.aliexpress.com">哔哩哔哩</a> <b>|</b> <a
							href="//www.taobao.com">淘宝网</a> <b>|</b> <a
							href="//www.tmall.com">hibernate</a> <b>|</b> <a
							href="//ju.taobao.com">spring</a> <b>|</b> <a
							href="//www.etao.com">springmvc</a> <b>|</b> <a
							href="//www.alimama.com">Struts</a> <b>|</b> <a
							href="//www.aliyun.com">SSH</a> <b>|</b> <a
							href="//www.yunos.com">Linux</a> <b>|</b> <a href="//www.net.cn">SSH</a>
						<b>|</b> <a href="//www.alipay.com">mybaits</a>
					</p>
				</div>
				<div class="footer-bd">
					<hr width="80%">
					<p>
						<a href="">关于光光</a> <a href="">合作伙伴</a> <a href="">营销中心</a> <a
							href="">联系客服</a> <a href="">开放平台</a> <a href="">诚征英才</a> <a
							href="">联系我们</a> <a href="">网站地图</a> <a href="">法律声明及隐私权政策</a> <font>&copy;
							2019 GuangGuangGuang.com 版权所有</font>
					</p>
					<p>
						<font>光光光网项目学校:江西制造职业技术学院</font> <b>|</b> <font>光光光网项目班级:17软件一班</font>
						<b>|</b> <font>光光光网项目团队:周-罗-章-龚-彭</font>
					</p>
				</div>
			</div>
		</div>
		</div>
  </body>
</html>
