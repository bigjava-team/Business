<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>测试页面</title>

<style type="text/css">
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

.all{
	width:100%;
	height:800px;


}

.one{
	float: left;
	clear: right;
	width:468px;
	height:882px;
	border: 1px solid #ccc;
}

.two{
	width:468px;
	height:69px;
	background:#FFDAC8;
	border:1px;
	margin-top:20px;
	
}
.twoleft{
	width:80%;
	text-align:center;
	float:left;
}

.tworight{
	text-align:center;
	width:20%;
	float:right;
}

.three{
	border:1px;
	height:42px;
	background:red;
	line-height:42px;
}
.right{
	float:left;
	width:200px;
	height:347px;
	border: 1px solid #FFCC00;
	margin-left:200px;
}
.buttom{
	margin-top:300px;
	
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
<div class="all">
	<div id="demo">
		<div id="float-box">
			<div id="small-box"></div>
			<img src="TuPian/logo2.jpg"class="bigtu">
		</div>
		<div id="big-box">
			<img src="TuPian/logo2.jpg" class="smalltu">
		</div>
		</div>
		
		
	<div class="one">
	<font size="4px"><b>索尼PS4主机 PS4pro 国行 港版slim500G/1TB 荒野大镖客2 5亿限定</b></font> <!-- 标题 -->
	<div class="two">
	<div class="twoleft">
				<font color="black" size="6px">价格:</font>&nbsp&nbsp&nbsp
				<font color="red" size="6px"><b>¥0.00 - 4899.00</b></font>
	</div>
	
	<div class="tworight">
	<a href="#"></a>
			<font color="#6C6C6C" onclick="javascript:document.getElementById('tiaozhuan').scrollIntoView()">8888</font></br>
			累计评论
			</div>
				</div>
				<hr width="100%" >
		<div class="three" >
		内存容量:
				
				
				
		</div>
				
	</div>
		<div class="right">
		asdasda
	
	
	</div>
	
	</div>
	
	
	<div class="buttom">
	<div  id="tiaozhuan">

	test 评论!
	</div>
	</div>
	
</body>
</html>
