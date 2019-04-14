<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的购物车</title>
<link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/menu_bottom.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/cart.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	function minus(id, productMoney) {
		var jian = $(".cart_d4_d2_d5_d1_d1_a1").text();
		var input = $("#cart_d4_d2_d5_d1_input_"+id).val();
		if (input > 1 ) {
			$("#cart_d4_d2_d5_d1_input_"+id).attr("value", input * 1 - 1);
			var input = $("#cart_d4_d2_d5_d1_input_"+id).val();
			var money = productMoney*input;
			$("#cart_d4_d2_d6_"+id).text("¥"+money);
		}
	}
	
	function add(id, productMoney) {
		var jia = $(".cart_d4_d2_d5_d1_d2_a2").text();
		/* String next = "#cart_d4_d2_d5_d1_input_"+id; */
		var input = $("#cart_d4_d2_d5_d1_input_"+id).val();
		if (input < 20 ) {
			$("#cart_d4_d2_d5_d1_input_"+id).attr("value", input * 1 + 1);
			var input = $("#cart_d4_d2_d5_d1_input_"+id).val();
			var money = productMoney*input;
			$("#cart_d4_d2_d6_"+id).text("¥"+money);
			$("#cart_d4_d2_d6_"+id).val(money);
		}
	}
	
	/* $(function(){
		$(".cart_d6_d2_a1").mouseover(function(){
			$(".cart_d6_d2_a1").css("color","#FF4400");	//选取<body>元素下元素名是<div>的子元素
		});
	}); */
	
	$(function(){
		$(".cart_d6_d2_a1").hover(function(){
			$(".cart_d6_d2_a1").css("color","#FF4400").css("text-decoration", "underline");
		}, function(){
			$(".cart_d6_d2_a1").css("color","#9C9C9C").css("text-decoration", "none");
		});
	});
	
	function Over(id) {
		$("#"+id).css("color","#FF4400").css("text-decoration", "underline");
	}
	
	function Out(id) {
		$("#"+id).css("color","#3C3C3C").css("text-decoration", "none");
	}
	
	function addOrders() {
		var checkbox = document.getElementsByName("check");
		var listId = [];
		var listNumber = [];
		var subtotal = [];
		var total = 0;
		for (var i=0; i<checkbox.length; i++) {
			if (checkbox[i].checked) {
				listId.push(checkbox[i].value);
				listNumber.push($("#cart_d4_d2_d5_d1_input_"+checkbox[i].value).val());
				var totalMoney = $("#cart_d4_d2_d6_"+checkbox[i].value).text();
				var s = totalMoney.split("¥");
				subtotal.push(s[1]);
				total += parseFloat(s[1]);
			}
		}
		var username = "${loginUser.username }";
		window.location.href="orders_addOrders?method=post&listId="+listId+"&loginUser.username="+username+"&listNumber="+listNumber+"&orders.total="+total+"&subtotals="+subtotal+"&paging.presentPage=0";
	}
	
	$(function(){
		$(".cart_d1_d2_ul1 li a").hover(function(){
			$(this).addClass("addjQuery");
		}, function(){
			 $(this).removeClass("addjQuery");
		})
	})
	
	$(function(){
		$(".quanxuan").click(function(){
			if (this.checked) {
				$(".inputProduct").prop("checked", "true");
			} else {
				$(".inputProduct").each(function(){
					this.checked = false;
				})
			}
		})
	})
	
</script>

