<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品详情页</title>
<link href="css/product_top.css" rel="stylesheet" type="text/css">
<link href="css/menu_bottom.css" rel="stylesheet" type="text/css">
<link href="css/product.css" rel="stylesheet" type="text/css">
<link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var titles = $("div.title >a");
		var conts = $("div.content >div.aa");
		titles.first().addClass("now").siblings().removeClass("now");
		conts.first().show().nextAll().hide();
		titles.each(function(index){
			$(this).click(function(){
				$(this).addClass("now").siblings().removeClass("now");
				conts.eq(index).show().siblings().hide();
			});
		});
	});
	
	$(function(){
		var ld = $(".leftDiv").height();
		$(".rightDiv").height(ld);
	});
	
	/* 立即购买 */
	function lijigoumai(){
		var f = document.getElementById("product_div1_div2_form");
		var username = '${loginUser.username}';
		var p_id = '${product.p_id }';
		if (username == null || username == "") {
			alert("请先登录账号");
			f.action = "user/login.jsp";
			return false;
		}
		f.action = "orders_goBuy?loginUser.username="+username+"&product.p_id="+p_id+"&paging.presentPage=1";
	}
	
	/* 加入购物车 */
	function jiarucar(){
		var username = '${loginUser.username}';
		var p_id = '${product.p_id }';
		var f = document.getElementById("product_div1_div2_form");
		if (username == null || username == "") {
			alert("请先登录账号");
			f.action = "user/login.jsp";
			return false;
		}
		f.action =  f.action + "?loginUser.username="+username+"&product.p_id="+ p_id +"&orderitem.count=1"+"&paging.presentPage=1";
	}
	
	/* 点击小图片，小图片显示到商品大图片区域 */
	$(function(){
		$(".123").on('click', function(){
			$('#product_div1_div1_div1').html($(this).html());
		})
	});
	
	$(function(){
		$("#addShuLiang").hover(function() {
			$(this).css("cursor", "pointer");
		}, function() {
			$(this).css("cursor", "default");
		});
		$("#addShuLiang").click(function(){
			var shuliang = $("#inputShuLiang").val();
			$("#inputShuLiang").attr("value", shuliang * 1 + 1 );
		});
	});
	
	$(function(){
		$("#jianShuLiang").hover(function() {
			$("#jianShuLiang").css("cursor", "pointer");
		}, function() {
			$("#jianShuLiang").css("cursor", "default");
		});
		$("#jianShuLiang").click(function(){
			var shuliang = $("#inputShuLiang").val();
			if (shuliang > 1) {
				$("#inputShuLiang").attr("value", shuliang * 1 - 1 );
			}
		});
	});
	
	function collectProduct() {
		var username = '${loginUser.username}';
		var p_id = '${product.p_id}';
		
		var params = {
			"loginUser.username": username,
			"product.p_id": p_id,
		}
		
		if (username == "") {
			window.location.href="user/login.jsp";
			return;
		}
		
		$.ajax({
			url: "ajaxCP_userCollectProduct",
			type: "post",
			data: params,
			dataType: "json",
			success:function(data, textStatus) {
				alert(data.check);
			},error:function(data, textStatus) {
				return;
			}
		});
	}
	$(function(){
		$(".shoucangProduct a").hover(function(){
			$(this).addClass("shoucangProductJQuery");
		}, function(){
			 $(this).removeClass("shoucangProductJQuery");
		})
	})
	
	$(function () {
	    $('.colorProduct').mouseover(function () {
	        var $colorProduct = $('<div id="colorProduct"><div class="t_box"><div><s><i></i></s><img src="' + this.src + '" width="100%" /></div></div></div>');
	        $('.product_div1_div2_div3_div2').append($colorProduct);
	        $('#colorProduct').show('fast');
	    }).mouseout(function () {
	        $('#colorProduct').remove();
	    }).mousemove(function (e) {
	        $('#colorProduct').css({ "top": (e.pageY - 30) + "px", "left": (e.pageX + 30) + "px"})
	    })
	})
	
	function queryProduct(id) {
		var username = '${loginUser.username }';
		window.open("Product_idQueryProduct?method=post&loginUser.username="+username+"&product.p_id="+id+"&paging.presentPage=0");
	}
	
	function enterAddress() {
		var username = '${loginUser.username }';
		var m_id = '${merchant.m_id }';
		if (username == "") {
			alert("请先去登录用户");
			window.location.href="user/login.jsp";
			return;
		}
		window.location.href="merchant_enteryMerchant?method=post&loginUser.username="+username+"&merchant.m_id="+m_id;
	}
