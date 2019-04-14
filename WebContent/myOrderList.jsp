<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的订单</title>
<link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="css/menu_bottom.css" rel="stylesheet" type="text/css">
<link href="css/cart.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		var jian = $(".cart_d4_d2_d5_d1_d1_a1").text();
		var jia = $(".cart_d4_d2_d5_d1_d2_a1").text();
		var input = $(".cart_d4_d2_d5_d1_input").val();
		$(".cart_d4_d2_d5_d1_d1_a1").click(function(){
			/* $(".cart_d4_d2_d5_d1_input").val(input * 1 - 1); */
			if (input > 1 ) {
				$(".cart_d4_d2_d5_d1_input").attr("value", input * 1 - 1);
			}
		})
	})
	
	
	$(function(){
		$(".cart_d1_d2_ul1 li a").hover(function(){
			$(this).addClass("addjQuery");
		}, function(){
			 $(this).removeClass("addjQuery");
		})
	})
</script>

<style type="text/css">
	
	.cart_d1_d2_ul1_a{
		text-decoration: none;
		color: #666666;
	}

	.addjQuery{
		color: #FF8300;
	}
</style>

</head>
<body id="cart_body">
	
	<div class="cart_d1">
		<div class="cart_d1_d1">
			尊敬的：${loginUser.username } 您好!
		</div>
		<div class="cart_d1_d2">
			<ul class="cart_d1_d2_ul1">
				<li><a href="User_gotoUserIndex.action?method=post&loginUser.username=${loginUser.username }" class="cart_d1_d2_ul1_a">我的主页</a></li>
				<li style="color: #D0D0D0;">&nbsp;|&nbsp;</li>
				<li><a href="orders_queryUserAllOrders?method=post&loginUser.username=${loginUser.username }&paging.presenetPage=0" class="cart_d1_d2_ul1_a">我的订单</a></li>
				<li style="color: #D0D0D0;">&nbsp;|&nbsp;</li>
				<li><a href="orderitem_queryUserOrderitem?method=post&loginUser.username=${loginUser.username }&paging.presentPage=0" class="cart_d1_d2_ul1_a">购物车</a></li>
				<li style="color: #D0D0D0;">&nbsp;|&nbsp;</li>
				<li><a href="javascript:;" class="cart_d1_d2_ul1_a">收藏夹</a></li>
				<li style="color: #D0D0D0;">&nbsp;|&nbsp;</li>
				<li><a href="#" class="cart_d1_d2_ul1_a">商品分类</a></li>
				<li style="color: #D0D0D0;">&nbsp;|&nbsp;</li>
				<li><a href="User_SetUpShop.action?method=post&loginUser.username=${loginUser.username }" class="cart_d1_d2_ul1_a">我要开店</a></li>
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
		我的订单
	</div>
	
	<s:if test='listOrders == null'>
		<!-- 没有评论 -->
		<div style="text-align: center; margin-top: 1%;">
			亲！您还没有订单哦...
		</div>
	</s:if>
	<s:else>
		<s:iterator value="listOrders" var="listOrders1">
			<div class="cart_d4 myOrderList_d2">
				<div class="myOrderList_d2_d1">
					<div class="myOrderList_d2_d1_d1">
						<font class="myOrderList_d2_d1_d1_font1">${listOrders1.ordertime }</font> &nbsp;订单编号：${listOrders1.orderNumber }
					</div>
					<div class="myOrderList_d2_d1_d2">
						订单状态：<font class="myOrderList_d2_d1_d2_font1">
								<s:if test="#listOrders1.state == 1">
									<a href="orders_idQueryOrdersPayment?method=post&loginUser.username=${loginUser.username }&orders.o_id=${listOrders1.o_id }&paging.presentPage=0" style="text-decoration: none; color: red;">付款</a>
								</s:if>
								<s:elseif test="#listOrders1.state == 2">
									已支付
								</s:elseif>
							</font>
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
				<s:iterator value="#listOrders1.setOrderItem" var="listOrders2">
					<div class="cart_d4_d2 myOrderList_d2_d3">
						<div class="cart_d4_d2_d1 myOrderList_d2_d3_d1">
							<img class="cart_d4_d2_d1_img1" alt="商品图片" src="${fileImageAction.urlImage }${listOrders2.product.p_image}" width="50%">
						</div>
						
						<div class="cart_d4_d2_d2 myOrderList_d2_d3_d2">
							<div class="cart_d4_d2_d2_d1">
								${listOrders2.product.p_name }
							</div>
						</div>
						
						<div class="cart_d4_d2_d3 myOrderList_d2_d3_d3">
							颜色：红
						</div>
						
						<div class="cart_d4_d2_d4 myOrderList_d2_d3_d3">
							<font class="cart_d4_d2_d4_font2">¥${listOrders2.product.p_price }</font>
						</div>
						
						<div class="cart_d4_d2_d5 myOrderList_d2_d3_d3">
							${listOrders2.count }
						</div>
						
						<div class="cart_d4_d2_d6 myOrderList_d2_d3_d3">
							¥${listOrders2.subtotal }
						</div>
						
					</div>
				</s:iterator>
			</div>
		</s:iterator>
		
		<div id="admin_list_div_page" style="width: 100%; font-size: 15px; text-align: center; padding: 8px 0px 0px 0px;">
			第<s:property value="pageBean.page"/>页/<s:property value="pageBean.totalPage"/>页&nbsp;&nbsp;&nbsp;&nbsp;
			<%-- <s:if test="pageBean.page != 1"> --%>
				<a href="${pageContext.request.contextPath }/adminCategorySecond_findAll.action?page=1">首页</a>
				<a href="${pageContext.request.contextPath }/adminCategorySecond_findAll.action?page=<s:property value="pageBean.page-1"/>">上一页</a>
			<%-- </s:if>
			<s:if test="pageBean.page != pageBean.totalPage"> --%>
				<a href="${pageContext.request.contextPath }/adminCategorySecond_findAll.action?page=<s:property value="pageBean.page+1"/>">下一页</a>
				<a href="${pageContext.request.contextPath }/adminCategorySecond_findAll.action?page=<s:property value="pageBean.totalPage"/>">尾页</a>
			<%-- </s:if> --%>
		</div>
		
	</s:else>
	
	<div style="width: 100%; height: 20px;">
		
	</div>
	
	<%@ include file="menu_bottom.jsp" %>

</body>
</html>