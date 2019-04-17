<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>光光网&nbsp;-&nbsp;抢光光</title>
<link href="${pageContext.request.contextPath }/css/product_top.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/menu_bottom.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/index_carousel.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/tools.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/index_carousel.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		var a = $(".aaa").height();
		$(".bbb").height(a);
		$(".ccc").height(a);
		$(".xuanfu").height(a - 4);
	});
	
	$(function() {
		$(".newestProduct,.ishotProduct").mouseover(function() {
			$(this).css("cursor", "pointer");
		});
		
		$(".newestProduct,.ishotProduct a").css({
			"text-decoration": "none",
			"color": "black"
		});
		
		$(".newestProduct,.ishotProduct a").hover(function() {
			$(this).css("color", "red");
		},function() {
			$(this).css("color", "black");
		});
		
	});
	
	function queryProduct(id) {
		var username = '${loginUser.username }';
		window.open("Product_idQueryProduct?method=post&loginUser.username="+username+"&product.p_id="+id+"&paging.presentPage=0");
	}
	
	function categoryOver(id,csId) {
		$("#"+id).css({
			"background-color": "rgba(250,82,82,0.4)",
			"color": "#FA5252",
		});
		
		$("#"+id+" a").css({
			"color": "red",
		});
		$("#cs"+csId).css("display", "block");
	}
	
	function categoryOut(id,csId) {
		$("#"+id).css({
			"background-color": "white",
			"color": "black",
		});
		
		$("#"+id+" a").css({
			"color": "black",
		});
		
		$("#cs"+csId).css("display", "none");
	}
	 
	/* function newestProductOver(id) {
		$("#"+id).css("border","1px solid #FF7575");
	}
	
	function newestProductOut(id) {
		$("#"+id).css("border","1px solid #F0F0F0");
	}
	
	function ishotProductOver(id) {
		$("#"+id).css("border","1px solid #FF7575");
	}
	
	function ishotProductOut(id) {
		$("#"+id).css("border","1px solid #F0F0F0");
	}
	
	function likeOver(id) {
		$("#"+id).css("border","1px solid #FF7575");
	}
	
	function likeOut(id) {
		$("#"+id).css("border","1px solid #F0F0F0");
	} */
	
	function aOver(id,csId) {
		$("#"+id).css({
			"text-decoration": "underline",
		});
		$("#cs"+csId).css("display", "block");
	}
	
	function aOut(id,csId) {
		$("#"+id).css({
			"text-decoration": "none",
		});
		$("#cs"+csId).css("display", "none");
	}
	
	function csOver(id) {
		$("#"+id).css("display", "block");
	}
	
	function csOut(id) {
		$("#"+id).css("display", "none");
	}
	
	$(function(){
		$(".newestProduct").hover(function(){
			$(this).addClass("addjQuery11");
		}, function(){
			 $(this).removeClass("addjQuery11");
		})
	})
	
	$(function(){
		$(".ishotProduct").hover(function(){
			$(this).addClass("addjQuery11");
		}, function(){
			 $(this).removeClass("addjQuery11");
		})
	})
	
	$(function(){
		$(".likeProduct").hover(function(){
			$(this).addClass("addjQuery11");
		}, function(){
			 $(this).removeClass("addjQuery11");
		})
	})
	
	$(function(){
		$(".cainilike").hover(function(){
			$(this).addClass("cainilikeJQuery01");
		}, function(){
			 $(this).removeClass("cainilikeJQuery01");
		})
	})
	
	$(function(){
		$(".hideCategorysecond").hover(function(){
			$(this).addClass("cainilikeJQuery01");
		}, function(){
			 $(this).removeClass("cainilikeJQuery01");
		})
	});
	
	$(function(){
		$(".gonggaoNeiRong").hover(function(){
			$(this).addClass("gonggaoNeiRongJQuery01");
		}, function(){
			 $(this).removeClass("gonggaoNeiRongJQuery01");
		})
	});
	
	function queryCategoryProduct(c_id) {
		var username = '${loginUser.username}';
		window.location.href="index_queryAllCategory?method=post&loginUser.username="+username+"&paging.presentPage=1&category.c_id="+c_id;
	}
	
	function queryCategorySecond(cs_id) {
		var username = '${loginUser.username}';
		window.location.href="index_cs_idQueryAllCategorySecond?method=post&loginUser.username="+username+"&paging.presentPage=1&categorySecond.cs_id="+cs_id;
	}
	
	/* 右下角锚点链接(开始) */
	function dingbumaodian(){
		window.location.href = "#dingbumaodian";
	}
	
	function zuixinmaodian(){
		window.location.href = "#zuixinmaodian";
	}
	
	function zuiremaodian(){
		window.location.href = "#zuiremaodian";
	}
	
	function cainimaodian(){
		window.location.href = "#cainimaodian";
	}
	
	$(function(){
		$(".dingbumaodian").hover(function(){
			$(this).html("回到<br />顶部").addClass("youxiamaodian");
		}, function(){
			/* <img alt="顶部" src="${pageContext.request.contextPath }/images/fanhuitop.png" width="100%" style="display: block;"> */
			 $(this).html('<img alt="顶部" src="${pageContext.request.contextPath }/images/fanhuitop.png" width="100%" style="display: block;">');
		})
	})
	
	$(function(){
		$(".zuixinmaodian").hover(function(){
			$(this).addClass("youxiamaodian");
		}, function(){
			 $(this).removeClass("youxiamaodian");
		})
	})
	
	$(function(){
		$(".zuiremaodian").hover(function(){
			$(this).addClass("youxiamaodian");
		}, function(){
			 $(this).removeClass("youxiamaodian");
		})
	})
	
	$(function(){
		$(".cainimaodian").hover(function(){
			$(this).addClass("youxiamaodian");
		}, function(){
			 $(this).removeClass("youxiamaodian");
		})
	})
	
	$(function(){
		$(".yonghuzhinan").hover(function(){
			$(this).addClass("youxiamaodian");
		}, function(){
			 $(this).removeClass("youxiamaodian");
		})
	})
	/* 右下角锚点链接(结束) */
	
