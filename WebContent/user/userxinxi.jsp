<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户个人中心</title>
<style type="text/css">
body {
	margin: 0px;
	padding: 0px;
	overflow-x: hidden;
}

.head {
	background-color: #ff4401;
	width: 100%;
	height: 30px;
}

.body {
	margin-top: 1%;
	margin-left: 12%;
	height: 120%;
	width: 83%;
}

.left {
	float: left;
	width: 10%;
	height: 25%;
}

.left font {
	line-height: 160%;
}

.left a {
	color: black;
	text-decoration: none;
}

.left a:hover {
	color: #EAC100;
}

.center {
	float: left;
	width: 62%;
}

.centertop {
	background-color: #f5f8fa;
	border: 1px solid #e4eaee;
	width: 95%;
	padding-top: 2%;
	padding-bottom: 5%;
}

.centertop a {
	color: #546d7e;
	text-decoration: none;
}

.centertop a:hover {
	color: #EAC100;
}

.centerdi {
	width: 95%;
	border: 1px solid #e4eaee;
	padding-top: 2%;
	padding-bottom: 2%;
}

.centerdi ul {
	list-style: none;
	margin: 0px;
	padding: 0px;
	width: auto;
}

.centerdi ul li {
	float: left;
	padding-left: 6.7%;
}

.centerdi ul li a, div.centerdi ul li a:visited {
	color: black;
	display: block;
	text-decoration: none;
	white-space: nowrap;
}

.centerdi ul li a:hover {
	color: orange;
}

.right {
	text-align: center;
	float: right;
	width: 28%;
	height: 100%;
}

.two font {
	margin-left: 35%;
}

.foot {
	margin-top: 3%;
	color: #424c50;
}

.footer a {
	text-decoration: none;
	color: #424c50;
}

.shang {
	background-color: #6ec884;
	color: white;
	border: 1px solid #6ec884;
	width: 82%;
	padding-top: 3%;
	padding-bottom: 3%;
}

.Date {
	border: 1px solid #cfe5d4;
	width: 82%;
	padding-bottom: 3%;
}

.clearfloat {
	clear: both;
}

.dibu1 {
	width: 95.3%;
	background-color: #a0cdeb;
	border: #a0cdeb;
	margin-top: 3%;
	color: white;
	padding-top: 1%;
	padding-bottom: 1%;
}

.dibu2 {
	padding-bottom: 10%;
	border: 1px solid #e4eaee;
	width: 95%;
	background-color: #f5f8fa;
	border: 1px solid #e4eaee;
}

.shangping {
	margin-top: 3%;
	padding-top: 10%;
	padding-bottom: 2%;
	width: 28%;
	float: left;
	margin-left: 3%;
	border: 1px solid #e4eaee;
	background-color: #fff;
}

.shangping font {
	line-height: 150%;
}
/*第一版块*/
.contentone {
	background: #F0F0F0;
	width: 100%;
	padding: 7px 6% 7px 6%;
}
/*导航栏目z的文字*/
.wenziz {
	float: left;
	text-align: left;
	color: #666;
	font-size: 14px;
	margin: 0 10 0 30;
	word-spacing: 33px;
	word-spacing: 22px;
	word-spacing: 22px;
}

.wenziz2 {
	text-align: right;
	color: #666;
	font-size: 14px;
	margin: 0 100px 0 10px;
	word-spacing: 22px;
}
</style>
<script type="text/javascript">
	window.onload = function() {
		setInterval(function() {
			var date = new Date();
			var year = date.getFullYear(); //获取当前年份
			var mon = date.getMonth() + 1; //获取当前月份
			var da = date.getDate(); //获取当前日
			var day = date.getDay(); //获取当前星期几
			var h = date.getHours(); //获取小时
			var m = date.getMinutes(); //获取分钟
			var s = date.getSeconds(); //获取秒
			var d = document.getElementById('Date');
			d.innerHTML = '<font size="20px" color="#55b46c">' + h + ':' + m
					+ ':' + s + '</font>' + '<br/>' + '<font color="#55b46c">'
					+ '星期 ' + day + '<br/>' + year + '.' + mon + '.' + da
					+ '</font>';
		}, 1000)};
	
	
	function Over(o){o.style.backgroundColor='#fff'; o.style.border='1px solid #c31414';}
	function Out(o){o.style.backgroundColor='#fff'; o.style.border='1px dotted #CCC';}
	
</script>

</head>
<body>
	<div class="head">
		<!--板块1-->
		<div class="contentone">
			<div class=wenziz>
				中国大陆
				欢迎您：${user.username};
			</div>
			<div class=wenziz2>
				<s:if test="merchant != null">
					<a>我的店铺</a>
				</s:if>
				<a>购物车</a> <a>收藏夹</a> <a>商品分类</a> <a>卖家中心</a>
				<s:if test="user != null">
					<a href="#" onclick="remove()">退出</a>
				</s:if>
			</div>
		</div>
	</div>
	<div class="body">
		<div class="left">
			<font ><font style="color: red">全部功能</font><br /> 
			<a href="user/Update.jsp">修改密码</a><br /> 
			<a href="***">修改信息</a><br /> 
			<a href="***">收货地址</a><br /> 
			<a href="***">我的购物车</a><br /> 
			<a href="***">我的收藏</a><br /> 
			<a href="***">评价管理</a><br /> 
			  </font> 
		</div>
		<div class="center">
			<div class="centertop">
				<a href=""> #显示头像 #用户名 </a>
				<div style="float: right; padding-top: 2%">
					联系方式
				</div>
			</div>
			<div class="dibu1">
				<b> 根据浏览，猜我喜欢</b>
			</div>
			<div class="dibu2">
				<div class="shangping" onmouseover=Over(this); onmouseout=Out(this);>
					#商品图片<br /> <font color="red">#商品价格</font><br /> <font
						color="black">#商品名称</font><br />
					<div style="float: right">
						<font color="#595959">月销:#商品销量</font>
					</div>
				</div>
				<div class="shangping" onmouseover=Over(this); onmouseout=Out(this);>
					#商品图片<br /> <font color="red">#商品价格</font><br /> <font
						color="black">#商品名称</font><br />
					<div style="float: right">
						<font color="#595959">月销:#商品销量</font>
					</div>
				</div>
				<div class="shangping" onmouseover=Over(this); onmouseout=Out(this);>
					#商品图片<br /> <font color="red">#商品价格</font><br /> <font
						color="black">#商品名称</font><br />
					<div style="float: right">
						<font color="#595959">月销:#商品销量</font>
					</div>
				</div>
				<div class="shangping" onmouseover=Over(this); onmouseout=Out(this);>
					#商品图片<br /> <font color="red">#商品价格</font><br /> <font
						color="black">#商品名称</font><br />
					<div style="float: right">
						<font color="#595959">月销:#商品销量</font>
					</div>
				</div>
				<div class="shangping" onmouseover=Over(this); onmouseout=Out(this);>
					#商品图片<br /> <font color="red">#商品价格</font><br /> <font
						color="black">#商品名称</font><br />
					<div style="float: right">
						<font color="#595959">月销:#商品销量</font>
					</div>
				</div>
				<div class="shangping" onmouseover=Over(this); onmouseout=Out(this);>
					#商品图片<br /> <font color="red">#商品价格</font><br /> <font
						color="black">#商品名称</font><br />
					<div style="float: right">
						<font color="#595959">月销:#商品销量</font>
					</div>
				</div>
				<div class="clearfloat"></div>
			</div>
		</div>
		<div class="right">
			<div class="shang">我的日历</div>
			<div id="Date" class="Date"></div>
		</div>
	</div>
</body>
</html>