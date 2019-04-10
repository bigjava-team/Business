<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>	

	<!--板块1-->
	<div class="contentone">
		<div class="wenziz">
			中国大陆 
			<s:if test='loginUser.username != null && loginUser.username != ""'>
					欢迎您：${loginUser.username };
			</s:if>
			<s:else >
				<a href="user/login.jsp">亲，请登录</a> 
				<a href="user/Save.jsp">免费注册</a>
			</s:else>
		</div>
		
		
		<div class="wenziz2" style="margin-left:50%; width:50%;">
			<s:if test='loginUser.username != null && loginUser.username != ""'>
				<a href="User_gotoUserIndex.action?method=post&loginUser.username=${loginUser.username }">我的主页</a>
			</s:if>
			
			<s:if test='loginUser.username != null && loginUser.username != ""'>
				<a href="Merchant_gotoMerchant.action">我的店铺</a>
			</s:if>
			<a href="orderitem_queryUserOrderitem?method=post&loginUser.username=${loginUser.username }&paging.presentPage=0">购物车</a> 
			<a href="javascript:;">收藏夹</a> 
			<a>商品分类</a>
			<a>卖家中心</a> 
			<s:if test='loginUser.username != null && loginUser.username != ""'>
				<a href="#" onclick="remove()">退出</a>
			</s:if>
		</div>
	</div>
