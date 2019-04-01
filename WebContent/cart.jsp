<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的购物车</title>
<link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="css/menu_bottom.css" rel="stylesheet" type="text/css">
<link href="css/cart.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		var jian = $(".cart_d4_d2_d5_d1_d1_a1").text();
		var jia = $(".cart_d4_d2_d5_d1_d2_a1").text();
		var input = $(".cart_d4_d2_d5_d1_input").val();
		$(".cart_d4_d2_d5_d1_d1_a1").click(function(){
			/* $(".cart_d4_d2_d5_d1_input").val(input * 1 - 1); */
			if (input > 1 ) {
				$(".cart_d4_d2_d5_d1_input").attr("value", input * 1 - 1);
			}
		});
	});
	
	
	
	/* $(function(){
		$(".cart_d6_d2_a1").mouseover(function(){
			$(".cart_d6_d2_a1").css("color","#FF4400");	//选取<body>元素下元素名是<div>的子元素
		});
	}); */
	
	$(function(){
		$(".cart_d6_d2_a1").hover(function(){
			$(".cart_d6_d2_a1").css("color","#FF4400").css("text-decoration", "underline");
		}, function(){
			$(".cart_d6_d2_a1").css("color","#9C9C9C").css("text-decoration", "none");
		});
	});
	
	$(function(){
		$(".cart_d4_d2_d7_a1_jquery1").hover(function(){
			$(".cart_d4_d2_d7_a1_jquery1").css("color","#FF4400").css("text-decoration", "underline");
		}, function(){
			$(".cart_d4_d2_d7_a1_jquery1").css("color","#3C3C3C").css("text-decoration", "none");
		});
	});
	
	$(function(){
		$(".cart_d4_d2_d7_a1_jquery2").hover(function(){
			$(".cart_d4_d2_d7_a1_jquery2").css("color","#FF4400").css("text-decoration", "underline");
		}, function(){
			$(".cart_d4_d2_d7_a1_jquery2").css("color","#3C3C3C").css("text-decoration", "none");
		});
	});
</script>

</head>
<body id="cart_body">
	<div class="cart_d1">
		<div class="cart_d1_d1">
			尊敬的：用户昵称 您好!
		</div>
		<div class="cart_d1_d2">
			<ul class="cart_d1_d2_ul1">
				<li>光光网首页</li>
				<li>|</li>
				<li>我的订单</li>
				<li>|</li>
				<li>购物车</li>
				<li>|</li>
				<li>收藏夹</li>
				<li>|</li>
				<li>商品分类</li>
				<li>|</li>
				<li>免费开店</li>
				<li>|</li>
				<li>联系客服</li>
				<li>|</li>
				<li>网站导航</li>
			</ul>
		</div>
	</div>
	
	<!--板块2-->
    <div class="contenttwo" style="margin-left: 13%; margin-right: 13%;">
		<img src="images/logo.jpg" height="60px" width="240px" align="left">
		<div class="search bar7">
			<form id="contenttwo_form">
				<input class="contenttwo_input" type="text" placeholder="欢迎来到光光网...">
				<button class="contenttwo_button" type="submit"></button>
			</form>
		</div>
	</div>
	
	<hr class="cart_hr1" />
	
	<div class="cart_d3">
		我的购物车
	</div>
	
	<hr class="cart_hr1" />
	
	<div class="cart_d4">
		<div class="cart_d4_d1">
			<div class="cart_d4_d1_d1">
				商品信息
			</div>
			<div class="cart_d4_d1_d2">
				单价
			</div>
			<div class="cart_d4_d1_d2">
				数量
			</div>
			<div class="cart_d4_d1_d2">
				金额
			</div>
			<div class="cart_d4_d1_d3">
				操作
			</div>
		</div>
		<div class="cart_d4_d2">
			<div class="cart_d4_d2_d1">
				<img class="cart_d4_d2_d1_img1" alt="商品图片" src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="70%">
			</div>
			
			<div class="cart_d4_d2_d2">
				<div class="cart_d4_d2_d2_d1">
					男装外套男装外套男装外套男装外套男装外套男装外套男装外套男装外套
				</div>
			</div>
			
			<div class="cart_d4_d2_d3">
				颜色：红
			</div>
			
			<div class="cart_d4_d2_d4">
				<font class="cart_d4_d2_d4_font1">¥100.00</font><br />
				<font class="cart_d4_d2_d4_font2">¥100.00</font>
			</div>
			
			<div class="cart_d4_d2_d5">
				<div class="cart_d4_d2_d5_d1">
					<div class="cart_d4_d2_d5_d1_d1">
						<a class="cart_d4_d2_d5_d1_d1_a1" href="#">-</a>
					</div>
					<input class="cart_d4_d2_d5_d1_input" type="text" value="10"/>
					<div class="cart_d4_d2_d5_d1_d2">
						<a class="cart_d4_d2_d5_d1_d2_a1" href="#">+</a>
					</div>
				</div>
			</div>
			
			<div class="cart_d4_d2_d6">
				¥1000000.00
			</div>
			
			<div class="cart_d4_d2_d7">
				<a class="cart_d4_d2_d7_a1 cart_d4_d2_d7_a1_jquery1" href="">移入收藏夹</a><br />
				<a class="cart_d4_d2_d7_a1 cart_d4_d2_d7_a1_jquery2" href="">移除</a>
			</div>
			
		</div>
		
		<div class="cart_d4_d2">
			<div class="cart_d4_d2_d1">
				<img class="cart_d4_d2_d1_img1" alt="商品图片" src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="70%">
			</div>
			
			<div class="cart_d4_d2_d2">
				<div class="cart_d4_d2_d2_d1">
					男装外套男装外套男装外套男装外套男装外套男装外套男装外套男装外套
				</div>
			</div>
			
			<div class="cart_d4_d2_d3">
				颜色：红
			</div>
			
			<div class="cart_d4_d2_d4">
				<font class="cart_d4_d2_d4_font1">¥100.00</font><br />
				<font class="cart_d4_d2_d4_font2">¥100.00</font>
			</div>
			
			<div class="cart_d4_d2_d5">
				<div class="cart_d4_d2_d5_d1">
					<div class="cart_d4_d2_d5_d1_d1">
						<a class="cart_d4_d2_d5_d1_d1_a1" href="#">-</a>
					</div>
					<input class="cart_d4_d2_d5_d1_input" type="text" value="10"/>
					<div class="cart_d4_d2_d5_d1_d2">
						<a class="cart_d4_d2_d5_d1_d2_a1" href="#">+</a>
					</div>
				</div>
			</div>
			
			<div class="cart_d4_d2_d6">
				¥1000000.00
			</div>
			
			<div class="cart_d4_d2_d7">
				<a class="cart_d4_d2_d7_a1 cart_d4_d2_d7_a1_jquery1" href="">移入收藏夹</a><br />
				<a class="cart_d4_d2_d7_a1 cart_d4_d2_d7_a1_jquery2" href="">移除</a>
			</div>
			
		</div>
		
	</div>
	<div class="cart_d5">
		合计 (不含运费)：<font class="cart_d5_font1">¥ 0.00</font>
	</div>
	<div class="cart_d6">
		<div class="cart_d6_d1">
			<a class="cart_d6_d1_a1" href="">提交订单</a>
		</div>
		<div class="cart_d6_d2">
			<a class="cart_d6_d2_a1" href="">清空购物车</a>
		</div>
	</div>
	
	<%@ include file="menu_bottom.jsp" %>

</body>
</html>