</script>

<style type="text/css">
	.shoucangProduct{
		color: #666666;
	}
	
	.shoucangProductJQuery{
		color: #FF8300;
	}
	
	/* 颜色图片样式 */
	#colorProduct {
	    position: absolute;
	    color: #333;
	    display: none;
	    z-index: 9999;
	}
	
	#colorProduct s {
	    position: absolute;
	    top: 10px;
	    left: -20px;
	    display: block;
	    width: 0px;
	    height: 0px;
	    font-size: 0px;
	    line-height: 0px;
	    border-color: transparent #BBA transparent transparent;
	    border-style: dashed solid dashed dashed;
	    border-width: 10px;
	}
	
	#colorProduct s i {
	    position: absolute;
	    top: -10px;
	    left: -8px;
	    display: block;
	    width: 0px;
	    height: 0px;
	    font-size: 0px;
	    line-height: 0px;
	    border-color: transparent #fff transparent transparent;
	    border-style: dashed solid dashed dashed;
	    border-width: 10px;
	}
	
	#colorProduct .t_box {
		width: 40%;
	    position: relative;
	    background-color: #CCC;
	    filter: alpha(opacity=50);
	    z-index: 9999;
	}
	
	#colorProduct .t_box div {
	    position: relative;
	    background-color: #FFF;
	    border: 1px solid #ACA899;
	    padding: 0px;
	    top: -2px;
	    left: -2px;
	}
	
	.colorProduct {
	    border: 1px solid #DDD;
	}
	
</style>

