<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>收藏店铺页面</title>
<style type="text/css">
.wenzi1 {
	font-size: 35px;
	color: white;
	font-family: "Times New Roman", Georgia, Serif;
}

.wenzi2 {
	color: white;
	font-family: Georgia, serif;
	font-size: 25px;
}

.dianpushouchang_div {
	float: left;
	width: 10%;
	text-align: center;
	height: 60px;
	line-height: 60px;
}
.dianpushouchang_div a{
	text-decoration: none;
}
.dianpushouchang_div2{
	float:left;
	width: 30%;
	text-align: center;
}
.dianpushouchang_a a{
	text-decoration: none;
	color:#B15BFF;
}
.dianpushouchang_a a:hover{
	color:#9AFF02;
}
</style>
<script type="text/javascript">
	function show(id) {
		var div1 =document.getElementById("div1");
		div1.style.background = "rgba(0, 0, 255,0.1)";
	}
	
	function back(id) {
		var div1 =document.getElementById("div1");
		div1.style.background = " #F40";
	}

	function queryCollectProduct() {
		var username = '${loginUser.username }';
		window.location.href="collectProduct_queryUserCollectProduct?method=post&loginUser.username="+username+"&paging.presentPage=0";
	}
	
	function queryCollectMerchant() {
		var username = '${loginUser.username }';
		window.location.href="collectMerchant_queryUserCollectMerchant?method=post&loginUser.username="+username+"&paging.presentPage=0";
	}
</script>
</head>
<body style="padding: 0; margin: 0;">

	
		<%@include file="top.jsp"%>
	
	<div style="background-color: #F40; width: 100%; height: 60px; line-height: 60px;">
		<div style="margin-left: 14%; float: left;">
			<font class="wenzi1">光光</font> <font class="wenzi2">收藏夹</font>
		</div>
			
		<div class="dianpushouchang_div" id="div1" style="margin-left: 46%"onmouseover="show()" onmouseout="back()">
			<a href="javascript:;" onclick="queryCollectProduct()"><font class="wenzi2">宝贝收藏</font></a>
		</div>
	
		<div class="dianpushouchang_div" id="div2" style="background:rgba(0, 0, 255,0.1)">
			<a href="javascript:;" onclick="queryCollectMerchant()"><font class="wenzi2">店铺收藏</font></a>
		</div>
		
		<div style="clear: both;"></div>
	</div>
	<div style="width: 74%;margin: 0 auto;border-bottom:#e5e5e5 1px solid;padding-bottom: 1%; height: 100%;">
		<div style="border-bottom:#e5e5e5 2px solid;height: 20%;line-height: 46px;width: 100%;">
			<div style="width:41%;color: #f40;border-bottom: #ff4200 2px solid;">
				收藏的店铺#后台收藏店铺量
			</div>
		</div>
		
		<s:iterator value="listCollectMerchant" var="listCollectMerchants">
			<div style="width: 100%; height: 100%; padding-top: 1.5%;padding-bottom: 0.4%;">
				<div class="dianpushouchang_a" style="float:left;width: 22%;font-family: Microsoft JhengHei;">
					<%-- <img src="${fileImageAction.urlImage }${listCollectMerchants.merchant.m_image}" /> --%><br/>${listCollectMerchants.merchant.m_name }
					<table style="text-align: center;width: 100%">
						<tr>
							<td></td>
							<td><font color="orange">店铺评价</font></td>
							<td></td>
						</tr>
						<tr>
							<td>描述</td>
							<td>服务</td>
							<td>物流</td>
						</tr>
						<tr>
							<td><font color="red">#店铺评分</font></td>
							<td><font color="red">#店铺评分</font></td>
							<td><font color="red">#店铺评分</font></td>
						</tr>
					</table>
					<div style="width: 100%;margin-top: 3%">
						<div style="float: left">
							<a href="#">进店逛逛</a>
						</div>
						<div style="float: right">
							<a href="#">取消收藏</a>
						</div>
						<div style="clear: both;"></div>
					</div>
				</div>
					
				<div style="float:left;width:74%; height: 200px; margin-left: 4%;">
					<s:iterator value="listQueryListProduct" var="ls">
						<s:iterator value="#ls.listProduct" var="listProducts">
						<div class="dianpushouchang_div2" style="width: 23%; height: 100%;">
							<div style="border: #eee 1px solid; height: 200px; width: 99%; height: 75%;" >
								<img alt="" src="${fileImageAction.urlImage }${listProducts.p_image}" height="70%">
							</div>
							${listProducts.p_name }<br/>
							<font color="red">${listProducts.p_price }</font><br/>
						</div>
						</s:iterator>
					</s:iterator>
					<div style="clear: both;"></div>
				</div>
				<div style="clear: both;"></div>
			</div>
		</s:iterator>
	</div>
	<div>
	<%@include file="Foot.jsp"%>
	</div>
</body>
</html>