<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath }/css/menu_bottom.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var titles = $("div.title >a");
		var conts = $("div.content >div.aa");
		titles.first().addClass("now").siblings().removeClass("now"); //默认第一个标题添加样式
		conts.first().show().nextAll().hide(); //默认第一个内容显示，其他隐藏
		titles.each(function( index ){
			$(this).click(function(){
				$(this).addClass("now").siblings().removeClass("now"); //给鼠标悬浮上的第index个（即当前）标题添加样式
				conts.eq(index).show().siblings().hide(); //第index个内容显示，其他隐藏
			});
		});
	});
	
	window.onload=function(){ 
		setInterval(function(){ 
		var date=new Date(); 
		var year=date.getFullYear(); //获取当前年份
		var mon=date.getMonth()+1; //获取当前月份
		var da=date.getDate(); //获取当前日
		var day=date.getDay(); //获取当前星期几
		var h=date.getHours(); //获取小时
		var m=date.getMinutes(); //获取分钟
		var s=date.getSeconds(); //获取秒
		var d=document.getElementById('Date'); 
		d.innerHTML=year+' 年 '+mon+' 月 '+da+' 日&emsp;'+'星期 '+day+'&emsp;'+h+':'+m+':'+s; },1000)
	}

	$(function(){
		$(".fanhui").hover(function(){
			$(this).addClass("fanhuistyle");
		}, function(){
			 $(this).removeClass("fanhuistyle");
		})
	})	
</script>
<style type="text/css">

	.fanhui{
		color: #000;
	}
	
	.fanhuistyle{
		color: #FF8F59;
		font-weight: bold;
	}
	
</style>
</head>
<body style="margin: 0px; padding: 0px; background: #F4F4F4;">
	<div style="background-color: rgba(169,169,169,0.3); width: 100%; height: 100%; overflow: hidden; font-size: 12px; padding: 0.3% 0%;">
		<div style="width: 42%; float: left; padding-left: 8%;">
			<font color="#000000" id="Date">当前时间</font>
		</div>
		<div style="width: 42%; float: left; text-align: right; padding-right: 8%">
			<div class="fanhui" onclick="history.go(-1)" style="cursor: pointer;">
				返回
			</div>
		</div>
	</div>
	<div style="text-align: center; color: #FF5000; font-size: 30px; font-weight: bold; margin-top: 1%;">
		用户指南
	</div>
	
	<div style="text-align: center; color: #8E8E8E; font-size: 14px; margin-top: 0.5%; margin-bottom: 1%;">
		本光光商城致力于打造全网商品最低价、服务质量有保证的优秀电商购物平台。
	</div>
	
	<div style="background-color: rgba(255,0,0,0.05); border-radius: 20px; margin: 0% 15%; padding: 0.2% 0% 0.2% 1%;">
		<ul>
			<li style="font-size: 18px; font-weight: bold; color: #4F4F4F">用户操作</li>
			<li style="list-style: none; font-size: 14px; color: #6C6C6C;">
				<ul>
					<li>用户若没有光光账号，则可以在主页免费注册账号，拥有光光账号的账户可以使用此账号进行登录。</li>
					<li>用户登录可以在我的主页进行查看信息、实名认证、修改密码等管理自己账户的操作。</li>
				</ul>
			</li>
			
			<li style="font-size: 18px; font-weight: bold; color: #4F4F4F;">商品操作</li>
			<li style="list-style: none; font-size: 14px; color: #6C6C6C;">
				<ul>
					<li>用户登录光光商城后，可以对喜欢的商品、店铺进行收藏，方便以后查找。</li>
					<li>用户登录后可以把喜欢的商品进行添加购物车、立即购买。</li>
					<li>用户添加进购物车的商品可以进行收藏、移除、提交订单等操作。</li>
					<li>用户提交订单的商品可以在我的订单中查看订单的状态并进行相应的操作</li>
				</ul>
			</li>
			
			<li style="font-size: 18px; font-weight: bold; color: #4F4F4F;">支付操作</li>
			<li style="list-style: none; font-size: 14px; color: #6C6C6C;">
				<ul>
					<li>本光光商城支持银行卡及支付宝等支付平台进行付款。</li>
				</ul>
			</li>
			
			<li style="font-size: 18px; font-weight: bold; color: #4F4F4F;">店铺操作</li>
			<li style="list-style: none; font-size: 14px; color: #6C6C6C;">
				<ul>
					<li>本光光商城热烈欢迎各位广大的朋友前来免费开店。</li>
					<li>对已经注册本逛逛商城的用户支持免费开店。</li>
					<li>开店成功可以出售各种在法律道德允许范围内的各种商品。</li>
				</ul>
			</li>
		</ul>
	</div>
	<%@ include file="index_menu_bottom.jsp" %>
</body>
</html>