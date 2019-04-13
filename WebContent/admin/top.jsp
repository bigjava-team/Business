<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript"> 
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
	d.innerHTML=year+' 年 '+mon+' 月 '+da+' 日&emsp;'+'星期 '+day+'&emsp;'+h+':'+m+':'+s; },1000) }

	$(function(){
		$(".tuichu").hover(function(){
			$(this).addClass("addjQuery");
		}, function(){
			 $(this).removeClass("addjQuery");
		})
	})	
</script>

<style type="text/css">

	.tuichu{
		color: #4F4F4F;
		text-decoration: none;
	}
	
	.addjQuery{
		color: #FF8300;
	}
</style>

</head>
<body id="home_top_body">
	<div style="height: 78px;">
		<img alt="光光商城管理图片" src="${pageContext.request.contextPath }/images/home_top.jpg">
	</div>
	
	<div style="background: #E6E6E6; width: 100%; height: 26px;">
	
		<div style="width: 300px;  margin-top:8px; float: left">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<font color="#000000" id="Date"></font>
		</div>
		<div style="margin-left:59%; margin-top:6px; width: 19%; line-height:18px; height:18px; background: #F0F0F0; float: left; border-radius: 7px;">
			<div style="float: left; width: 85%;">&emsp;&emsp;欢迎您管理员&nbsp;:&nbsp;${sessionScope.loginUser.username }hfja管理员用户hfj管理员用</div> <div style="float: right; margin-right: 3%;"><a class="tuichu" href="#">退出</a></div>
		</div>
		
	</div>
	
</body>
</html>