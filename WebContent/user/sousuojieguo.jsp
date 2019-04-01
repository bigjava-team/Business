<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>搜索结果</title>
<style type="text/css">
body {
	padding: 0;
	margin: 0;
}

.list {
	margin-top: 3%;
	margin-right:3%;
	padding-top: 10%;
	padding-bottom: 2%;
	padding-left:2%;
	width: 28%;
	float: left;
	border: 1px solid #e4eaee;
	background-color: #fff;
	line-height: 220%;
}
.head {
	width: 100%;
	border: 1px solid gray;
}

.head a {
	color: #3C3C3C;
	text-decoration: none;
}

.head a:hover {
	color: #8E8E8E;
}
.clear{
	clear: both;
}
.form1 {
	position:relative;
	width:100%;
	margin:0 auto;
}
.input1 {
	width:100%;
	height:100%;
	padding-left:13px;
	border:none;
	outline:none;
}
.button1 {
	padding-top:5%;
	cursor:pointer;
	position:absolute;
	border:none;
	outline:none;
}
.bar7 form {
	height:42px;
}
.bar7 input {
	width:250px;
	border-radius:42px;
	border:2px solid #324B4E;
	background:#F9F0DA;
	transition:.3s linear;
	float:right;
}
.bar7 input:focus {
	width:300px;
}
.bar7 button {
	background:none;
	top:-2px;
	right:20px;
}
.bar7 button:before {
	content:"搜索";
	font-family:FontAwesome;
	color:#324b4e;
	width:100%
}
* {
	box-sizing:border-box;
}
</style>
</head>
<body>
<div class="head">
		<div
			style="background-color: #D0D0D0; padding-bottom: 1%; padding-top: 1%;">
			<div
				style="float: left; border-right: 1px solid black; padding-left: 12%; padding-right: 2%;">
				<a href="???">用户名</a>
			</div>
			<div style="float: left; padding-left: 2%; padding-right: 2%;">
				<a href="???">退出</a>
			</div>
			<div style="float: left; border-right: 1px solid black; padding-left: 36%; padding-right: 2%;">
			<a href="???">光光网首页</a>
			</div>
			<div style="float: left; border-right: 1px solid black; padding-left: 2%; padding-right: 2%;">
			<a href="???">我买的宝贝</a>
			</div>
			<div style="float: left; border-right: 1px solid black; padding-left: 2%; padding-right: 2%;">
			<a href="???">我卖的宝贝</a>
			</div>
			<div class="clear"></div>
		</div>
		<div style="width: 100%; padding-top: 1%; padding-bottom: 1%;">
			<div
				style="float: left; border-right: 1px solid #d2c8c8; text-align: center;">
				<a href=""><img src="../TuPian/logo.jpg"
					style="vertical-align: middle;"></a>
			</div>
			<div
				style="float: left; border-right: 1px solid #d2c8c8; padding-top: 1%; padding-bottom: 0.5%; padding-right: 2%; padding-left: 2%;">
				#店铺名</div>
			<div
				style="float: left; border-right: 1px solid #d2c8c8; text-align: center; padding-right: 2%; padding-left: 2%;">
				<table>
					<tr>
						<td>描述</td>
						<td>服务</td>
						<td>物流</td>
					</tr>
					<tr>
						<td><font color="red">#店铺评分</font></td>
						<td><font color="red">#店铺评分</font></td>
						<td><font color="red">#店铺评分</font></td>
					</tr>
				</table>
			</div>
			<div style="float: right;margin-right: 10%;">
			 <div class="search bar7">
        <form class="form1" method="post" action="sousuojieguo.jsp">
            <input class="input1" type="text" placeholder="搜商品" name="crid">
            <button type="submit" class="button1"></button>
        </form>
    </div>
			</div>
			
			<div class="clear"></div>
		</div>
	</div>
	<div style="width:80%;height:100%;background-color: red;padding-top: 5%;padding-bottom: 5%;text-align: center;margin: 0 auto;">
	#商家logo
	</div>
	<div style="width: 80%; margin: 0 auto; border: 1px solid #D0D0D0;margin-top: 2%;">
		<div style="border-bottom: 1px solid #f0f0f0">
			<h1 style="color: blue">宝贝搜索</h1>
		</div>
		<div style="margin-bottom: 1%; margin-top: 1%;">
			共搜索到<font color="red">#商品数量</font>个符合条件的商品。<font style="float: right">关键字:#搜索框里的文字</font>
		</div>
		<div style="width: 80%; margin: 0 auto; margin-bottom: 2%">
		<div class="list">
			#商品图片<br /> <font color="red">#商品价格</font><br /> <font
				color="black">#商品名称</font><br />
			<div style="float: right">
				<font color="#595959">月销:#商品销量</font>
			</div>
		</div>
		<div class="list">
			#商品图片<br /> <font color="red">#商品价格</font><br /> <font
				color="black">#商品名称</font><br />
			<div style="float: right">
				<font color="#595959">月销:#商品销量</font>
			</div>
		</div>
		<div class="list">
			#商品图片<br /> <font color="red">#商品价格</font><br /> <font
				color="black">#商品名称</font><br />
			<div style="float: right">
				<font color="#595959">月销:#商品销量</font>
			</div>
		</div>
		<div class="clear"></div>
		</div>
	</div>
	<div style="width: 80%; margin: 0 auto; margin-top: 2%">
	<h3>其他人还购买了</h3>
	<div class="list" style="margin-left: 2%">
			#商品图片<br /> <font color="red">#商品价格</font><br /> <font
				color="black">#商品名称</font><br />
			<div style="float: right">
				<font color="#595959">月销:#商品销量</font>
			</div>
		</div>
	<div class="list" style="margin-left: 2%">
			#商品图片<br /> <font color="red">#商品价格</font><br /> <font
				color="black">#商品名称</font><br />
			<div style="float: right">
				<font color="#595959">月销:#商品销量</font>
			</div>
		</div>
	<div class="list" style="margin-left: 2%">
			#商品图片<br /> <font color="red">#商品价格</font><br /> <font
				color="black">#商品名称</font><br />
			<div style="float: right">
				<font color="#595959">月销:#商品销量</font>
			</div>
		</div>
	
	
	</div>
	
</body>
</html>