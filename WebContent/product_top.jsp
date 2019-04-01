<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
	<!--板块1-->
	<div class="contentone">
		<div class=wenziz>
			中国大陆 
			<s:if test="session.loginUser != null">
				欢迎您：${session.loginUser.username};
				<a href="">退出</a>
			</s:if>
			<s:else >
				<a href="user/login.jsp">亲，请登录</a> 
				<a href="user/Save.jsp">免费注册</a>
			</s:else>
		</div>
		
		
		<div class=wenziz2>
			<a>购物车</a> 
			<a>收藏夹</a> 
			<a>商品分类</a>
			<a>卖家中心</a> 
		</div>
	</div>
	
	<!--板块2-->
    <div class="contenttwo">
		<img src="images/logo.jpg" height="60px" width="240px" align="left">
		<img alt="" src="images/1 (11).png" height="50px" width="520px" align="left">
		<div class="search bar7">
			<form id="contenttwo_form">
				<input class="contenttwo_input" type="text" placeholder="欢迎来到光光网...">
				<button class="contenttwo_button" type="submit"></button>
			</form>
		</div>
	</div>