<style type="text/css">
	
	.cart_d1_d2_ul_a{
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
			尊敬的：${loginUser.username }您好!
		</div>
		
		<!-- 
		<div class="cart_d1_d2">
			<ul class="cart_d1_d2_ul1">
				<li>光光网首页</li>
				<li>|</li>
				<li>我的订单</li>
				<li>|</li>
				<li>购物车</li>
				<li>|</li>
				<li>收藏夹</li>
				<li>|</li>
				<li>商品分类</li>
				<li>|</li>
				<li>免费开店</li>
				<li>|</li>
				<li>联系客服</li>
				<li>|</li>
				<li>网站导航</li>
			</ul>
		</div>
		 -->
		 
		<div class="cart_d1_d2">
			<ul class="cart_d1_d2_ul1">
				<li><a href="User_gotoUserIndex.action?method=post&loginUser.username=${loginUser.username }" class="cart_d1_d2_ul_a" style="text-decoration: none;">我的主页</a></li>
				<li style="color: #D0D0D0;">&nbsp;|&nbsp;</li>
				<li><a href="orders_queryUserAllOrders?method=post&loginUser.username=${loginUser.username }&paging.presenetPage=0" class="cart_d1_d2_ul_a" style="text-decoration: none;">我的订单</a></li>
				<li style="color: #D0D0D0;">&nbsp;|&nbsp;</li>
				<li><a href="orderitem_queryUserOrderitem?method=post&loginUser.username=${loginUser.username }&paging.presentPage=0" class="cart_d1_d2_ul_a" style="text-decoration: none;">购物车</a></li>
				<li style="color: #D0D0D0;">&nbsp;|&nbsp;</li>
				<li><a href="javascript:;" class="cart_d1_d2_ul_a" style="text-decoration: none;">收藏夹</a></li>
				<li style="color: #D0D0D0;">&nbsp;|&nbsp;</li>
				<li><a href="#" class="cart_d1_d2_ul_a" style="text-decoration: none;">商品分类</a></li>
				<li style="color: #D0D0D0;">&nbsp;|&nbsp;</li>
				<li><a href="User_SetUpShop.action?method=post&loginUser.username=${loginUser.username }" class="cart_d1_d2_ul_a" style="text-decoration: none;">我要开店</a></li>
			</ul>
		</div>
	</div>
	
	<!--板块2-->
    <div class="contenttwo" style="margin-left: 13%; margin-right: 13%;">
		<img src="${pageContext.request.contextPath }/images/logo.jpg" height="60px" width="240px" align="left">
		<div class="search bar7">
			<form id="contenttwo_form">
				<input class="contenttwo_input" type="text" placeholder="欢迎来到光光网...">
				<button class="contenttwo_button" type="submit"></button>
			</form>
		</div>
	</div>
	
	<hr class="cart_hr1" />
	
	<div class="cart_d3">
		我的购物车
	</div>
	
	<hr class="cart_hr1" />
	<s:if test='#listOrderitem == null'>
		<!-- 没有评论 -->
		<div style="text-align: center; margin-top: 1%;">
			亲！您还没有加购商品哦...
		</div>
	</s:if>
	<s:else>
	<div class="cart_d4">
		<div class="cart_d4_d1">
			<div class="cart_d4_d1_d1">
				<div style="width: 14.8%; float: left;">
					<div style="float: left; width: 54%; margin-top: 2%;">
						<input class="quanxuan" type="checkbox">
					</div>
					<div style="float: left; width: 46%; text-align: left;">
						全选
					</div>
				</div>
				<div style="width: 85.2%; float: left;">商品信息</div>
			</div>
			<div class="cart_d4_d1_d2">
				单价
			</div>
			<div class="cart_d4_d1_d2">
				数量
			</div>
			<div class="cart_d4_d1_d2">
				金额
			</div>
			<div class="cart_d4_d1_d3">
				操作
			</div>
		</div>
		<s:iterator value="listOrderitem" var="listOrderitems">
			<div class="cart_d4_d2">
				<div class="cart_d4_d2_checkbox">
					<input class="inputProduct" type="checkbox" id="" name="check" value="${listOrderitems.item_id }" />
				</div>
				<div class="cart_d4_d2_d1">
					<img class="cart_d4_d2_d1_img1" alt="商品图片" src="${fileImageAction.urlImage }${listOrderitems.product.p_image }" height="50px">
				</div>
				
				<div class="cart_d4_d2_d2">
					<div class="cart_d4_d2_d2_d1">
						${listOrderitems.product.p_name }
					</div>
				</div>
				
				<div class="cart_d4_d2_d3">
					颜色：红
				</div>
				
				<div class="cart_d4_d2_d4">
					<font class="cart_d4_d2_d4_font1">¥${listOrderitems.product.market }</font><br />
					<font class="cart_d4_d2_d4_font2">¥${listOrderitems.product.p_price }</font>
				</div>
				
				<div class="cart_d4_d2_d5">
					<div class="cart_d4_d2_d5_d1">
						<div class="cart_d4_d2_d5_d1_d1">
							<a class="cart_d4_d2_d5_d1_d1_a1" onclick="minus(${listOrderitems.item_id },${listOrderitems.subtotal })" href="javascript:;">-</a>
						</div>
						<input class="cart_d4_d2_d5_d1_input" id="cart_d4_d2_d5_d1_input_${listOrderitems.item_id }" type="text" value="${listOrderitems.count }"/>
						<div class="cart_d4_d2_d5_d1_d2">
							<a class="cart_d4_d2_d5_d1_d2_a2" onclick="add(${listOrderitems.item_id },${listOrderitems.subtotal })" href="javascript:;">+</a>
						</div>
					</div>
				</div>
				
				<div class="cart_d4_d2_d6" id="cart_d4_d2_d6_${listOrderitems.item_id }">
					¥${listOrderitems.product.p_price }
				</div>
				
				<div class="cart_d4_d2_d7">
					<a class="cart_d4_d2_d7_a1 cart_d4_d2_d7_a1_jquery1" onmouseover="Over(this.id)" onmouseout="Out(this.id)" id="cart_d4_d2_d7_a1_jquery1_${listOrderitems.item_id }" href="javascript:;">移入收藏夹</a><br />
					<a class="cart_d4_d2_d7_a1 cart_d4_d2_d7_a1_jquery2" onmouseover="Over(this.id)" onmouseout="Out(this.id)" id="cart_d4_d2_d7_a1_jquery2_${listOrderitems.item_id }" href="orderitem_removeOrderitem?method=post&loginUser.username=${loginUser.username }&product.p_id=${listOrderitems.product.p_id }&paging.presentPage=0&orderitem.item_id=${listOrderitems.item_id }">移除</a>
				</div>
				
			</div>
		</s:iterator>
		
	</div>
	
	<div id="admin_list_div_page" style="width: 100%; font-size: 15px; text-align: center; padding: 8px 0px 0px 0px;">
		第${paging.presentPage }页/${paging.page }页&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="${pageContext.request.contextPath }/orderitem_queryUserOrderitem?method=post&loginUser.username=${loginUser.username }&paging.presentPage=1">首页</a>
		<a href="${pageContext.request.contextPath }/orderitem_queryUserOrderitem?method=post&loginUser.username=${loginUser.username }&paging.presentPage=${paging.presentPage-1}">上一页</a>
		<a href="${pageContext.request.contextPath }/orderitem_queryUserOrderitem?method=post&loginUser.username=${loginUser.username }&paging.presentPage=${paging.presentPage+1}">下一页</a>
		<a href="${pageContext.request.contextPath }/orderitem_queryUserOrderitem?method=post&loginUser.username=${loginUser.username }&paging.presentPage=${paging.page}">尾页</a>
	</div>
	
	<div class="cart_d5" style="margin-top: 0px;">
		合计 (不含运费)：<font class="cart_d5_font1">¥0</font>
	</div>
	
	<div class="cart_d6">
		<div class="cart_d6_d1">
			<a class="cart_d6_d1_a1" href="javascript:;" onclick="addOrders()">提交订单</a>
		</div>
		<div class="cart_d6_d2">
			<a class="cart_d6_d2_a1" href="">清空购物车</a>
		</div>
	</div>
	</s:else>
	
	<%@ include file="menu_bottom.jsp" %>

</body>
</html>