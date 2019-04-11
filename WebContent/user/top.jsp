<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>	
<style>
.contentone{
width: 100%;
	padding: 7px 1% 7px 6%;
}
.wenzikuang{
	float:left;
	margin-left: 3%;
}
.wenzikuang2{
	float:right;
	margin-right: 3%;
}
.contentone a{
	text-decoration: none;
	color:#2F4F4F;
}
.contentone a:hover{
	color:#F08080;
}
</style>
	<!--板块1-->
	<div class="contentone" style="padding-bottom: 0.6%;padding-top: 0.6%;background: #F0F0F0; ">
		<div class="wenziz" style="float:left;width: 27%">
		<div class="wenzikuang">
			中国大陆  欢迎您：${loginUser.username }
		</div>
			
		</div>
		
		<div class="wenziz2" style="float:right;width:35%; text-align: right;margin-right: 12%;">
		
		<div class="wenzikuang2">
			<s:if test='loginUser.username != null && loginUser.username != ""'>
				<a href="#" onclick="remove()">退出</a>
			</s:if>
		</div>
		<div class="wenzikuang2">
			<a>卖家中心</a> 
		</div>
		<div class="wenzikuang2">
			<a>商品分类</a>
		</div>
		<div class="wenzikuang2">
			<a href="javascript:;">收藏夹</a>
		</div> 
		<div class="wenzikuang2">
			<a href="orderitem_queryUserOrderitem?method=post&loginUser.username=${loginUser.username }&paging.presentPage=0">购物车</a> 
		</div>
		<div class="wenzikuang2">
			<s:if test='loginUser.username != null && loginUser.username != ""'>
				<a href="Merchant_gotoMerchant.action">我的店铺</a>
			</s:if>
		</div>
		<div class="wenzikuang2">
			<s:if test='loginUser.username != null && loginUser.username != ""'>
				<a href="User_gotoUserIndex.action?method=post&loginUser.username=${loginUser.username }">我的主页</a>
			</s:if>
		</div>
		<div style="clear: both;"></div>
		</div>
		<div style="clear: both;"></div>
	</div>
