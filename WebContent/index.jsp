<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
#index {
	background-color: #0FF;
	width: 90%;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}

#index #main #main_right_top {
	background-color: #03C;
	margin-top: 1%;
	margin-right: 1%;
	margin-bottom: 1%;
	float: left;
	height: 35%;
	width: 23%;
}

#index #main #main_right_foot {
	float: left;
	margin-right: 1%;
	margin-bottom: 1%;
	width: 23%;
	background-color: #0FF;
	height: 52%;
}

#index #new {
	height: 800px;
	width: 100%;
}

#index #hot {
	background-color: #F30;
	height: 800px;
	width: 100%;
	margin-top: 10px;
}

#index #hot #hot_top {
	background-color: #C39;
	height: 40px;
	width: 100%;
}

#index #main #main_top {
	background-color: #F60;
	float: left;
	height: 6%;
	width: 84%;
	font-size: 18px;
}

#index #main #main_top ul {
	margin: 0px;
}

#index #main #main_img {
	background-color: #0F6;
	width: 59%;
	height: 89%;
	float: left;
	margin: 1%;
}

#index #main #main_top ul li {
	float: left;
	list-style-type: none;
	margin-left: 5%;
}

#index #new #new_main #new_product {
	height: 49.9%;
	width: 19.9%;
	border: 1px solid #000;
	float: left;
	margin-right: -1px;
	margin-bottom: -1px;
}

#index #hot #hot_main #hot_product {
	height: 49.9%;
	width: 19.9%;
	border: 1px solid #000;
	float: left;
	margin-right: -1px;
	margin-bottom: -1px;
}

#index #top {
	height: 30px;
	width: 100%;
}

#index #top #top_left {
	float: left;
	width: 40%;
	height: 30px;
	line-height: 30px;
}

body {
	margin: 0px;
	padding: 0px;
	font-size: 12px;
}

#index #top #top_right {
	float: left;
	width: 50%;
	height: 30px;
	margin-left: 10%;
}

#index #main #main_left {
	background-color: #FF0;
	height: 98%;
	width: 15%;
	float: left;
	font-size: 16px;
}

#index #new #new_top {
	height: 40px;
	width: 100%;
	background-color: #366;
}

#index #new #new_main {
	background-color: #CC3;
	height: 760px;
	width: 100%;
}

#index #hot #hot_main {
	background-color: #0F3;
	height: 760px;
	width: 100%;
}

#index #header {
	background-color: #63C;
	height: 120px;
	width: 100%;
}

#index #main {
	background-color: #C3F;
	height: 500px;
	width: 100%;
}

#index #header #img {
	background-color: #966;
	height: 95%;
	width: 25%;
	float: left;
	margin-right: 10%;
}

#index #header #search {
	background-color: #CF3;
	float: left;
	height: 95%;
	width: 50%;
}

#index #foot {
	background-color: #600;
	height: 200px;
	width: 100%;
	margin-top: 10px;
}

#index #top ul {
	margin: 0px;
	height: 30px;
	line-height: 30px;
}

#index #main #main_left ul li {
	list-style-type: none;
	margin-top: 8%;
}

#index #top ul li {
	list-style-type: none;
	float: left;
	display: inline;
	margin-top: 0px;
	margin-right: 20px;
	margin-bottom: 0px;
	margin-left: auto;
}

#index #main #main_left #biaoti {
	font-size: 18px;
	background-color: #9C0;
	height: 6%;
}
</style>
</head>

<body>
	<div id="index">
		<div id="top">
			<div id="top_left">中国大陆 亲，请登录免费注册我的光光</div>
			<div id="top_right">
				<ul>
					<li>我的主页</li>
					<li>购物车</li>
					<li>收藏夹</li>
					<li>我的订单</li>
					<li>商品分类</li>
					<li>卖家中心</li>
					<li>退出</li>
				</ul>
			</div>
		</div>
		<div id="header">
			<div id="img">
				图片 <img />
			</div>
			<div id="search">
				搜索
				<form>
					<input type="text" placeholder="欢迎来到光光网..."> </input>
					<button type="submit"></button>
				</form>
			</div>
		</div>
		<div id="main">
			<div id="main_left">
				<div id="biaoti">商品分类</div>
				<ul>
					<li>衣服饰品</li>
					<li>男装/女装/内衣</li>
					<li>鞋靴/箱包/配件</li>
					<li>户外商品</li>
					<li>运动/户外/乐器</li>
					<li>游戏/动漫/影视</li>
					<li>美食/生鲜/零食</li>
					<li>电子产品</li>
					<li>冰箱/数码/手机</li>
					<li>美妆/洗护/保健品</li>
					<li>珠宝/眼镜/手表</li>
					<li>家用电器</li>
					<li>工具/装修/建材</li>
					<li>家具/家饰/家纺</li>
				</ul>
			</div>
			<div id="main_top">
				<ul>
					<li>女装 |</li>
					<li>男装|</li>
					<li>鞋靴|</li>
					<li>箱包 |</li>
					<li>运动|</li>
					<li>乐器|</li>
					<li>乐器</li>
				</ul>
			</div>
			<div id="main_img">图片伦播</div>
			<div id="main_right_top">个人信息</div>
			<div id="main_right_foot">告示</div>

		</div>

		<div id="new">
			<div id="new_top">最新</div>
			<div id="new_main">
				<div id="new_product"></div>
				<div id="new_product"></div>
				<div id="new_product"></div>
				<div id="new_product"></div>
				<div id="new_product"></div>
				<div id="new_product"></div>
				<div id="new_product"></div>
				<div id="new_product"></div>
				<div id="new_product"></div>
				<div id="new_product"></div>
			</div>
		</div>

		<div id="hot">
			<div id="hot_top">最热</div>
			<div id="hot_main">
				<div id="hot_product"></div>
				<div id="hot_product"></div>
				<div id="hot_product"></div>
				<div id="hot_product"></div>
				<div id="hot_product"></div>
				<div id="hot_product"></div>
				<div id="hot_product"></div>
				<div id="hot_product"></div>
				<div id="hot_product"></div>
				<div id="hot_product"></div>
			</div>
		</div>

		<div id="foot">底部</div>
	</div>
</body>
</html>