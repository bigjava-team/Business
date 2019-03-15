<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>订单页面</title>
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
					<li  >生成订单成功</li>
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
							<input type="hidden" name="id" value="22"/>
							<img src=""/>
						</td>
						<td>
							<a target="_blank">男装</a>
						</td>
						<td>
							100
						</td>
						<td class="quantity" width="60">
							<input type="text" name="count" value="1" maxlength="4" onpaste="return false;"/>
						</td>
						<td width="140">
							<span class="subtotal">￥100</span>
						</td>
						<td>
							<a href="" class="delete">删除</a>
						</td>
					</tr>
				
				</tbody>
			</table>
			
			<dl id="giftItems" class="hidden" style="display: none;">
			</dl>
			
			<div class="total">
				<em id="promotion"></em>
				商品金额: <strong id="effectivePrice">￥100元</strong>
			</div>
			
			<form id="orderForm" action="./order_payOrder.action" method="post">
				<input type="hidden" name="order.oid" value=""/>
				<div class="span24">
					<p>
						收货地址：<input name="order.user.addr" type="text" value="" style="width:350px" />
							<br />
						收货人&nbsp;&nbsp;&nbsp;：<input name="order.user.username" type="text" value="" style="width:150px" />
							<br /> 
						联系方式：<input name="order.user.phone" type="text"value="" style="width:150px" />
					</p>
					<hr />
					<p>
						选择银行：<br/>
						<input type="radio" name="pd_FrpId" value="ICBC-NET-B2C" checked="checked"/>工商银行
						<img src="bank_image/icbc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="pd_FrpId" value="BOC-NET-B2C"/>中国银行
						<img src="bank_image/bc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="pd_FrpId" value="ABC-NET-B2C"/>农业银行
						<img src="bank_image/abc.bmp" align="middle"/>
						<br/>
						<input type="radio" name="pd_FrpId" value="BOCO-NET-B2C"/>交通银行
						<img src="bank_image/bcc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="pd_FrpId" value="PINGANBANK-NET"/>平安银行
						<img src="bank_image/pingan.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="pd_FrpId" value="CCB-NET-B2C"/>建设银行
						<img src="bank_image/ccb.bmp" align="middle"/>
						<br/>
						<input type="radio" name="pd_FrpId" value="CEB-NET-B2C"/>光大银行
						<img src="bank_image/guangda.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="pd_FrpId" value="CMBCHINA-NET-B2C"/>招商银行
						<img src="bank_image/cmb.bmp" align="middle"/>
					</p>
					<hr />
					<p style="text-align:right">
						<a href="javascript:document.getElementById('orderForm').submit();">
							<img src="images/finalbutton.gif" width="204" height="51" border="0" />
						</a>
					</p>
				</div>
			</form>
		</div>
	</div>

	<%@ include file="menu_bottom.jsp" %>

</body>
</html>