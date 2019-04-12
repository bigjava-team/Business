<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>

	<script type="text/javascript">
	function remove() {
		window.location.href = "User_close.action";
	}
	</script>
	<style type="text/css" >
		a {
			text-decoration: none;
		}
	</style>
	<!--板块1-->
	<div class="contentone">
		<div class=wenziz>
			中国大陆 
			<s:if test='loginUser.username != null && loginUser.username != ""'>
					欢迎您：${loginUser.username };
			</s:if>
			<s:else >
				<a href="user/login.jsp">亲，请登录</a> 
				<a href="user/Save.jsp">免费注册</a>
			</s:else>
		</div>
		
		
		<div class=wenziz2>
				<a href="User_skipIndex.action?method=post&loginUser.username=${loginUser.username }">我的光光</a>
			<s:if test='loginUser.username != null && loginUser.username != ""'>
				<a href="User_gotoUserIndex.action?method=post&loginUser.username=${loginUser.username }">我的主页</a>
			</s:if>
			
			<s:if test='loginUser.username != null && loginUser.username != ""'>
				<a href="Merchant_gotoMerchant.action?method=post&loginUser.username=${loginUser.username }">我的店铺</a>
			</s:if>
			<a href="orders_queryUserAllOrders?method=post&loginUser.username=${loginUser.username }&paging.presenetPage=0">我的订单</a> 
			<a href="orderitem_queryUserOrderitem?method=post&loginUser.username=${loginUser.username }&paging.presentPage=0">购物车</a> 
			<a href="javascript:;">收藏夹</a> 
			<a href="User_SetUpShop.action?method=post&loginUser.username=${loginUser.username }">我要开店</a> 
			<s:if test='loginUser.username != null && loginUser.username != ""'>
				<a href="#" onclick="remove()">退出</a>
			</s:if>
		</div>
	</div>
	
	<!--板块2-->
    <div class="contenttwo">
		<a href="index_showAll.action"><img src="${pageContext.request.contextPath }/images/logo.jpg" height="60px" width="240px" align="left"></a>
		<img alt="" src="${pageContext.request.contextPath }/images/1 (11).png" height="50px" width="520px" align="left">
		<div class="search bar7">
			<form id="contenttwo_form">
				<input class="contenttwo_input" type="text" placeholder="欢迎来到光光网...">
				<button class="contenttwo_button" type="submit"></button>
			</form>
		</div>
	</div>