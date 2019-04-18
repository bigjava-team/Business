<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>页面布局</title>
<!--css文件的引用-->
</head>
<!--搜素栏 -->
<link
	href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"> --%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/zp1/css/xuanxiangxiahua.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/zp1/css/menu_bottom.css">
<style type="text/css">
/*索搜*/
* {
	box-sizing: border-box;
}

#container {
	width: 50%;
	height: 50%;
	margin: 0 auto;
}

#d  div.search {
	padding: 15px 0;
}

#d form {
	position: relative;
	width: 22%;
	margin: 0 auto;
}

#d input, button {
	border: none;
	outline: none;
}

#d input {
	width: 100%;
	height: 80%;
	padding-left: 13px;
}

#d button {
	height: 80%;
	width: 20%;
	cursor: pointer;
	position: absolute;
}
/*搜索框7*/
#d .bar7 form {
	height: 53px;
}

#d .bar7 input {
	width: 450px;
	border-radius: 42px;
	border: -2px solid #324B4E;
	background: #F9F0DA;
	transition: .3s linear;
	float: right;
}

#d .bar7 input:focus {
	width: 180%;
}

#d .bar7 button {
	background: none;
	top: 1px;
	right: 0;
}

#d .bar7 button:before {
	content: "\f002";
	font-family: FontAwesome;
	color: #324b4e;
}

/*导航栏目z的文字*/
.wenziz {
	text-align: left;
	float: left;
	color: #666;
	font-size: 15px;
	margin: 3 0 0 6%;
	word-spacing: 33px;
}

.wenziz2 {
	text-align: right;
	color: #666;
	font-size: 15px;
	margin: 0 7% 0 0;
	word-spacing: 33px;
}

.wenziz3 {
	text-align: left;
	color: #000000;
	font-size: 12px;
	margin: 3 3 0 3;
	word-spacing: 33px;
}

.juzhong {
	text-align: center;
}
.wenziz{ text-align:left; float:left; color:#666; font-size:15px; margin:3 0 0 6% ;word-spacing:33px;}
.wenziz2{ text-align:right; color:#666; font-size:15px; margin:0 7% 0 0 ;word-spacing:30px;}
.juzhong {  text-align:center;}
/*表格*/
#table {
	border: 2px solid black;
	width: 100%;
	height: 100%;
}

/*第一版块*/
.contentone {
	background-color: rgba(0, 0, 0, 0.1);;
	width: 100%;
	height: 4%;
	border: 2px solid #F0F0F0;
	margin: 0 auto
}
/*第二版块*/
.contenttwo {
	background: #ffffff;
	width: 90%;
	height: 11%;
	border: 2px solid #ffffff;
	margin: 0 auto
}
/*第三版块*/
.clear {
	clear: both
}

.contentthree {
	background: #ffffff;
	width: 85%;
	border: 2px solid #ffffff;
	margin: 0 auto
}

.contentthree2 {
	background: #ffffff;
	width: 85%;
	border: 2px solid #ffffff;
	margin: 0 auto
}
/*第五版块*/
.content5 {
	background: #ffffff;
	width: 85%;
	float: center;
	border: 2px solid #ffffff;
	margin: 0 auto
}
/*节目1*/
.lanmusi {
	background: #fff;
	width: 16%;
	height: 40%;
	float: left;
	border: 1px solid #E0E0E0;
	margin: 2 3 0 3
}
/*节目2*/
.lanmuwu{ background:#fff; width:100%; height:25%;border:2px solid #FF9900; margin:0 auto}
.cainilikeJQuery01{
		border: 1px solid red;
	}
</style>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var titles = $("div.title >a");
		var conts = $("div.content >div.aa");
		titles.first().addClass("now").siblings().removeClass("now"); //默认第一个标题添加样式
		conts.first().show().nextAll().hide(); //默认第一个内容显示，其他隐藏
		titles.each(function( index ){
			$(this).click(function(){
				$(this).addClass("now").siblings().removeClass("now"); //给鼠标悬浮上的第index个（即当前）标题添加样式
				conts.eq(index).show().siblings().hide(); //第index个内容显示，其他隐藏
				});
			});
	});
	
	function queryProduct(id) {
		var username = '${loginUser.username }';
		window.open("Product_idQueryProduct?method=post&loginUser.username="+username+"&product.p_id="+id+"&paging.presentPage=1");
	}
	
	$(function(){
		$(".lanmusi").hover(function(){
			$(this).addClass("cainilikeJQuery01");
		}, function(){
			 $(this).removeClass("cainilikeJQuery01");
		})
		
		var cs_id = '${categorySecond.cs_id}';
		$("#CS_"+cs_id).css({
			"background-color": "rgba(247,129,125,0.6)",
		});
		
		var searchText = '${searchText}';
		if (searchText!="") {
			$("#q").hide();
			$("#br").hide();
		}
	});
