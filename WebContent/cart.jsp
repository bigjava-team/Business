<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>购物车页面</title>
	<link href="css/cart.css" rel="stylesheet" type="text/css">
	<link href="css/common.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="container header">
		<div class="span5">
			<div class="logo">
				<img src="images/logo.jpg" alt="光光商城">
			</div>
		</div>
		
		<div class="span9">
			<div class="headerAd">
				<img src="images/header.jpg" width="320" height="50" alt="正品保障" title="正品保障">
			</div>
		</div>
		
		<%@ include file="menu_top.jsp" %>
		
	</div>
	
	<div class="container cart">
		<div class="span24">
			<div class="step step1">
				<ul>
					<li  class="current"></li>
					<li>我的购物车</li>
				</ul>
			</div>
			<table>
				<tbody>
					<tr>
						<th>图片</th>
						<th>商品</th>
						<th>价格</th>
						<th>数量</th>
						<th>小计</th>
						<th>操作</th>
					</tr>
					<tr>
						<td width="60">
							<input type="hidden" name="id" value="22">
							<img src="./image/dadonggua.jpg">
						</td>
						<td>
							<a target="_blank"> 有机蔬菜      大冬瓜...</a>
						</td>
						<td>
							￥298.00
						</td>
						<td class="quantity" width="60">
							1
						</td>
						<td width="140">
							<span class="subtotal">￥596.00</span>
						</td>
						<td>
							<a href="javascript:;" class="delete">删除</a>
						</td>
					</tr>
				</tbody>
			</table>
			<dl id="giftItems" class="hidden" style="display: none;">
			</dl>
			<div class="total">
				<em id="promotion">
				</em>
				<em>
					登录后确认是否享有优惠
				</em>
				赠送积分: <em id="effectivePoint">596</em>
				商品金额: <strong id="effectivePrice">￥596.00元</strong>
			</div>
			<div class="bottom">
				<a href="javascript:;" id="clear" class="clear">清空购物车</a>
				<a href="./会员登录.htm" id="submit" class="submit">提交订单</a>
			</div>
		</div>
	</div>
	
	<%@ include file="menu_bottom.jsp" %>
	
</body>
</html>