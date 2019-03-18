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

<title>My JSP 'new.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>
<style>
body {
	text-align: center;
	margin: 0;
	padding: 0
}

div {
	height: 200px;
}


.middle {
	margin: 0 auto;
	width: 100%;
	height:100%;
}

.left {
	float: left;
	clear: right;
	width: 20%;
	background-color: #eeefff;
}

.center {
	float: left;
	clear: right;
	width: 50%;
	background-color: #CCC000;
}

.right {
	float: left;
	clear: right;
	width: 30%;
	background-color: #fff000;
}

* {
	padding: 0;
	margin: 0;
}

#demo {
	display: block;
	width: 400px;
	height: 400px;
	margin: 50px;
	position: relative;
	border: 1px solid #ccc;
	float:left;
}

#float-box {
	width: 400px;
	height: 400px;
	position: relative;
	z-index: 1;
}

#small-box {
	display: none;
	width: 160px;
	height: 120px;
	position: absolute;
	background: #ffffcc;
	border: 1px solid #ccc;
	filter: alpha(opacity = 50);
	opacity: 0.5;
	cursor: move;
}

#big-box {
	display: none;
	position: absolute;
	top: 0;
	left: 420px;
	width: 400px;
	height: 400px;
	overflow: hidden;
	border: 1px solid #ccc;
	z-index: 1;
}

#big-box img {
	position: absolute;
	z-index: 5;
}
.bigtu{
		width:400px;
		height: 400px;
}

.smalltu{
		width:800px;
		height:800px;
}
</style>

<script type="text/javascript">

window.onload = function(){
  
//获取到需要的元素
var demo = document.getElementById('demo');
var smallBbox = document.getElementById('small-box');
var floatBox = document.getElementById('float-box');
var bigBox = document.getElementById('big-box');
var bigBoxImg = bigBox.getElementsByTagName('img')[0];
  
  
floatBox.onmouseover = function(){
smallBbox.style.display = "block";
bigBox.style.display = "block";
}
floatBox.onmouseout = function(){
smallBbox.style.display = "none";
bigBox.style.display = "none";
}
floatBox.onmousemove = function(e){
var _event = e || event;
console.log(_event.clientY);
var l = _event.clientX - demo.offsetLeft - floatBox.offsetLeft - smallBbox.offsetWidth/2;//除2是因为让鼠标点出现在放大遮罩的中心位置
var t = _event.clientY - demo.offsetTop - floatBox.offsetTop - smallBbox.offsetHeight/2;
  
var demoWidth = demo.offsetWidth;
var demoHeight = demo.offsetHeight;
  
  
var smallBboxWidth = smallBbox.offsetWidth;
var smallBboxHeight = smallBbox.offsetHeight;
//鼠标可以移动的最大XY的距离
var maxX = demoWidth - smallBboxWidth;
var maxY = demoHeight - smallBboxHeight;
  
  
l = Math.min(maxX,Math.max(0,l));
t = Math.min(maxY,Math.max(0,t));
smallBbox.style.left = l +"px";
smallBbox.style.top = t +"px";
  
  
var percentX = l / (floatBox.offsetWidth - smallBboxWidth);//求出小图遮罩的坐标占可移动区域的比例
var percentY = t / (floatBox.offsetHeight - smallBboxHeight);
  
  
bigBoxImg.style.left = -percentX *(bigBoxImg.offsetWidth - bigBox.offsetWidth) +"px";//大图对的移动方向和小图遮罩的移动方向相反
bigBoxImg.style.top = -percentY*(bigBoxImg.offsetHeight - bigBox.offsetHeight)+"px";
  
}
}
</script>
</head>
<body>
	<div class="middle">
		
	<div class="left">	
			</div>
		<div class="center">中侧</div>
		<div class="right">右侧</div>
	</div>
</body>
</html>