</script>
<body style="margin: 0px; padding: 0px;">


	<!--板块1-->
	<div class="contentone">
		<div class=wenziz>
			中国大陆 
			<s:if test='loginUser.username != null && loginUser.username != ""'>
					欢迎您：${loginUser.username };
			</s:if>
			<s:else>
				<a href="${pageContext.request.contextPath }/user/login.jsp">亲，请登录</a>
				<a href="user/Save.jsp">免费注册</a>
			</s:else>
		</div>
		
		<div class="wenziz2">
				<a href="User_skipIndex.action?method=post&loginUser.username=${loginUser.username }">我的光光</a>
			<s:if test='loginUser.username != null && loginUser.username != ""'>
				<a href="User_gotoUserIndex.action?method=post&loginUser.username=${loginUser.username }">我的主页</a>
			</s:if>
			
			<s:if test='loginUser.username != null && loginUser.username != ""'>
				<a href="Merchant_gotoMerchant.action?method=post&loginUser.username=${loginUser.username }">我的店铺</a>
			</s:if>
			<a href="orders_queryUserAllOrders?method=post&loginUser.username=${loginUser.username }&paging.presenetPage=0">我的订单</a> 
			<a href="orderitem_queryUserOrderitem?method=post&loginUser.username=${loginUser.username }&paging.presentPage=0">购物车</a> 
			<a href="javascript:;" onclick="collect()">收藏夹</a> 
			<a href="User_SetUpShop.action?method=post&loginUser.username=${loginUser.username }">我要开店</a> 
			<s:if test='loginUser.username != null && loginUser.username != ""'>
				<a href="#" onclick="remove()">退出</a>
			</s:if>
		</div>
	</div>
	
	<!--板块2-->
	<div id="d" class="contenttwo">
		<img src="${pageContext.request.contextPath }/zp1/images/logo.png"
			height="100%" width="13%" align="left"> <img
			src="${pageContext.request.contextPath }/zp/images/5.png"
			height="100%" width="13%" align="right"> <img
			src="${pageContext.request.contextPath }/zp/images/6.png"
			height="100%" width="13%" align="right">
		<div class="search bar7">
			<form action="index_searchTextQueryProduct?paging.presentPage=1" method="post">
				<input type="hidden" name="loginUser.username" value="${loginUser.username }" /> 
				<input name="searchText" type="text" placeh5older="欢迎来到光光网...">
				<button type="submit"></button>
			</form>
		</div>
	</div>
	<!--板块3-->
	<div style="height: 3%; border-top: 1px solid #d0d0d0;"></div>
	<div class="main">
		<div id="q" class="contentthree">
			<%@ include file="term.jsp"%>
			<br class="clear" />
		</div>

		<%-- <div class="contentthree2">
		<img src="${pageContext.request.contextPath }/zp1/images/55.png" height="10%" width="100%" />
	</div> --%>

	<div style="height:3%; border-top: 1px solid #d0d0d0;" id="br"></div>
	
	<!--板块5-->
	
	<div class="content5">
		<div class="content">
			<div class="aa">
			<!--1-->
			<s:iterator value="listCategoryProduct" var="listCategoryProducts">
				<div class="lanmusi" onclick="queryProduct(${listCategoryProducts.p_id })">
					<div class="juzhong">
						<img src="${fileImageAction.urlImage }${listCategoryProducts.p_image }" height="68%" width="100%" />
					</div>
					<!--栏目内容-->
						<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
							${listCategoryProducts.p_name }
						</div>
						<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
							¥<font style="font-size: 22px; font-weight: bold;">${listCategoryProducts.p_price }</font>
						</div>
						<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
							销量:${listCategoryProducts.sale_volume }
						</div>
					</div>
				</s:iterator>
			</div>
		</div>