</head>
<body id="product_body">
	<%@ include file="product_top.jsp" %>
	<div id="product_div1">
		
		<div id="product_div1_div1" >
			<div id="product_div1_div1_div1" style="text-align: center; overflow: hidden;">
				<img alt="${product.p_image }" src="${fileImageAction.urlImage }${product.p_image }" height="90%" style="padding-top: 6%;"><br/>
			</div>
			<div id="product_div1_div1_div2">
				<div class="123" style="float: left; height: 60px; overflow: hidden;"><img alt="图片名称" src="${fileImageAction.urlImage }${product.p_image}" height="90%" style="padding-top: 6%;"></div>
			</div>
		</div>
		
		<div id="product_div1_div2">
			<div class="shoucangProduct" style="font-size: 14px; margin-right: 2%; margin-left: 89%; margin-top: 1%; text-align: center; background: #FFD9EC; border-radius: 8px; cursor: pointer;">
				<a href="javascript:;" onclick="collectProduct()" >收藏</a>
			</div>
			<div id="product_div1_div2_div1">
				<font id="product_div1_div2_div1_font">${product.p_name }</font>
			</div>
			
			<div id="product_div1_div2_div2" style="padding-top: 2%; padding-bottom: 2%;">
				<div>
					市场价: &emsp;<font id="font1" class="shichangjia" style="color: #666666;">¥ ${product.market }</font>
				</div>
				<div style="margin-top: 2%">
					光光价: &emsp;<font id="font2" class="guangguangjia" style="color: #FF8000;">¥ ${product.p_price }</font>
				</div>
			</div>
			
			<div id="product_div1_div2_div3">
				优惠: &emsp;&emsp;已优惠&emsp;<font class="product_div1_div2_div3_font" style="color: #FF8000;">¥&nbsp;${product.market-product.p_price }</font>
			</div>
			<div id="product_div1_div2_div3">
				配送: &emsp;&emsp;快递 : &nbsp; 免运费
			</div>
			
			<div id="product_div1_div2_div3">
				<div class="product_div1_div2_div3_div1">颜色: </div>
				<div class="product_div1_div2_div3_div2">
					<img alt="图片名称" class="colorProduct" src="${fileImageAction.urlImage }${product.p_image}" height="50px;">
				</div>
			</div>
			
			<!-- form不要删  不然样式会乱  里面的属性不要给属性值就行 -->
			<form id="product_div1_div2_form" action="orderitem_addOrderItemAndQueryOrderItem" method="post">
				<div class="product_div1_div2_form_div1"></div>
				<div style="margin-left: 5%; margin-bottom: 4%; margin-top: 4%;">
					<input type="submit" value="立即购买" onclick="lijigoumai()" style="width: 30%; height: 40px; font-weight: bold; font-size: 16px; background: #FF9224; color: #F0F0F0; margin-right: 2%" />
					<input type="submit" value="加入购物车" onclick="jiarucar()" style="width: 30%; height: 40px; font-weight: bold; font-size: 16px; background: #FF9224; color: #F0F0F0;" />
				</div>
			</form>
			
			<div class="product_div1_div2_div4" style="margin-top: 5%;">
				<div class="product_div1_div2_div4_div1">承诺: </div>
				<div class="product_div1_div2_div4_div2">
					7天退货&emsp;运费险&emsp;公益宝贝
				</div>
				<div class="product_div1_div2_div4_div3">支付: </div>
				<div class="product_div1_div2_div4_div2">
					银行卡 &emsp; 支付宝
				</div>
			</div>
		</div>
		
		<div class="product_div1_div3">
			<div class="product_div1_div3_div1" style="cursor: pointer;">
				<div class="product_div1_div3_div1_div1">
					${merchant.m_name }
				</div>
				<div class="product_div1_div3_div1_div2" onclick="enterAddress()">
					<h3>店铺详情</h3>
					<div style="width: 80%; height: 121px; margin-top: 10%; margin-left: 9.5%; overflow: hidden; text-align: center;">
						<img alt="${merchant.m_image }" src="${fileImageAction.urlImage }${merchant.m_image }" height="80%" style="border-radius: 10px; margin-top: 8%; border: 1px solid #E0E0E0;">
					</div>
					<div style="font-size: 14px; margin-left: 9.5%; color: #3C3C3C; margin-top: 3%;">
						本店掌柜: 
					</div>
					<div style="font-size: 14px; margin-left: 45%; color: #FD5809; font-weight: bold;">
						${merchant.user.username }
					</div>
					<div style="font-size: 14px; margin-left: 9.5%; color: #3C3C3C; margin-top: 2%;">
						开店时间:
					</div>
					<div style="font-size: 14px; margin-left: 45%; color: #FD5809; font-weight: bold; margin-bottom: 6%;">
						${merchant.m_time }
					</div>
					
				</div>
			</div>
			<div class="product_div1_div3_div2">
				<div class="product_div1_div3_div2_div1">
					本店公告
				</div>
				<div class="product_div1_div3_div2_div2" style="padding-top: 2%;">
					<!-- &emsp;&emsp;热情载客舟迎风扬帆，诚信便民店喜庆开业我们用热忱的心和负责的态度竭诚为您服务。<br />
					&emsp;&emsp;您用满意的微笑让我们做得更好，我们一起让这个地方变成和谐而充满生机的家园。 -->
					&emsp;&emsp;${merchant.notice }
				</div>
			</div>
		</div>
	</div>
	
	<div id="product_div2">
		
		<div class="leftDiv">
			<div class="product_div2_leftDiv_d1">
				店铺宝贝
			</div>
			<div class="product_div2_leftDiv_d2">
				查看所有宝贝
			</div>
			<div class="product_div2_leftDiv_d3">
				<div>羽绒服</div>
				<div>男装</div>
				<div>女装</div>
			</div>
			
			<hr />
			
			<div class="product_div2_leftDiv_d4">
				宝贝最新榜
			</div>
			<hr />
			<div class="product_div2_leftDiv_d5">
				<s:iterator value="listProductTime" var="listProductTimes">
					<div class="product_div2_leftDiv_d5_d1" style="padding-bottom: 12px; cursor: pointer;" onclick="queryProduct('${listProductTimes.p_id }')">
						<div class="product_div2_leftDiv_d5_d1_d1" style="height: 70px;">
							<img alt="${listProductTimes.p_image }"  src="${fileImageAction.urlImage }${listProductTimes.p_image }" width="60%" style="position: relative; top: 50%; left: 30%; transform: translate(-50%,-50%);">
						</div>
						<div class="product_div2_leftDiv_d5_d1_d2">
							<div style="height: 50px; overflow: hidden;">${listProductTimes.p_name }</div>
							<div style="height: 15px;">¥${listProductTimes.p_price }</div>
						</div>
					</div>
					<div style="background: #EEEEEE; width: 100%; height: 2px;">
						
					</div>
				</s:iterator>
			</div>
			<hr />
			
			<div class="product_div2_leftDiv_d4">
				宝贝最热榜
			</div>
			
			<hr />
			
			<div class="product_div2_leftDiv_d5">
				<s:iterator value="listProductHot" var="listProductHots" >
					<div class="product_div2_leftDiv_d5_d1" style="padding-bottom: 12px; cursor: pointer;" onclick="queryProduct('${listProductHots.p_id }')">
						<div class="product_div2_leftDiv_d5_d1_d1" style="height: 65px;">
							<img alt="${listProductHots.p_image }"  src="${fileImageAction.urlImage }${listProductHots.p_image }" width="70%">
						</div>
						<div class="product_div2_leftDiv_d5_d1_d2">
							<div style="height: 50px; overflow: hidden;">${listProductHots.p_name }</div>
							<div>¥${listProductHots.p_price }</div>
						</div>
					</div>
					
					<hr />
				</s:iterator>
				
				
				<hr />
				
			</div>
			
			<hr />
			
		</div>
		
		<div class="centerDiv">
			
			<div class="title">
				<a class="a" href="#aa">宝贝详情</a>
				<a class="a" href="javascript:;">用户评论 ${commentNumber }</a>
				<a class="a" href="#aa">专项服务</a>
			</div>
			
			<div class="content">
				<div class="aa">
					<div class="div1" style="padding-top: 1%; padding-left: 1.5%;">
						<div class="div1_d1">
							<div class="div1_d1_d1">名称：</div>
							<div>${product.p_name }</div>
						</div>
						<div class="div1_d1">
							<div class="div1_d1_d1">月销量：</div>
							<div>${product.sale_volume }件</div>
						</div>
						<div class="div1_d1" style="padding-bottom: 1%;">
							<div class="div1_d1_d1">描述：</div>
							<div>${product.p_desc }</div>
						</div>
					</div>
					<div class="div2">
						<img alt="${listProductHots.p_image }" src="${fileImageAction.urlImage }${product.p_image }" width="100%" height="680px;">
					</div>
					
					<div class="div3">
						<font class="font1">价格说明</font>
						
						<hr />
						
						<h5>
							<font class="font2">划线价格<br /></font>
							指商品的专柜价、吊牌价、正品零售价、厂商指导价或该商品的曾经展示过的销售价等，并非原价，仅供参考。
						</h5>
						<h5>
							<font class="font2">未划线价格<br /></font>
							指商品的<font class="font3">实时标价，</font>不因表述的差异改变性质。具体成交价格根据商品参加活动，或会员使用优惠券、积分等发生变化，最终以订单结算页价格为准。
						</h5>
						<h5>
							商家详情页（含主图）以图片或文字形式标注的一口价、促销价、优惠价等价格可能是在使用优惠券、满减或特定优惠活动和时段等情形下的价格，具体请以结算页面的标价、优惠条件或活动规则为准。
						</h5>
						<h5>
							此说明仅当出现价格比较时有效，具体请参见《光光商城价格发布规范》。若商家单独对划线价格进行说明的，以商家的表述为准。
						</h5>
						<div class="div3_d1">
							<div class="div3_d1_d1">
								安全提示： 
							</div>
							<div class="div3_d1_d2">
								交易中请勿使用阿里旺旺以外的聊天工具沟通，不要接收可疑文件和不要点击不明来源的链接，支付前核实好域名和支付详情。 淘宝不会以订单有问题，让您提供任何银行卡、密码、手机验证码！遇到可疑情况可在钱盾“诈骗举报”中进行举报, 安全推荐
								推荐安全软件：  钱盾钱盾  UC浏览器UC浏览器
							</div>
							<div class="div3_d1_d3">
								内容申明： 
							</div>
							<div class="div3_d1_d4">
								淘宝为第三方交易平台及互联网信息服务提供者，淘宝（含网站、客户端等）所展示的商品/服务的标题、价格、详情等信息内容系由店铺经营者发布，其真实性、准确性和合法性均由店铺经营者负责。淘宝提醒用户购买商品/服务前注意谨慎核实。如用户对商品/服务的标题、价格、详情等任何信息有任何疑问的，请在购买前通过阿里旺旺与店铺经营者沟通确认；淘宝存在海量店铺，如用户发现店铺内有任何违法/侵权信息，请立即向淘宝举报并提供有效线索。
							</div>
						</div>
					</div>
				</div>
				
				<!-- 用户评论 -->
				<div class="aa">
					<s:if test='commentNumber == 0'>
						<!-- 没有评论 -->
						<div style="margin-top: 7%; text-align: center;">
							抱歉！此商品还没有用户评论...
						</div>
					</s:if>
					<s:else>
						<!-- 有评论 -->
						<s:iterator value="listProductAllComment" var="listProductAllComments">
							<div class="div4">
								<div class="div4_d1">
									<%-- <div>
										<img alt="用户头像"  src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="50px" height="50px;">
									</div> --%>
									<div class="div4_d1_d1">
										${listProductAllComments.user.username }
									</div>
								</div>
								<div class="div4_d2">
									<div class="div4_d2_d1">
										${listProductAllComments.comment }
									</div>
									<div>
										<img alt="商品图片"  src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="40px" height="40px;">
										<img alt="商品图片"  src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="40px" height="40px;">
									</div>
									<div class="div4_d2_d2">
										${listProductAllComments.commentDate }
									</div>
									
								</div>
							</div>
						
							<hr style="border: 1px solid #BEBEBE; border-style: dashed;"/>
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
				
					<div class="div3">
						<font class="font1">价格说明</font>
						
						<hr />
						
						<h5>
							<font class="font2">划线价格<br /></font>
							指商品的专柜价、吊牌价、正品零售价、厂商指导价或该商品的曾经展示过的销售价等，并非原价，仅供参考。
						</h5>
						<h5>
							<font class="font2">未划线价格<br /></font>
							指商品的<font class="font3">实时标价，</font>不因表述的差异改变性质。具体成交价格根据商品参加活动，或会员使用优惠券、积分等发生变化，最终以订单结算页价格为准。
						</h5>
						<h5>
							商家详情页（含主图）以图片或文字形式标注的一口价、促销价、优惠价等价格可能是在使用优惠券、满减或特定优惠活动和时段等情形下的价格，具体请以结算页面的标价、优惠条件或活动规则为准。
						</h5>
						<h5>
							此说明仅当出现价格比较时有效，具体请参见《光光商城价格发布规范》。若商家单独对划线价格进行说明的，以商家的表述为准。
						</h5>
						<div class="div3_d1">
							<div class="div3_d1_d1">
								安全提示： 
							</div>
							<div class="div3_d1_d2">
								交易中请勿使用阿里旺旺以外的聊天工具沟通，不要接收可疑文件和不要点击不明来源的链接，支付前核实好域名和支付详情。 淘宝不会以订单有问题，让您提供任何银行卡、密码、手机验证码！遇到可疑情况可在钱盾“诈骗举报”中进行举报, 安全推荐
								推荐安全软件：  钱盾钱盾  UC浏览器UC浏览器
							</div>
							<div class="div3_d1_d3">
								内容申明： 
							</div>
							<div class="div3_d1_d4">
								淘宝为第三方交易平台及互联网信息服务提供者，淘宝（含网站、客户端等）所展示的商品/服务的标题、价格、详情等信息内容系由店铺经营者发布，其真实性、准确性和合法性均由店铺经营者负责。淘宝提醒用户购买商品/服务前注意谨慎核实。如用户对商品/服务的标题、价格、详情等任何信息有任何疑问的，请在购买前通过阿里旺旺与店铺经营者沟通确认；淘宝存在海量店铺，如用户发现店铺内有任何违法/侵权信息，请立即向淘宝举报并提供有效线索。
							</div>
						</div>
					</div>
				</div>
				<!-- 专项服务 -->
				<div class="aa">
					<div class="div5">
						<font class="div5_font">&emsp;//////////////////////////////////////////////////////&emsp;<font class="div5_font_font">卖家承诺以下服务</font>&emsp;//////////////////////////////////////////////////////&emsp;</font>
					</div>
					<div class="div6">
						<div class="div6_d1">
							<img alt="8天退货"  src="${pageContext.request.contextPath }/images/products/products_zx01.png">
						</div>
						<div class="div6_d2">
							<font class="div6_d2_font">8天退货</font><br />
						</div>
						<div class="div6_d3">
							退货条件：在商品签收8天内，商品包装完好、吊牌齐全、未洗涤，可提出退货申请。<br />
							邮费说明：包邮商品发货邮费卖家承担；非包邮商品发货邮费买家承担；退货邮费买家承担。
						</div>
					</div>
					
					<div class="div6">
						<div class="div6_d1">
							<img alt="消费保障" src="${pageContext.request.contextPath }/images/products/products_zx02.png">
						</div>
						<div class="div6_d2">
							<font class="div6_d2_font">消费者保障服务</font><br />
						</div>
						<div class="div6_d3">
							该卖家已缴纳 2000.0 元保证金。<br />
							在确认收货 15 天内，如有商品质量问题、描述不符或未收到货等，您有权申请退款或退货，来回邮费由卖家承担。
						</div>
					</div>
					
					<div class="div3">
						<font class="font1">价格说明</font>
						
						<hr />
						
						<h5>
							<font class="font2">划线价格<br /></font>
							指商品的专柜价、吊牌价、正品零售价、厂商指导价或该商品的曾经展示过的销售价等，并非原价，仅供参考。
						</h5>
						<h5>
							<font class="font2">未划线价格<br /></font>
							指商品的<font class="font3">实时标价，</font>不因表述的差异改变性质。具体成交价格根据商品参加活动，或会员使用优惠券、积分等发生变化，最终以订单结算页价格为准。
						</h5>
						<h5>
							商家详情页（含主图）以图片或文字形式标注的一口价、促销价、优惠价等价格可能是在使用优惠券、满减或特定优惠活动和时段等情形下的价格，具体请以结算页面的标价、优惠条件或活动规则为准。
						</h5>
						<h5>
							此说明仅当出现价格比较时有效，具体请参见《光光商城价格发布规范》。若商家单独对划线价格进行说明的，以商家的表述为准。
						</h5>
						<div class="div3_d1">
							<div class="div3_d1_d1">
								安全提示： 
							</div>
							<div class="div3_d1_d2">
								交易中请勿使用阿里旺旺以外的聊天工具沟通，不要接收可疑文件和不要点击不明来源的链接，支付前核实好域名和支付详情。 淘宝不会以订单有问题，让您提供任何银行卡、密码、手机验证码！遇到可疑情况可在钱盾“诈骗举报”中进行举报, 安全推荐
								推荐安全软件：  钱盾钱盾  UC浏览器UC浏览器
							</div>
							<div class="div3_d1_d3">
								内容申明： 
							</div>
							<div class="div3_d1_d4">
								淘宝为第三方交易平台及互联网信息服务提供者，淘宝（含网站、客户端等）所展示的商品/服务的标题、价格、详情等信息内容系由店铺经营者发布，其真实性、准确性和合法性均由店铺经营者负责。淘宝提醒用户购买商品/服务前注意谨慎核实。如用户对商品/服务的标题、价格、详情等任何信息有任何疑问的，请在购买前通过阿里旺旺与店铺经营者沟通确认；淘宝存在海量店铺，如用户发现店铺内有任何违法/侵权信息，请立即向淘宝举报并提供有效线索。
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
		
		<div class="rightDiv">
			
		</div>
		
	</div>
	
	<%@ include file="menu_bottom.jsp" %>
</body>
</html>