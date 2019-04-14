<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>订单页面</title>
<link href="css/cart.css" rel="stylesheet" type="text/css">
<link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="css/menu_bottom.css" rel="stylesheet" type="text/css">
<style type="text/css">
	.buy:hover {
		cursor: pointer;
	}
</style>
<script type="text/javascript" src="js/jquery-3.1.1.min.js" ></script>
<script type="text/javascript">
	function payOrders() {
		var productName = $(".cart_d4_d2_d2_d1").text();// 商品名称
		var total = '${orders.total }';// 支付的金额
		var orderNumber = '${orders.orderNumber }';// 订单的编号
		var addrId = $("input[name='dizhi']:checked").val();
		if (addrId == null || addrId == "") {
			alert("请选择收货地址");
			return false;
		}
		var username = "${loginUser.username }";
		window.location.href = "paymentOrders_payOrders?method=post&out_trade_no="+orderNumber+"&total_amount="+total+"&subject="+productName+"&addr.a_id="+addrId+"&loginUser.username="+username;
	}
</script>
</head>
<body id="cart_body">
	<div class="cart_d1">
		<div class="cart_d1_d1">
			尊敬的：${loginUser.username }您好!
		</div>
		<div class="cart_d1_d2">
			<ul class="cart_d1_d2_ul1">
				<li>&nbsp;&nbsp;<a href="User_gotoUserIndex.action?method=post&loginUser.username=${loginUser.username }" class="cart_d1_d2_ul1_a">我的主页</a></li>
				<li style="color: #D0D0D0;">&nbsp;</li>
				<li><a href="orders_queryUserAllOrders?method=post&loginUser.username=${loginUser.username }&paging.presenetPage=0" class="cart_d1_d2_ul1_a">我的订单</a></li>
				<li style="color: #D0D0D0;">&nbsp;</li>
				<li><a href="orderitem_queryUserOrderitem?method=post&loginUser.username=${loginUser.username }&paging.presentPage=0" class="cart_d1_d2_ul1_a">购物车</a></li>
				<li style="color: #D0D0D0;">&nbsp;</li>
				<li><a href="javascript:;" class="cart_d1_d2_ul1_a">收藏夹</a></li>
				<li style="color: #D0D0D0;">&nbsp;</li>
				<li><a href="#" class="cart_d1_d2_ul1_a">商品分类</a></li>
				<li style="color: #D0D0D0;">&nbsp;</li>
				<li><a href="User_SetUpShop.action?method=post&loginUser.username=${loginUser.username }" class="cart_d1_d2_ul1_a">我要开店</a></li>
				<li style="color: #D0D0D0;">&nbsp;</li>
				<li><a href="#" class="cart_d1_d2_ul1_a" style="text-decoration: none;"  onclick="remove()">退出</a></li>
			</ul>
		</div>
	</div>
	
	<!--板块2-->
    <div class="contenttwo" style="margin-left: 13%; margin-right: 13%;">
		<img src="images/logo.jpg" height="60px" width="240px" align="left">
		<div class="search bar7">
			<form id="contenttwo_form">
				<input class="contenttwo_input" type="text" placeholder="欢迎来到光光网...">
				<button class="contenttwo_button" type="submit"></button>
			</form>
		</div>
	</div>
	
	<hr class="cart_hr1" />
	
	<div class="cart_d3 myOrderList_d1">
		确认订单信息
	</div>
	
	<div class="cart_d4 myOrderList_d2">
		<div class="myOrderList_d2_d1">
			<div class="myOrderList_d2_d1_d1 order_myOrderList_d2_d1_d1">
				<font class="myOrderList_d2_d1_d1_font1">${orders.ordertime }</font> &nbsp;订单编号：${orders.orderNumber }
			</div>
			
		</div>
	
		<div class="cart_d4_d1 myOrderList_d2_d2">
			<div class="cart_d4_d1_d1 myOrderList_d2_d2_d1">
				商品信息
			</div>
			<div class="cart_d4_d1_d2 myOrderList_d2_d2_d2">
				价格
			</div>
			<div class="cart_d4_d1_d2 myOrderList_d2_d2_d2">
				数量
			</div>
			<div class="cart_d4_d1_d2 myOrderList_d2_d2_d2">
				小计
			</div>
		</div>
		<s:iterator value="orders.setOrderItem" var="ordersitem">
			<div class="cart_d4_d2 myOrderList_d2_d3">
				<div class="cart_d4_d2_d1 myOrderList_d2_d3_d1">
					<img class="cart_d4_d2_d1_img1" alt="商品图片" src="${fileImageAction.urlImage }${ordersitem.product.p_image }" width="50%">
				</div>
				
				<div class="cart_d4_d2_d2 myOrderList_d2_d3_d2">
					<div class="cart_d4_d2_d2_d1">
						${ordersitem.product.p_name }
					</div>
				</div>
				
				<div class="cart_d4_d2_d3 myOrderList_d2_d3_d3">
					颜色：红
				</div>
				
				<div class="cart_d4_d2_d4 myOrderList_d2_d3_d3">
					<font class="cart_d4_d2_d4_font2">¥${ordersitem.product.p_price }</font>
				</div>
				
				<div class="cart_d4_d2_d5 myOrderList_d2_d3_d3">
					${ordersitem.count }
				</div>
				
				<div class="cart_d4_d2_d6 myOrderList_d2_d3_d3">
					¥${ordersitem.subtotal }
				</div>
				
			</div>
		</s:iterator>
		<div style="border-top: 1px solid #8082FF; border-bottom: 1px solid #8082FF; margin: 0px; padding: 0px; border-top-style: dotted; border-bottom-style: dotted; color: #333333;">
			<div style="background: #F2F7FF; border: 1px solid #FFF; font-size: 14px; padding-top: 7px; padding-bottom: 7px; padding-left: 4%;">
				运送方式：&emsp; 普通配送 快递 免邮
			</div>
			
			<div style="background: #F2F7FF; border: 1px solid #FFF; font-size: 14px; padding-top: 7px; padding-bottom: 7px; padding-left: 4%;">
				运费险：&emsp;&emsp; <font style="background: #53FF53">运费险</font> 卖家送,确认收货前退货可赔
			</div>
			
			<div style="background: #F2F7FF; border: 1px solid #FFF; font-size: 14px; padding-top: 10px; padding-bottom: 10px; padding-left: 4%; text-align: right; padding-right: 1%;">
				商品金额(免运费)：<font style="color: #FF4400; font-size: 18px; font-weight: bold;">¥${orders.total }</font>
			</div>
		</div>
		
	</div>
	
	<!-- <div style="margin: 0px 13%;">
		<div style="width: 50%; float: left;">
			确认收货地址
		</div>
		<div style="width: 50%; float: left;">
			管理收货地址
		</div>
	</div>
	
	<div style="margin: 1px 13%; background: yellow;">
		jiangxi
	</div> -->
	
	<hr class="cart_hr1" />
	
	<div class="cart_d3 myOrderList_d1">
		<div style="margin-left: 13%; margin-right: 13%; padding-left: 5%;">
			确认收货地址
			<div style="text-align: right; float: right; font-size: 12px; margin-top: 4px;">
				<a href="#" style="text-decoration: none;">管理收货地址</a>
			</div>
		</div>
	</div>
	
	<div class="cart_d4 myOrderList_d2">
		<div class="myOrderList_d2_d1">
			<div style="color: #FF4400; margin-left: 2%; font-weight: bold;">
				寄送至：
			</div>
			<div style="color: #3C3C3C; margin-left: 8%; padding-bottom: 8px;">
				<s:iterator value="listAddr" var="listAddrs">
					<input type="radio" name="dizhi" value="${listAddrs.a_id }">${listAddrs.address } (${listAddrs.a_name } 收) ${listAddrs.a_phone }<br />
				</s:iterator>
			</div>
		</div>
	</div>
	
	<hr class="cart_hr1" />
	
	<div class="cart_d3 myOrderList_d1">
		<div style="margin-left: 13%; margin-right: 13%;">
			订单支付
		</div>
	</div>
	
	<div class="cart_d4 myOrderList_d2">
		<div style="width: 50%; float: left; margin-bottom: 10px; padding-bottom: 10px; border: 1px solid #CCCCCC;">
			<div style="color: #FF4400; margin-left: 2%; font-weight: bold; font-size: 16px; margin-top: 5px; margin-bottom: 10px;">
				选择银行：
			</div>
			<div style="color: #3C3C3C; margin: 0%;">
				<font style="font-size: 14px;"><input type="radio" name="pd_FrpId" value="ICBC-NET-B2C" checked="checked"/>工商银行</font>
				<img src="${pageContext.request.contextPath}/bank_img/icbc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
				<font style="font-size: 14px;"><input type="radio" name="pd_FrpId" value="BOC-NET-B2C"/>中国银行</font>
				<img src="${pageContext.request.contextPath}/bank_img/bc.bmp" align="middle"/>
				<br/><br/>
				<font style="font-size: 14px;"><input type="radio" name="pd_FrpId" value="ABC-NET-B2C"/>农业银行</font>
				<img src="${pageContext.request.contextPath}/bank_img/abc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
				<font style="font-size: 14px;"><input type="radio" name="pd_FrpId" value="BOCO-NET-B2C"/>交通银行</font>
				<img src="${pageContext.request.contextPath}/bank_img/bcc.bmp" align="middle"/>
				<br/><br/>
				<font style="font-size: 14px;"><input type="radio" name="pd_FrpId" value="PINGANBANK-NET"/>平安银行</font>
				<img src="${pageContext.request.contextPath}/bank_img/pingan.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
				<font style="font-size: 14px;"><input type="radio" name="pd_FrpId" value="CCB-NET-B2C"/>建设银行</font>
				<img src="${pageContext.request.contextPath}/bank_img/ccb.bmp" align="middle"/>
				<br/><br/>
				<font style="font-size: 14px;"><input type="radio" name="pd_FrpId" value="CEB-NET-B2C"/>光大银行</font>
				<img src="${pageContext.request.contextPath}/bank_img/guangda.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
				<font style="font-size: 14px;"><input type="radio" name="pd_FrpId" value="CMBCHINA-NET-B2C"/>招商银行</font>
				<img src="${pageContext.request.contextPath}/bank_img/cmb.bmp" align="middle"/>
			</div>
		</div>
		
		<div style="margin-left: -1px; width: 50%; height: 245px; float: left; border: 1px solid #CCCCCC;">
			<font style="font-size: 14px;"><input type="radio" name="pd_FrpId" value="CMBCHINA-NET-B2C"/>支付宝</font>
		</div>
	</div>
	
	<hr class="cart_hr1" />
	
	<div class="cart_d3 myOrderList_d1">
		<div style="margin-left: 13%; margin-right: 13%; background: red;">
			<div style="border: 1px solid #FF4400; overflow: hidden; display: inline; text-align: right; float: right; padding: 20px 2%;">
				<div>
					<font style="font-size: 14px; font-weight: bold;">实付款：</font>
					<font style="font-size: 24px; font-weight: bold;">¥${orders.total }</font>
				</div>
				<div>
					<font style="font-size: 14px; font-weight: bold;">寄送至：</font>
					<font style="font-size: 14px; font-weight: normal;">江西省 南昌市 南昌县 昌东镇 紫阳大道318号江西制造职业技术学院</font>
				</div>
				<div>
					<font style="font-size: 14px; font-weight: bold;">收货人：</font>
					<font style="font-size: 14px; font-weight: normal;">${orders.user.username } ${orders.user.phone } </font>
				</div>
			</div>
		</div>
	</div>
	
	
	<hr class="cart_hr1" style="margin-bottom: 0px; padding-top: 0px; border-top:1px double #FFFFFF;" />
	
	<div class="cart_d3 myOrderList_d1" style="padding: 8px 0px 8px 52%; margin-left: 13%; margin-right: 13%; margin-top: -1px; text-align: right;">
		<div style="float: left; font-size: 14px;">
			<a href="" style="text-decoration: none;">☚ 返回购物车</a>
		</div>
		<div onclick="payOrders()">
			<font style="background: #FF4400; padding: 8px 14%; color: #FCFCFC" class="buy">提交订单</font>
		</div>
	</div>
	
	<div style="margin-left: 13%; margin-right: 13%; text-align: right; font-size: 14px; color: #3C3C3C; margin-bottom: 50px;">
		<font style="color: #FF4400; font-size: 18px;">♤</font> 若价格变动，请在提交订单后联系卖家改价，并查看已买到的宝贝
	</div>
	
	
	<%@ include file="menu_bottom.jsp" %>
	
</body>
</html>