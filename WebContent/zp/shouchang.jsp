<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<!--搜素栏 -->
<link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="css/xuanxiangxiahua.css">
<link rel="stylesheet" href="css/menu_bottom.css">

<head>
             <title>页面布局</title>      
        <!--css文件的引用-->
        <style type="text/css">
/*索搜*/
* {box-sizing: border-box;}
#container {width: 500px;height: 820px; margin: 0 auto;}
div.search {padding: 15px 0;}
form {position: relative;width: 300px;margin: 0 auto;}
input, button {border: none;outline: none;}
input {width: 100%;height: 42px; padding-left: 13px;}
button {height: 42px;width: 42px; cursor: pointer;position: absolute;}
/*搜索框7*/
.bar7 form {height:53px;}
.bar7 input {width:400px;border-radius: 42px;border: -2px solid #324B4E;background: #F9F0DA;transition: .3s linear;float: right;}
.bar7 input:focus {width: 550px;}
.bar7 button {background: none;top: 1px;right: 0;}
.bar7 button:before{content: "\f002";font-family: FontAwesome;color: #324b4e;}

/*收藏特效*/
section button {font-size: 0.5rem;
padding: 0.5rem 0.5rem;background-color: #009ac9;border: 1px solid transparent;color: #ffffff;
font-weight:300;-webkit-border-radius: 3px;
border-radius: 3px;-webkit-transition: all 0.3s ease-in-out;-moz-transition: all 0.3s ease-in-out;transition: all 0.3s ease-in-out;}
section button:hover {background-color: #ffffff;color: #009ac9;border-color: #009ac9;}

/*导航栏目z的文字*/
.wenziz{float:left; text-align:left; color:#666; font-size:15px; margin:0 10 0 30 ;word-spacing:33px;}
.wenziz2{ text-align:right; color:#666; font-size:15px; margin:0 50 0 10 ;word-spacing:33px;}
.wenziz3{ text-align:right; color:#666; font-size:15px; margin:-60 220 0 0 ;word-spacing:45px;}
.wenziz4{ text-align:left; color:#666; font-size:15px; margin:80 10 0 30  ;word-spacing:45px;}
/*表格*/
#table{border: 2px solid black;width:100%;  height:100%;  }

/*第一版块*/
.contentone{ background-color: rgba(0,0,0,0.1);; width:100%; height:29px;  border:2px solid #F0F0F0; margin:0 auto}
/*第二版块*/
.contenttwo{ background:#ffffff; width:90%; height:81px; border:2px solid #ffffff; margin:0 auto}
/*第三版块*/
.contentthree{ background:#ffffff; width:80%; height:35px; border:2px solid #ffffff; margin:0 auto}
/*第四版块*/
.contentfour{ background:#ffffff; width:80%; height:1000px; border:2px solid #ffffff; margin:0 auto}
/*节目1*/
.lanmusi{ background:#fff; width:16%; height:230px; float:left;border:2px solid #ffffff; margin:2 3 0 3}
/*节目2*/
.lanmuwu{ background:#fff; width:100%; height:25%; float:left;border:2px solid #ffffff; margin:0 auto}



</style>
  </head>
  <body>
	<!--板块1-->
	<div class="contentone">
		<div class=wenziz>中国大陆 亲，请登录免费注册我的光光</div>
		<div class=wenziz2>
			<ul class="nav">
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
	<div class="contenttwo">
		<img src="images/logo.png" height="100%" width="13%" align="left">
		<div class="search bar7 ">
			<form>
				<input type="text" placeholder="欢迎来到光光网...">
				<button type="submit"></button>
			</form>
		</div>
		<div class="wenziz3">
			<section>
			<button type="button">
				<a href="dianpu.jsp">店铺收藏</a>
			</button>
			</section>
		</div>

	</div>

	<!--板块3-->
	<div class="contentthree" >
		<span class="wenziz4"> 全部宝贝 降价 失效 同店宝贝 </span>
	</div>
	
	<div style="height:5%;border-top:1px solid #d0d0d0;"></div>
	<!--板块4-->
	<div class="contentfour" >
		<!--1-->
		<div class="lanmusi">
			<div class="空的div">
				<img src="images/9.jpg" height="60%" width="100%" />口红
			</div>
			<!--栏目内容-->
			这款口红是3D效果的，宛如光下的贝壳<br />73294 人说好
		</div>
		<!--1结束-->
		<!--2-->
		<div class="lanmusi">
			<div class="空的div">
				<img src="images/9.jpg" height="60%" width="100%" />口红
			</div>
			<!--栏目内容-->
			这款口红是3D效果的，宛如光下的贝壳<br />73294 人说好
		</div>
		<!--2结束-->
		<!--3-->
		<div class="lanmusi">
			<div class="空的div">
				<img src="images/9.jpg" height="60%" width="100%" />口红
			</div>
			<!--栏目内容-->
			这款口红是3D效果的，宛如光下的贝壳<br />73294 人说好
		</div>
		<!--3结束-->
		<!--4-->
		<div class="lanmusi">
			<div class="空的div">
				<img src="images/9.jpg" height="60%" width="100%" />口红
			</div>
			<!--栏目内容-->
			这款口红是3D效果的，宛如光下的贝壳<br />73294 人说好
		</div>
		<!--4结束-->
		<!--5-->
		<div class="lanmusi">
			<div class="空的div">
				<img src="images/9.jpg" height="60%" width="100%" />口红
			</div>
			<!--栏目内容-->
			这款口红是3D效果的，宛如光下的贝壳<br />73294 人说好
		</div>
		<!--5结束-->
		<!--6-->
		<div class="lanmusi">
			<div class="空的div">
				<img src="images/9.jpg" height="60%" width="100%" />口红
			</div>
			<!--栏目内容-->
			这款口红是3D效果的，宛如光下的贝壳<br />73294 人说好
		</div>
		<!--6结束-->
		<!--7-->
		<div class="lanmusi">
			<div class="空的div">
				<img src="images/9.jpg" height="60%" width="100%" />口红
			</div>
			<!--栏目内容-->
			这款口红是3D效果的，宛如光下的贝壳<br />73294 人说好
		</div>
		<!--7结束-->

	</div>


	<!-- 尾部 -->
	<div class="container footer">
		<div class="span24">
			<div class="footerAd">
				<img src="images/footer.jpg" width="950" height="52" alt="我们的优势"
					title="我们的优势">
			</div>
		</div>
		<div class="span24">
			<ul class="bottomNav">
				<li><a>关于我们</a> |</li>
				<li><a>联系我们</a> |</li>
				<li><a>招贤纳士</a> |</li>
				<li><a>法律声明</a> |</li>
				<li><a>友情链接</a> |</li>
				<li><a target="_blank">支付方式</a> |</li>
				<li><a target="_blank">配送方式</a> |</li>
				<li><a>服务声明</a> |</li>
				<li><a>广告声明</a></li>
			</ul>
		</div>

		<div class="span24">
			<div class="copyright">本网站所有内容都由光光团队提供,本站仅为网友提供商品购买与交流的平台,商品版权归光光团队所有</div>
			<div class="copyright">
				Copyright © 2019-0301 光光商城 版权所有 翻版必究 <img src="images/nuli.gif">
			</div>
		</div>
	</div>
</body>
</html>