</script>

<style type="text/css">
	.newestProduct{
		border: 1px solid #E0E0E0;
	}
	
	.ishotProduct{
		border: 1px solid #E0E0E0;
	}
	
	.likeProduct{
		border: 1px solid #E0E0E0;
	}

	.addjQuery11{
		border: 1px solid #FF2D2D;
	}
	
	.cainilike{
		color: #ABABAB;
	}
	
	.hideCategorysecond{
		color: #666666;
	}
	
	.cainilikeJQuery01{
		color: #FF8300;
		text-decoration: underline;
	}
	
	.gonggaoNeiRongJQuery01{
		background: #FFECF5;
		color: #3C3C3C;
	}
	
	.zuixinmaodian, .zuiremaodian, .cainimaodian, .yonghuzhinan{
		background: #D0D0D0;
		color: #6C6C6C;
	}
	
	.youxiamaodian{
		background: #FF8F59;
		color: #000;
	}
</style>
</head>
<body style="background: #F4F4F4; margin: 0px; padding: 0px;">
	<div id="dingbumaodian" class="d0101" style="background: red;"></div>
	<%@ include file="product_top.jsp" %>

	<!-- 
	<div style="background: red; width: 88%; margin-left: 6%; margin-right: 6%; height: 20px;">
		顶部1
	</div>
	<div style="background: yellow; width: 88%; margin-left: 6%; margin-right: 6%; height: 70px;">
		顶部2
	</div> 
	-->
	
	<div style="overflow: hidden; width: 88%; margin-left: 6%; margin-right: 6%; margin-bottom: 8px;">
		<div style="background: #FF5000; color: #FFF; font-size: 16px; width: 16%; height: 30px; float: left; text-align: center; line-height: 30px;">
			主题市场
		</div>
		<div style="background: #FF8300; color: #FFF; width: 84%; height: 30px; line-height: 30px; float: left;">
			<a href="https://www.taobao.com" target="_blank" style="text-decoration: none; color: #FFF;">&emsp;淘宝&emsp;</a>|
			<a href="https://www.tmall.com" target="_blank" style="text-decoration: none; color: #FFF;">&emsp;天猫&emsp;</a>|
			<a href="https://www.jd.com" target="_blank" style="text-decoration: none; color: #FFF;">&emsp;京东&emsp;</a>|
			<a href="https://www.amazon.cn" target="_blank" style="text-decoration: none; color: #FFF;">&emsp;亚马逊&emsp;</a>|
			<a href="https://www.vip.com" target="_blank" style="text-decoration: none; color: #FFF;">&emsp;唯品会&emsp;</a>|
			<a href="https://www.pinduoduo.com" target="_blank" style="text-decoration: none; color: #FFF;">&emsp;拼多多&emsp;</a>|
			<a href="https://www.mogujie.com" target="_blank" style="text-decoration: none; color: #FFF;">&emsp;蘑菇街&emsp;</a>|
			<a href="https://www.suning.com" target="_blank" style="text-decoration: none; color: #FFF;">&emsp;苏宁易购&emsp;</a>|
			<a href="http://bj.jumei.com" target="_blank" style="text-decoration: none; color: #FFF;">&emsp;聚美优品&emsp;</a>
		</div>
		<div class="aaa" style="background: #FFF; width: 16%; float: left; color: #666666;">
			<!-- 此div 做边距处理，空出位置 遍历时请勿删除 -->
			<div style="height: 5px;"></div>
			<s:iterator value="listIndexCategory" var="listIndexCategorys" status="status">
				<div class="categoryCss" id="aaa_d<s:property value='#status.count' />" onmouseover="categoryOver(this.id,<s:property value='#status.count' />)" onmouseout="categoryOut(this.id,<s:property value='#status.count' />)" style="font-size: 15px; padding: 6px 0px 6px 13%; color: black;">
					<s:iterator value="#listIndexCategorys.listCategory" var="lists" status="aStatus">
						<a href=javascript:;" onclick="queryCategoryProduct(${lists.c_id })" onmouseover="aOver(this.id,<s:property value='#status.count' />)" onmouseout="aOut(this.id,<s:property value='#status.count' />)" id="a<s:property value='#status.count' /><s:property value='#aStatus.count' />"><s:property value="#lists.c_name" /></a>
						<s:if test="#lists.c_id%3 != 0">
						/
						</s:if>
					</s:iterator>
				</div>
			</s:iterator>
			<!-- 此div 做边距处理，空出位置 遍历时请勿删除 -->
			<div style="height: 5px;"></div>
		</div>
		<div class="bbb" style="width: 59%; float: left; margin-left: 0.8%;">
			<div id="middle_carousel" style="overflow: hidden; height: 56%;">
				<div id="carousel" style="cursor: pointer;">
					<ul id="carousel_ul">
						<li><img src="${pageContext.request.contextPath }/images/index_lunbo01.jpg" name="carousel_ul_img"  /></li>
						<li><img src="${pageContext.request.contextPath }/images/index_lunbo02.jpg" name="carousel_ul_img" /></li>
						<li><img src="${pageContext.request.contextPath }/images/index_lunbo03.jpg" name="carousel_ul_img" /></li>
						<li><img src="${pageContext.request.contextPath }/images/index_lunbo04.jpg" name="carousel_ul_img" /></li>
						<li><img src="${pageContext.request.contextPath }/images/index_lunbo05.jpg" name="carousel_ul_img" /></li>
						<li><img src="${pageContext.request.contextPath }/images/index_lunbo01.jpg" name="carousel_ul_img"  /></li>
					</ul>
					<div id="navDiv">
						<a href="javascript:;" name="navDiv_a" ></a>
						<a href="javascript:;" name="navDiv_a" ></a>
						<a href="javascript:;" name="navDiv_a" ></a>
						<a href="javascript:;" name="navDiv_a" ></a>
						<a href="javascript:;" name="navDiv_a" ></a>
					</div>
				</div>
				<div style="background: #FF8000; float: left; width: 23.5%; height: 10%; height: 100%; margin-top: 8px; cursor: pointer;">
					<img alt="" src="${pageContext.request.contextPath }/images/index_shangpin01.jpg" width="100%" height="100%">
				</div>
			</div>
			
			<div style="overflow: hidden; color: #8E8E8E; height: 7%; font-size: 18px; font-weight: bold; padding-top: 1%; padding-left: 1%;">
				欢迎开店
			</div>
			<!-- 284 520 -->
			<div style="overflow: hidden; height: 39%;">
				<div style="background: #FF8000; float: left; width: 74%; height: 100%; margin-right: 1%; cursor: pointer;">
					<img alt="" src="${pageContext.request.contextPath }/images/index_dianpu01.jpg" width="100%" height="100%">
				</div>
				<div style="background: #D26900; float: left; width: 23.92%; height: 100%; cursor: pointer;">
					<img alt="" src="${pageContext.request.contextPath }/images/index_dianpu02.jpg" width="100%" height="100%">
				</div>
			</div>
		</div>
		
		<div class="ccc" style="width: 24.2%; float: left; padding: 0px; margin: 0px;">
			<s:if test='loginUser.username != null && loginUser.username != ""'>
				<div style="background-color: rgba(240,200,238,0.3); color: #FF8300; font-size: 16px; font-weight: bold; text-align: center; width: 100%; padding: 2% 0%;">
					您好！${loginUser.username }
				</div>
				<div style="background: #FFF; width: 100%; height: 49.7%; padding-top: 5%;">
					<div style="width: 100%; height: 38%; margin-left: 0%; margin-bottom: 2%; text-align: center;">
						<img alt="用户头像" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" height="100%" style="border-radius: 50%;">
					</div>
					<div style="text-align: center; color: #FF8300; font-weight: bold;">
						欢迎来到光光商场！
					</div>
					
					<div style="width: 90%; margin-left: 5%; margin-top: 3%;">
						<!-- 登录时状态 -->
						<fieldset style="border: 3px solid #E0E0E0;">
							<legend style="margin-left: 5%; font-size: 12px; margin-bottom: 4%;">我的账号</legend>
							<div style="width: 50%; float: left; text-align: center; margin-bottom: 8%;">
								<a href="orderitem_queryUserOrderitem?method=post&loginUser.username=${loginUser.username }&paging.presentPage=0">
									<font style="background: #FF5000; font-size: 14px; color: #FFF; width: 80%; margin-left: 8%; padding: 4% 23%; border-radius: 7%;">
										购物车
									</font>
								</a>
							</div>
							<div style="width: 50%; float: left; text-align: center; margin-bottom: 8%;">
								<a href="orders_queryUserAllOrders?method=post&loginUser.username=${loginUser.username }&paging.presenetPage=0">
									<font style="background: #FF5000; font-size: 14px; color: #FFF; width: 80%; margin-left: -10%; padding: 4% 18%; border-radius: 7%;">
										我的订单
									</font>
								</a>
							</div>
							<div style="width: 50%; float: left; text-align: center; margin-bottom: 6%;">
								<a href="#">
									<font style="background: #FF5000; font-size: 14px; color: #FFF; width: 80%; margin-left: 8%; padding: 4% 18%; border-radius: 7%;">
										店铺收藏
									</font>
								</a>
							</div>
							<div style="width: 50%; float: left; text-align: center; margin-bottom: 6%;">
								<a href="#">
									<font style="background: #FF5000; font-size: 14px; color: #FFF; width: 80%; margin-left: -10%; padding: 4% 18%; border-radius: 7%;">
										商品收藏
									</font>
								</a>
							</div>
						</fieldset>
					</div>
				</div>
		</s:if>
		<s:else >
			<div style="background-color: rgba(240,200,238,0.3); color: #FF8300; font-size: 16px; font-weight: bold; text-align: center; width: 100%; padding: 2% 0%;">
				欢迎你的到来！
			</div>
			<div style="background: #FFF; width: 100%; height: 49.7%; padding-top: 5%;">
				<div style="width: 100%; height: 38%; margin-left: 0%; margin-bottom: 2%; text-align: center;">
					<img alt="用户头像" src="${pageContext.request.contextPath }/images/user_morentouxiang.jpg" height="100%" style="border-radius: 50%;">
				</div>
				<div style="text-align: center; color: #FF8300; font-weight: bold;">
					欢迎来到光光商场！
				</div>
				
				<div style="width: 90%; margin-left: 5%; margin-top: 3%;">
					<!-- 未登陆状态 -->
					<fieldset style="border: 3px solid #E0E0E0;">
						<legend style="margin-left: 5%; font-size: 12px; margin-bottom: 4%;">我的操作</legend>
						<div style="width: 50%; float: left; text-align: center; margin-bottom: 6%;">
							<a href="user/login.jsp">
								<font style="background: #FF5000; font-size: 14px; color: #FFF; width: 100%; margin-left: 12%; padding: 4% 25%; border-radius: 7%;">
									登 陆
								</font>
							</a>
						</div>
						<div style="width: 50%; float: left; text-align: center; margin-bottom: 3%;">
							<a href="user/Save.jsp">
								<font style="background: #FF5000; font-size: 14px; color: #FFF; width: 80%; margin-left: -14%; padding: 4% 25%; border-radius: 7%;">
									注 册
								</font>
							</a>
						</div>
						<div style="width: 100%; float: left; text-align: center; margin-bottom: 7%; margin-top: 2%;">
							<a href="user/login.jsp">
								<font style="background: #FF5000; font-size: 14px; color: #FFF; width: 87%; padding: 3% 24.5%; border-radius: 4%;">
									免&nbsp; 费&nbsp; 开&nbsp; 店
								</font>
							</a>
						</div>
					</fieldset>
				</div>
			</div>
		</s:else>
			<div style="background: #F4F4F4; color: #8E8E8E; width: 100%; height: 7.1%; font-size: 16px; font-weight: bold; text-align: center; padding-top: 2.5%;">
				光光公告
			</div>
			<div style="background: #FFF; width: 100%; height: 36.9%; padding-top: 2.5%;">
				<div style="margin-left: 2%; margin-right: 2%; height: 97%; font-size: 14px;">
					<div class="gonggaoNeiRong" style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap; height: 17.152%; padding: 1.8% 0% 1.8% 1%; border: 1px solid #D0D0D0; border-bottom-style: dashed; margin-top: -1px; cursor: pointer;">
						<marquee  direction="up"  behavior="scroll"  scrollamount="1"  scrolldelay="1">
							我爱你我爱你我爱你我爱你我爱你我爱你我爱你
						</marquee>
					</div>
					<div class="gonggaoNeiRong" style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap; height: 17.152%; padding: 1.8% 0% 1.8% 1%; border: 1px solid #D0D0D0; border-top-style: dashed; border-bottom-style: dashed; margin-top: -1px; cursor: pointer;">
						<marquee  direction="up"  behavior="scroll"  scrollamount="1"  scrolldelay="1">
							我爱你我爱你我爱你我爱你我爱你我爱你我爱你
						</marquee>
					</div>
					<div class="gonggaoNeiRong" style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap; height: 17.152%; padding: 1.8% 0% 1.8% 1%; border: 1px solid #D0D0D0; border-top-style: dashed; border-bottom-style: dashed; margin-top: -1px; cursor: pointer;">
						<marquee  direction="up"  behavior="scroll"  scrollamount="1"  scrolldelay="1">
							我爱你我爱你我爱你我爱你我爱你我爱你我爱你
						</marquee>
					</div>
					<div class="gonggaoNeiRong" style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap; height: 17.152%; padding: 1.8% 0% 1.8% 1%; border: 1px solid #D0D0D0; border-top-style: dashed; border-bottom-style: dashed; margin-top: -1px; cursor: pointer;">
						<marquee  direction="up"  behavior="scroll"  scrollamount="1"  scrolldelay="1">
							我爱你我爱你我爱你我爱你我爱你我爱你我爱你
						</marquee>
					</div>
					<div class="gonggaoNeiRong" style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap; height: 17.152%; padding: 1.8% 0% 1.8% 1%; border: 1px solid #D0D0D0; border-top-style: dashed; border-bottom-style: dashed; margin-top: -1px; cursor: pointer;">
						<marquee  direction="up"  behavior="scroll"  scrollamount="1"  scrolldelay="1">
							我爱你我爱你我爱你我爱你我爱你我爱你我爱你
						</marquee>
					</div>
					<div class="gonggaoNeiRong" style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap; height: 17.152%; padding: 1.8% 0% 1.8% 1%; border: 1px solid #D0D0D0; border-top-style: dashed; margin-top: -1px; cursor: pointer;">
						<marquee  direction="up"  behavior="scroll"  scrollamount="1"  scrolldelay="1">
							我爱你我爱你我爱你我爱你我爱你我爱你我爱你
						</marquee>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 隐藏的div -->
		<s:iterator value="listCS" var="listCS2" status="csStatus">
			<div id="cs<s:property value='#csStatus.count' />" onmouseover="csOver(this.id)" onmouseout="csOut(this.id)" class="xuanfu" style="background: #FFF;display: none;position: absolute;width: 52.7%; float: left; margin-left: 14.1%; margin-top: 30px; border: 2px solid #FF6800; padding: 1% 1.5% 1% 1.8%;">
				<div style="background: #FFF; width: 64.5%; height: 100%; float: left;">
					<s:iterator value="#listCS2.listCategorySecond" var="listCategorySeconds">	
						<div style="background: #369; width: 100%; height: 33.33%; margin-top: -1px;">
							<div style="background: #FFF; width: 100%; height: 21%; font-weight: bold; color: #545454">
								<s:iterator value="#listCategorySeconds.listCategorySecond" var="cs" status="status">
									<s:if test="#status.count == 1">
										<s:property value="#cs.category.c_name"/>
									</s:if>
								</s:iterator>
							</div>
							<div style="background: #FFF; width: 100%; height: 79%; color: red; font-size: 12px; padding-right: 2%; overflow: hidden;">
								<s:iterator value="#listCategorySeconds.listCategorySecond" var="cs">
									<div style="float: left; margin-right: 3.92%; padding-bottom: 2.4%;"><a href="javascript:;" onclick="queryCategorySecond(${cs.cs_id})" class="hideCategorysecond"><s:property value="#cs.cs_name"/></a> </div>
								</s:iterator>
							</div>
						</div>
					</s:iterator>
				</div>
				<div style="background: #FFF; width: 35.5%; height: 100%; float: left;">
					<div style="background: #FFF; width: 100%; height: 33.33%;">
						<div style="background: #FFF; width: 100%; height: 21%; font-weight: bold; color: #545454; text-align: center;">
							猜你喜欢
						</div>
						<s:iterator value="listAllLikeProduct" var="listAllLikeProducts">
							<div class="cainilike" style="background: #FFF; width: 50%;border: 1px solid blue; height: 79%; font-size: 12px; overflow: hidden; float: left; margin-bottom: 12%; cursor: pointer;">
								<div style="margin-left: 12%; margin-right: 6%;">
									<img alt="商品图片"  src="${fileImageAction.urlImage }${listAllLikeProducts.p_image }" width="100%">
								</div>
								<div style="margin-left: 12%; margin-right: 6%;">
									${listAllLikeProducts.p_name }
								</div>
							</div>
						</s:iterator>
					</div>
				</div>
			</div>
		</s:iterator>
	</div>
	
	<div style="overflow: hidden; margin-bottom: 8px;">
		<div style="background: #79FF79; width: 43.6%; margin-left: 6%; margin-right: 0.8%; float: left;">
			<div id="zuixinmaodian" style="background: #FFF; height: 10%; font-weight: bold; font-size: 18px; color: #FF9F00; padding: 12px 0px 12px 2%; border-bottom: 1px solid #F4F4F4">
				| 最新商品
			</div>	
			<div style="overflow: hidden; margin: 0px 0%;">
				<s:iterator value="listProductTime"  var="listProductTimes">
					<div class="newestProduct" onclick="queryProduct(${listProductTimes.p_id})" id="times_${listProductTimes.p_id}" style="background: #FFF; width: 33.33%; float: left; height: 31%; padding-top: 5px;" >
						<div style="text-align: center; height: 183px; overflow: hidden;">
							<%-- <img alt="商品图片" src="${fileImageAction.urlImage }${listProductTimes.p_image }" height="84%"> --%>
							<img alt="商品图片" src="${fileImageAction.urlImage }${listProductTimes.p_image }" height="80%" style="margin-top: 6%; border-radius: 5px;">
						</div>
						<div class="product_name" style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden; color: black;" value="${listProductTimes.p_id }">
							<a href="javascript:;" >${listProductTimes.p_name }</a>
						</div>
						<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
							¥<font style="font-size: 22px; font-weight: bold;">${listProductTimes.p_price }</font>
						</div>
						<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
							销量:${listProductTimes.sale_volume }
						</div>
					</div>
				</s:iterator>
			</div>
		</div>
		
		<div style="background: #79FF79; width: 43.6%; margin-right: 6%; margin-right: 0.4%; float: left;">
			<div style="background: #79FF79; width: 100%; margin-right: 0.8%; float: left;">
				<div id="zuiremaodian" style="background: #FFF; height: 10%; font-weight: bold; font-size: 18px; color: #FF9F00; padding: 12px 0px 12px 2%; border-bottom: 1px solid #F4F4F4">
					| 最热商品
				</div>
				<div style="overflow: hidden; margin: 0px 0%;">
					<s:iterator value="listProductHot"  var="listProductHots">
						<div class="ishotProduct" onclick="queryProduct(${listProductHots.p_id })" id="hot_${listProductHots.p_id }" style="background: #FFF; width: 33.33%; float: left; height: 31%; padding-top: 5px;">
							<div style="text-align: center; height: 183px; overflow: hidden;">
								<img alt="商品图片" src="${fileImageAction.urlImage }${listProductHots.p_image }" height="80%" style="margin-top: 6%; border-radius: 5px;">
							</div>
							<div style="font-size: 14px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
								<a href="javascript:;" >${listProductHots.p_name }</a>
							</div>
							<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
								¥<font style="font-size: 22px; font-weight: bold;">${listProductHots.p_price }</font>
							</div>
							<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
								销量:${listProductHots.sale_volume }
							</div>
						</div>
					</s:iterator>
				</div>
			</div>
		</div>
	</div>
	
	<div style="background: #28FF28; overflow: hidden; width: 88%; margin-left: 6%; margin-right: 6%;">
		<div id="cainimaodian" style="background: #FFF; height: 10%; font-weight: bold; font-size: 18px; color: #FF9F00; padding: 12px 0px 12px 1%; border-bottom: 1px solid #F4F4F4">
			| 猜你喜欢
		</div>
		<div style="overflow: hidden; margin: 0px 0%;">
			<s:iterator value="listAllCommentProduct" var="listAllCommentProducts" >
				<div class="likeProduct" onclick="queryProduct(${listAllCommentProducts.p_id })" style="background: #FFF; width: 16.66%; float: left; height: 31%; padding-top: 5px;">
					<div style="text-align: center; height: 183px; overflow: hidden;">
						<img alt="商品图片" src="${fileImageAction.urlImage }${listAllCommentProducts.p_image}" height="80%" style="margin-top: 6%; border-radius: 5px;">
					</div>
					<div style="font-size: 14px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
						${listAllCommentProducts.p_name}
					</div>
					<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
						¥<font style="font-size: 22px; font-weight: bold;">${listAllCommentProducts.p_price}</font>
					</div>
					<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
						销量:${listAllCommentProducts.sale_volume}
					</div>
				</div>
			</s:iterator>
		</div>
	</div>
	<div style="width: 100%; height: 15px;">
		
	</div>
	<%@ include file="index_menu_bottom.jsp" %>
	<!-- dingbumaodian -->
	<div style="position: fixed; right: 2%; bottom: 1%; width: 3%; text-align: center; font-size: 10px;">
		<div class="dingbumaodian" onclick="dingbumaodian()" style="padding-bottom: 6%; cursor: pointer;">
			<img alt="顶部" src="${pageContext.request.contextPath }/images/fanhuitop.png" width="100%" style="display: block;">
		</div>
		<div class="zuixinmaodian" onclick="zuixinmaodian()" style="cursor: pointer; padding: 6% 0px; border-style:solid; border-width: 1px; border-bottom-color: #F4F4F4; border-top-color: #F4F4F4; border-left: none; border-right: none; margin-top: -2px;">
			最新<br />商品
		</div>
		<div class="zuiremaodian" onclick="zuiremaodian()" style="cursor: pointer; padding: 6% 0px; border-style:solid; border-width: 1px; border-bottom-color: #F4F4F4; border-top-color: #F4F4F4; border-left: none; border-right: none; margin-top: -2px;">
			最热<br />商品
		</div>
		<div class="cainimaodian" onclick="cainimaodian()" style="cursor: pointer; padding: 6% 0px; border-style:solid; border-width: 1px; border-bottom-color: #F4F4F4; border-top-color: #F4F4F4; border-left: none; border-right: none; margin-top: -2px;">
			猜你<br />喜欢
		</div>
		<div class="yonghuzhinan" style="cursor: pointer; padding: 6% 0px; border-style:solid; border-width: 1px; border-bottom-color: #F4F4F4; border-top-color: #F4F4F4; border-left: none; border-right: none; margin-top: -2px;">
			用户<br />指南<!-- solr -->
		</div>
	</div>
</body>
</html>