</div>
<br class="clear">
</div>
	<div id="admin_list_div_page" style="width: 100%; font-size: 15px; text-align: center; padding: 8px 0px 0px 0px;">
		<s:if test="paging.page != 0">
			<s:if test="checkPage == 1">
				第${paging.presentPage }页/2页&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="${pageContext.request.contextPath }/index_cs_idQueryAllCategorySecond?method=post&loginUser.username=${loginUser.username }&paging.presentPage=1&categorySecond.cs_id=${categorySecond.cs_id }">首页</a>
				<a href="${pageContext.request.contextPath }/index_cs_idQueryAllCategorySecond?method=post&loginUser.username=${loginUser.username }&paging.presentPage=${paging.presentPage-1 }&categorySecond.cs_id=${categorySecond.cs_id }">上一页</a>
				<a href="${pageContext.request.contextPath }/index_cs_idQueryAllCategorySecond?method=post&loginUser.username=${loginUser.username }&paging.presentPage=${paging.presentPage+1 }&categorySecond.cs_id=${categorySecond.cs_id }">下一页</a>
				<a href="${pageContext.request.contextPath }/index_cs_idQueryAllCategorySecond?method=post&loginUser.username=${loginUser.username }&paging.presentPage=${paging.page }&categorySecond.cs_id=${categorySecond.cs_id }">尾页</a>
			</s:if>
			<s:elseif test="checkPage == 2">
				第${paging.presentPage }页/${paging.page }页&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="${pageContext.request.contextPath }/index_cs_idQueryAllCategorySecond?method=post&loginUser.username=${loginUser.username }&paging.presentPage=1&categorySecond.cs_id=${categorySecond.cs_id }">首页</a>
				<a href="${pageContext.request.contextPath }/index_cs_idQueryAllCategorySecond?method=post&loginUser.username=${loginUser.username }&paging.presentPage=${paging.presentPage-1 }&categorySecond.cs_id=${categorySecond.cs_id }">上一页</a>
				<a href="${pageContext.request.contextPath }/index_cs_idQueryAllCategorySecond?method=post&loginUser.username=${loginUser.username }&paging.presentPage=${paging.presentPage+1 }&categorySecond.cs_id=${categorySecond.cs_id }">下一页</a>
				<a href="${pageContext.request.contextPath }/index_cs_idQueryAllCategorySecond?method=post&loginUser.username=${loginUser.username }&paging.presentPage=${paging.page }&categorySecond.cs_id=${categorySecond.cs_id }">尾页</a>
			</s:elseif>
			<s:elseif test="checkPage == 3">
				第${paging.presentPage }页/${paging.page }页&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="${pageContext.request.contextPath }/index_searchTextQueryProduct?method=post&loginUser.username=${loginUser.username }&paging.presentPage=1&searchText=${searchText }">首页</a>
				<a href="${pageContext.request.contextPath }/index_searchTextQueryProduct?method=post&loginUser.username=${loginUser.username }&paging.presentPage=${paging.presentPage-1 }&searchText=${searchText }">上一页</a>
				<a href="${pageContext.request.contextPath }/index_searchTextQueryProduct?method=post&loginUser.username=${loginUser.username }&paging.presentPage=${paging.presentPage+1 }&searchText=${searchText }">下一页</a>
				<a href="${pageContext.request.contextPath }/index_searchTextQueryProduct?method=post&loginUser.username=${loginUser.username }&paging.presentPage=${paging.page }&searchText=${searchText }">尾页</a>
			</s:elseif>
		</s:if>
		<s:else>
			没有此类商品
		</s:else>
	</div>
		<%@include file="menu_bottom.jsp"%>
</body>
</html>
