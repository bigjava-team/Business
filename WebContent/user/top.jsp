<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.1.1.min.js">
</script>
<script type="text/javascript">
	function remove() {
		window.location.href = "User_close.action";
	}
	
	function collect() {
		var username = '${loginUser.username }';
		if (username == null || username == "") {
			window.location.href="collectProduct_queryUserCollectProduct?method=post";
		} else {
			window.location.href="collectProduct_queryUserCollectProduct?method=post&loginUser.username="+username+"&paging.presentPage=0";
		}
	}
</script>

<style>
.content {
	width: 100%;
	height: 33px;
	line-height: 33px;
	font-size: 14px;
}

.wenzikuang2 {
	float: left;
	margin-right: 3%;
}

.content a {
	text-decoration: none;
	color: #2F4F4F;
}

.content a:hover {
	color: #FF8300;
}
</style>
<!--板块1-->
<div class="content" style="background: #F0F0F0;">
	<div style="float: left; width: 20%; margin-left: 8%">
		<div class="wenzikuang">中国大陆&emsp; 欢迎您：${loginUser.username }</div>

	</div>

	<div style="float: left; margin-left:31%; width: 40%;">
		
		<div class="wenzikuang2">
			<a href="User_skipIndex.action?method=post&loginUser.username=${loginUser.username }">我的光光 </a>
		</div>
		<div class="wenzikuang2">
			<s:if test='loginUser.username != null && loginUser.username != ""'>
				<a
					href="User_gotoUserIndex.action?method=post&loginUser.username=${loginUser.username }">我的主页</a>
			</s:if>
		</div>
		<div class="wenzikuang2">
			<s:if test='loginUser.username != null && loginUser.username != ""'>
				<a href="Merchant_gotoMerchant.action?method=post&loginUser.username=${loginUser.username }">我的店铺</a>
			</s:if>
		</div>

		<div class="wenzikuang2">
			<a
				href="orderitem_queryUserOrderitem?method=post&loginUser.username=${loginUser.username }&paging.presentPage=0">购物车</a>
		</div>
		<div class="wenzikuang2">
			<a href="javascript:;" onclick="collect()">收藏夹</a>
		</div>
		<div class="wenzikuang2">
				<a href="MerchantProduct_userGotoMerchant.action?method=post&loginUser.username=${loginUser.username }">店铺后台管理</a>
		</div> 
		<div class="wenzikuang2">
			<s:if test='loginUser.username != null && loginUser.username != ""'>
				<a href="javascript:;" onclick="remove()">退出</a>
			</s:if>
		</div>
	</div>
</div>
