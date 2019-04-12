<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
             <title>页面布局</title>      
        <!--css文件的引用-->
  </head>
  <!--搜素栏 -->
<link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="css/xuanxiangxiahua.css">
<link rel="stylesheet" href="css/menu_bottom.css">
  <style type="text/css">
/*索搜*/
* {box-sizing: border-box;}
#container {width: 50%;height: 50%; margin: 0 auto;}
#d  div.search {padding: 15px 0;}
#d form {position: relative;width: 22%;margin: 0 auto;}
#d input, button {border: none;outline: none;}
#d input {width: 100%;height: 80%; padding-left: 13px;}
#d button {height:80%;width: 20%; cursor: pointer;position: absolute;}
/*搜索框7*/
#d .bar7 form {height:53px;}
#d .bar7 input {width:450px;border-radius: 42px;border: -2px solid #324B4E;background: #F9F0DA;transition: .3s linear;float: right;}
#d .bar7 input:focus {width: 180%;}
#d .bar7 button {background: none;top: 1px;right: 0;}
#d .bar7 button:before{content: "\f002";font-family: FontAwesome;color: #324b4e;}

/*导航栏目z的文字*/
.wenziz{ text-align:left; color:#666; font-size:15px; margin:3 10 0 30 ;word-spacing:33px;}
.wenziz2{ text-align:right; color:#666; font-size:15px; margin:-20 50 0 10 ;word-spacing:33px;}
.wenziz3{ text-align:left; color:#000000; font-size:12px; margin:3 3 0 3 ;word-spacing:33px;}

/*表格*/
#table{border: 2px solid black;width:100%;  height:100%;  }

/*第一版块*/
.contentone{ background-color: rgba(0,0,0,0.1);; width:100%; height:4%;  border:2px solid #F0F0F0; margin:0 auto}
/*第二版块*/
.contenttwo{ background:#ffffff; width:90%; height:11%; border:2px solid #ffffff; margin:0 auto}
/*第三版块*/
.contentthree{ background:#ffffff; width:80%; height:35%; border:2px solid #F0F0F0; margin:0 auto}
/*第四版块*/
.contentfour1{ background:#ffffff; width:17.5%; height:150%; float:left;border:2px solid #ffffff; margin:0 0 0 6.5%  }
/*第五版块*/
.content{ background:#ffffff; width:74%; height:150%;  border:2px solid #ffffff; margin:0 0 0 24%}
/*节目1*/
.lanmusi{ background:#fff; width:16%; height:25%;float:left; border:2px solid #FF9900; margin:2 3 0 3}
/*节目2*/
.lanmuwu{ background:#fff; width:100%; height:25%;border:2px solid #FF9900; margin:0 auto}

</style>

<body>
	<!--板块1-->
	<div class="contentone">
		<div class=wenziz>中国大陆 亲，请登录免费注册我的光光</div>
		<div id="d" class=wenziz2>
			<ul  class="nav">
				<li><a href="#">网站导航</a>
					<ul class="drop-down-content">
						<li><a href="#">下架商品</a></li>
					</ul></li>
				<li class="drop-down"><a href="#">收藏夹</a>
					<ul class="drop-down-content">
						<li><a href="shouchang.jsp">宝贝收藏</a></li>
						<li><a href="dianpu.jsp">店铺收藏</a></li>
					</ul></li>
				<li><a href="#">商品分类</a>
					<ul class="drop-down-content">
						<li><a href="#">下架商品</a></li>
					</ul></li>

				<li class="drop-down"><a href="#">卖家中心</a>
					<ul class="drop-down-content">
						<li><a href="#">已卖商品</a></li>
						<li><a href="#">下架商品</a></li>
					</ul></li>
				<li><a href="#">联系客服</a>
					<ul class="drop-down-content">
						<li><a href="#">已卖商品</a></li>
					</ul></li>
				<li><a href="#">购物车</a>
					<ul class="drop-down-content">
						<li><a href="#">已卖商品</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	<!--板块2-->
	<div id="d" class="contenttwo">
		<img src="images/logo.png" height="100%" width="13%" align="left">
		<div class="search bar7">
			<form>
				<input type="text" placeholder="欢迎来到光光网...">
				<button type="submit"></button>
			</form>
		</div>
	</div>
	<!--板块3-->
	<div class="contentthree ">
	<%@ include file="xuanye.jsp"%>

	</div>
	<!--板块4-->
	<div class="contentfour1">
		<!--2-->
		<div class="lanmuwu">
			<div class="空的div">
				<img src="images/9.jpg" height="60%" width="100%" />口红
			</div>
			<!--栏目内容-->
			这款口红是3D效果的，宛如光下的贝壳<br />73294 人说好
		</div>
		<!--2结束-->
		<!--2-->
		<div class="lanmuwu">
			<div class="空的div">
				<img src="images/9.jpg" height="60%" width="100%" />口红
			</div>
			<!--栏目内容-->
			这款口红是3D效果的，宛如光下的贝壳<br />73294 人说好
		</div>
		<!--2结束-->
		<!--2-->
		<div class="lanmuwu">
			<div class="空的div">
				<img src="images/9.jpg" height="60%" width="100%" />口红
			</div>
			<!--栏目内容-->
			这款口红是3D效果的，宛如光下的贝壳<br />73294 人说好
		</div>
		<!--2结束-->
		<!--2-->
		<div class="lanmuwu">
			<div class="空的div">
				<img src="images/9.jpg" height="60%" width="100%" />口红
			</div>
			<!--栏目内容-->
			这款口红是3D效果的，宛如光下的贝壳<br />73294 人说好
		</div>
		<!--2结束-->

	</div>
	<!--板块5-->
	<div class="content">
		<!--1-->
		<div class="lanmusi">
			<div class="空的div">
				<img src="images/9.jpg" height="60%" width="100%" />口红
			</div>
			<!--栏目内容-->
			这款口红是3D效果的，宛如光下的贝壳<br />73294 人说好
		</div>
		<!-- 1结束 -->
		<!--2-->
		<div class="lanmusi">
			<div class="空的div">
				<img src="images/0.jpg" height="60%" width="100%" />
			</div>
			<!--栏目内容-->
			<div class="wenziz3">非常好的鞋子</div><p>
			￥ <b style="color:#F00" >25.5</b> 货源上海
		</div>
		<!-- 2结束 -->
		<!--2-->
		<div class="lanmusi">
			<div class="空的div">
				<img src="images/0.jpg" height="60%" width="100%" />
			</div>
			<!--栏目内容-->
			<div class="wenziz3">非常好的鞋子</div><p>
			￥ <b style="color:#F00" >25.5</b> 货源上海
		</div>
		<!-- 2结束 -->
		<!--2-->
		<div class="lanmusi">
			<div class="空的div">
				<img src="images/0.jpg" height="60%" width="100%" />
			</div>
			<!--栏目内容-->
			<div class="wenziz3">非常好的鞋子</div><p>
			￥ <b style="color:#F00" >25.5</b> 货源上海
		</div>
		<!-- 2结束 -->
		<!--2-->
		<div class="lanmusi">
			<div class="空的div">
				<img src="images/0.jpg" height="60%" width="100%" />
			</div>
			<!--栏目内容-->
			<div class="wenziz3">非常好的鞋子</div><p>
			￥ <b style="color:#F00" >25.5</b> 货源上海
		</div>
		<!-- 2结束 -->
		<!--2-->
		<div class="lanmusi">
			<div class="空的div">
				<img src="images/0.jpg" height="60%" width="100%" />
			</div>
			<!--栏目内容-->
			<div class="wenziz3">非常好的鞋子</div><p>
			￥ <b style="color:#F00" >25.5</b> 货源上海
		</div>
		<!-- 2结束 -->
		<!--2-->
		<div class="lanmusi">
			<div class="空的div">
				<img src="images/0.jpg" height="60%" width="100%" />
			</div>
			<!--栏目内容-->
			<div class="wenziz3">非常好的鞋子</div><p>
			￥ <b style="color:#F00" >25.5</b> 货源上海
		</div>
		<!-- 2结束 -->
		<!--2-->
		<div class="lanmusi">
			<div class="空的div">
				<img src="images/0.jpg" height="60%" width="100%" />
			</div>
			<!--栏目内容-->
			<div class="wenziz3">非常好的鞋子</div><p>
			￥ <b style="color:#F00" >25.5</b> 货源上海
		</div>
		<!-- 2结束 -->
		<!--2-->
		<div class="lanmusi">
			<div class="空的div">
				<img src="images/0.jpg" height="60%" width="100%" />
			</div>
			<!--栏目内容-->
			<div class="wenziz3">非常好的鞋子</div><p>
			￥ <b style="color:#F00" >25.5</b> 货源上海
		</div>
		<!-- 2结束 -->

	</div>
		<%@include file="menu_bottom.jsp"%>
</body>
</html>
