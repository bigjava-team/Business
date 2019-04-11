<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath }/css/product_top.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/menu_bottom.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/index_carousel.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/tools.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/index_carousel.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	 $(function() {
		var OneToThree = '${check }';
		if (OneToThree==null || OneToThree == "") {
			window.location.href="index_showAll.action";
		}
	}); 

	$(function(){
		var a = $(".aaa").height();
		$(".bbb").height(a);
		$(".ccc").height(a);
		$(".xuanfu").height(a - 4);
	});
	
	$(function(){
		$(".aaa").hover(function(){
			$(".xuanfu").css('display','block');
		}, function(){
			$(".xuanfu").css('display','none');
		});
	});
	
	$(function() {
		$(".newestProduct").mouseover(function() {
			$(this).css("cursor", "pointer");
		});
		
		$(".newestProduct a").css({
			"text-decoration": "none",
			"color": "black"
		});
		
		$(".newestProduct a").hover(function() {
			$(this).css("color", "red");
		},function() {
			$(this).css("color", "black");
		});
		
	});
	
	function queryProduct(id) {
		var username = '${sessionScope.loginUser.username }';
		window.location.href="Product_idQueryProduct?method=post&loginUser.username="+username+"&product.p_id="+id+"&paging.presentPage=0";
		/* window.location.href="Product_idQueryProduct?method=post&product.p_id="+id+"&paging.presentPage=0"; */
	}
	
	
	$(function(){
		$(".xuanfu").mouseover(function(){
			$(".xuanfu").css('display','block');
		});
		
		$(".xuanfu").mouseout(function(){
			$(".xuanfu").css('display','none');
		});
	});
	
</script>
</head>
<body style="background: #F4F4F4; margin: 0px; padding: 0px;">
	<div class="d0101" style="background: red;"></div>
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
		<div class="aaa" style="background: #FFF; width: 16%; float: left; color: #666666">
			<!-- 此div 做边距处理，空出位置 遍历时请勿删除 -->
			<div style="height: 5px;"></div>
			
			<div class="aaa_d1" style="font-size: 15px; padding: 6px 0px 6px 13%; background: red">
				<a>女装 / </a>
				<a>男装 /</a>
				<a>内衣</a>
			</div>
			
			<div class="aaa_d2" style="font-size: 15px; padding: 6px 0px 6px 13%;">
				<a>鞋靴 / </a>
				<a>箱包 /</a>
				<a>配件</a>
			</div>
			
			<div class="aaa_d3" style="font-size: 15px; padding: 6px 0px 6px 13%;">
				<a>童装玩具 / </a>
				<a>孕产 /</a>
				<a>用品</a>
			</div>
			
			<div style="font-size: 15px; padding: 6px 0px 6px 13%;">
				<a>家电 / </a>
				<a>数码 /</a>
				<a>手机</a>
			</div>
			
			<div style="font-size: 15px; padding: 6px 0px 6px 13%;">
				<a>美妆 / </a>
				<a>洗护 /</a>
				<a>保健品</a>
			</div>
			
			<div style="font-size: 15px; padding: 6px 0px 6px 13%;">
				<a>珠宝 / </a>
				<a>眼镜 /</a>
				<a>手表</a>
			</div>
			
			<div style="font-size: 15px; padding: 6px 0px 6px 13%;">
				<a>运动 / </a>
				<a>户外 /</a>
				<a>乐器</a>
			</div>
			
			<div style="font-size: 15px; padding: 6px 0px 6px 13%;">
				<a>游戏 / </a>
				<a>动漫 /</a>
				<a>影视</a>
			</div>
			
			<div style="font-size: 15px; padding: 6px 0px 6px 13%;">
				<a>美食 / </a>
				<a>生鲜 /</a>
				<a>零食</a>
			</div>
			
			<div style="font-size: 15px; padding: 6px 0px 6px 13%;">
				<a>鲜花 / </a>
				<a>宠物 /</a>
				<a>农资</a>
			</div>
			
			<div style="font-size: 15px; padding: 6px 0px 6px 13%;">
				<a>工具 / </a>
				<a>装修 /</a>
				<a>建材</a>
			</div>
			
			<div style="font-size: 15px; padding: 6px 0px 6px 13%;">
				<a>家具 / </a>
				<a>家饰 /</a>
				<a>家纺</a>
			</div>
			
			<div style="font-size: 15px; padding: 6px 0px 6px 13%;">
				<a>汽车 / </a>
				<a>二手车 /</a>
				<a>用品</a>
			</div>
			
			<div style="font-size: 15px; padding: 6px 0px 6px 13%;">
				<a>办公 / </a>
				<a>DIY /</a>
				<a>五金电子</a>
			</div>
			
			<div style="font-size: 15px; padding: 6px 0px 6px 13%;">
				<a>百货 / </a>
				<a>餐厨 /</a>
				<a>家庭保健</a>
			</div>
			
			<div style="font-size: 15px; padding: 6px 0px 6px 13%;">
				<a>学习 / </a>
				<a>卡券 /</a>
				<a>本地服务</a>
			</div>
			
			<!-- 此div 做边距处理，空出位置 遍历时请勿删除 -->
			<div style="height: 5px;"></div>
		</div>
		<div class="bbb" style="width: 59%; float: left; margin-left: 0.8%;">
			<div id="middle_carousel" style="overflow: hidden; height: 56%;">
				<div id="carousel">
					<ul id="carousel_ul">
						<li><img src="${pageContext.request.contextPath }/images/index/1.jpg" name="carousel_ul_img"  /></li>
						<li><img src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" name="carousel_ul_img" /></li>
						<li><img src="${pageContext.request.contextPath }/images/index/3.jpg" name="carousel_ul_img" /></li>
						<li><img src="${pageContext.request.contextPath }/images/index/4.jpg" name="carousel_ul_img" /></li>
						<li><img src="${pageContext.request.contextPath }/images/index/5.jpg" name="carousel_ul_img" /></li>
						<li><img src="${pageContext.request.contextPath }/images/index/1.jpg" name="carousel_ul_img" /></li> 
					</ul>
					<div id="navDiv">
						<a href="javascript:;" name="navDiv_a" ></a>
						<a href="javascript:;" name="navDiv_a" ></a>
						<a href="javascript:;" name="navDiv_a" ></a>
						<a href="javascript:;" name="navDiv_a" ></a>
						<a href="javascript:;" name="navDiv_a" ></a>
					</div>
				</div>
				<div style="background: #FF8000; float: left; width: 23.5%; height: 10%; height: 100%; margin-top: 8px;">
					<img alt="" src="${pageContext.request.contextPath }/images/products/bbb006.jpg" width="100%" height="100%">
				</div>
			</div>
			
			<div style="background: red; overflow: hidden; height: 7%; font-size: 18px; font-weight: bold; padding-top: 1%;">
				欢迎开店
			</div>
			<!-- 284 520 -->
			<div style="overflow: hidden; height: 39%;">
				<div style="background: #FF8000; float: left; width: 74%; height: 100%; margin-right: 1%;">
					<img alt="" src="${pageContext.request.contextPath }/images/products/ddd004.jpg" width="100%" height="100%">
				</div>
				<div style="background: #D26900; float: left; width: 23.92%; height: 100%;">
					<img alt="" src="${pageContext.request.contextPath }/images/products/ccc001.jpg" width="100%" height="100%">
				</div>
			</div>
		</div>
		<div class="ccc" style="background: #79FF79; width: 24.2%; height: 270px; float: left; padding: 0px; margin: 0px;">
			<div style="background: red; font-size: 16px; font-weight: bold; text-align: center; width: 100%; padding: 2% 0%;">
				您好！某某用户
			</div>
			<div style="background:aqua; width: 100%; height: 49.7%;">
				<div>
					<img alt="用户头像" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="50%">
				</div>
			</div>
			<div style="background:yellow; width: 100%; height: 7.1%;">
				haha
			</div>
		</div>
		
		<!-- 隐藏的div -->
		<div class="xuanfu" style="background: #FFF; display: none; position: absolute; width: 52.7%; float: left; margin-left: 14.1%; margin-top: 30px; border: 2px solid red; padding: 1% 1.5% 1% 1.8%;">
			<div style="background: #FFF; width: 64.5%; height: 100%; float: left;">
				<div style="background: #369; width: 100%; height: 33.33%;">
					<div style="background: #FFF; width: 100%; height: 21%; font-weight: bold; color: #545454">
						女装
					</div>
					<div style="background: #FFF; width: 100%; height: 79%; color: #666666; font-size: 12px; padding-right: 2%; overflow: hidden;">
						<div style="float: left; margin-right: 3.92%; padding-bottom: 2.4%;"> <a href="#">看上新</a> </div>
						<div style="float: left; margin-right: 3.92%; padding-bottom: 2.4%;"> <a href="#">连衣裙</a> </div>
						<div style="float: left; margin-right: 3.92%; padding-bottom: 2.4%;"> <a href="#">T恤</a> </div>
						<div style="float: left; margin-right: 3.92%; padding-bottom: 2.4%;"> <a href="#">衬衫</a> </div>
						<div style="float: left; margin-right: 3.92%; padding-bottom: 2.4%;"> <a href="#">裤子</a> </div>
						<div style="float: left; margin-right: 3.92%; padding-bottom: 2.4%;"> <a href="#">牛仔裤</a> </div>
						<div style="float: left; margin-right: 3.92%; padding-bottom: 2.4%;"> <a href="#">西装</a> </div>
						<div style="float: left; margin-right: 3.92%; padding-bottom: 2.4%;"> <a href="#">短外套</a> </div>
						<div style="float: left; margin-right: 3.92%; padding-bottom: 2.4%;"> <a href="#">台上盆</a> </div>
						<div style="float: left; margin-right: 3.92%; padding-bottom: 2.4%;"> <a href="#">毛巾杆</a> </div>
						<div style="float: left; margin-right: 3.92%; padding-bottom: 2.4%;"> <a href="#">普通马桶</a> </div>
						<div style="float: left; margin-right: 3.92%; padding-bottom: 2.4%;"> <a href="#">龙头</a> </div>
						<div style="float: left; margin-right: 3.92%; padding-bottom: 2.4%;"> <a href="#">浴缸</a> </div>
						<div style="float: left; margin-right: 3.92%; padding-bottom: 2.4%;"> <a href="#">墙纸</a> </div>
						<div style="float: left; margin-right: 3.92%; padding-bottom: 2.4%;"> <a href="#">壁纸</a> </div>
						<div style="float: left; margin-right: 3.92%; padding-bottom: 2.4%;"> <a href="#">墙布</a> </div>
						<div style="float: left; margin-right: 3.92%; padding-bottom: 2.4%;"> <a href="#">背景墙</a> </div>
					</div>
				</div>
				<div style="background: #369; width: 100%; height: 33.33%;">
					<div style="background: #FFF; width: 100%; height: 21%; font-weight: bold; color: #545454">
						男装
					</div>
					<div style="background: #FFF; width: 100%; height: 79%; color: #666666; font-size: 12px; padding-right: 2%; overflow: hidden;">
						<div style="float: left; margin-right: 3.92%; padding-bottom: 2.4%;"> <a href="#">看上新</a> </div>
					</div>
				</div>
				<div style="background: #369; width: 100%; height: 33.33%;">
					<div style="background: #FFF; width: 100%; height: 21%; font-weight: bold; color: #545454">
						内衣
					</div>
					<div style="background: #FFF; width: 100%; height: 79%; color: #666666; font-size: 12px; padding-right: 2%; overflow: hidden;">
						<div style="float: left; margin-right: 3.92%; padding-bottom: 2.4%;"> <a href="#">看上新</a> </div>
					</div>
				</div>
			</div>
			<div style="background: #FFF; width: 35.5%; height: 100%; float: left;">
				<div style="background: #FFF; width: 100%; height: 33.33%;">
					<div style="background: #FFF; width: 100%; height: 21%; font-weight: bold; color: #545454; text-align: center;">
						猜你喜欢
					</div>
					<div style="background: #FFF; width: 50%; height: 79%; color: #ABABAB; font-size: 12px; overflow: hidden; float: left; margin-bottom: 11%;">
						<div style="margin-left: 12%; margin-right: 6%;">
							<img alt="商品图片"  src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100%">
						</div>
						<div style="margin-left: 12%; margin-right: 6%;">
							商品图片商品图片商品图片商品图片商品图片商品图片
						</div>
					</div>
					<div style="background: #FFF; width: 50%; height: 79%; color: #ABABAB; font-size: 12px; overflow: hidden; float: left; margin-bottom: 11%;">
						<div style="margin-left: 6%; margin-right: 12%;">
							<img alt="商品图片"  src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100%">
						</div>
						<div style="margin-left: 6%; margin-right: 12%;">
							商品图片商品图片商品图片商品图片商品图片商品图片
						</div>
					</div>
					<div style="background: #FFF; width: 50%; height: 79%; color: #ABABAB; font-size: 12px; overflow: hidden; float: left; margin-bottom: 11%;">
						<div style="margin-left: 12%; margin-right: 6%;">
							<img alt="商品图片"  src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100%">
						</div>
						<div style="margin-left: 12%; margin-right: 6%;">
							商品图片商品图片商品图片商品图片商品图片商品图片
						</div>
					</div>
					<div style="background: #FFF; width: 50%; height: 79%; color: #ABABAB; font-size: 12px; overflow: hidden; float: left; margin-bottom: 11%;">
						<div style="margin-left: 6%; margin-right: 12%;">
							<img alt="商品图片"  src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100%">
						</div>
						<div style="margin-left: 6%; margin-right: 12%;">
							商品图片商品图片商品图片商品图片商品图片商品图片
						</div>
					</div>
					<div style="background: #FFF; width: 50%; height: 79%; color: #ABABAB; font-size: 12px; overflow: hidden; float: left; margin-bottom: 11%;">
						<div style="margin-left: 12%; margin-right: 6%;">
							<img alt="商品图片"  src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100%">
						</div>
						<div style="margin-left: 12%; margin-right: 6%;">
							商品图片商品图片商品图片商品图片商品图片商品图片
						</div>
					</div>
					<div style="background: #FFF; width: 50%; height: 79%; color: #ABABAB; font-size: 12px; overflow: hidden; float: left;  margin-bottom: 11%;">
						<div style="margin-left: 6%; margin-right: 12%;">
							<img alt="商品图片"  src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100%">
						</div>
						<div style="margin-left: 6%; margin-right: 12%;">
							商品图片商品图片商品图片商品图片商品图片商品图片
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div style="overflow: hidden; margin-bottom: 8px;">
		<div style="background: #79FF79; width: 43.6%; margin-left: 6%; margin-right: 0.8%; float: left;">
			<div style="background: #FFF; height: 10%; font-weight: bold; font-size: 18px; color: #FF9F00; padding: 12px 0px 12px 2%; border-bottom: 1px solid #F4F4F4">
				| 最新商品
			</div>	
			<div style="background: red; overflow: hidden; margin: 0px 0%;">
				<s:iterator value="listProductTime"  var="listProductTimes">
					<div class="newestProduct" onclick="queryProduct(this.id)" id="${listProductTimes.p_id}" style="background: #FFF; border: 1px solid yellow; width: 33.33%; float: left; height: 31%; padding-top: 15px; padd" >
						<div style="text-align: center; height: 196px; overflow: hidden;">
							<img alt="商品图片" src="${fileImageAction.urlImage }${listProductTimes.p_image }" width="90%" height="100%">
						</div>
						<div class="product_name" style="font-size: 14px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden; color: black;" value="${listProductTimes.p_id }"> 
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
				<div style="background: #FFF; height: 10%; font-weight: bold; font-size: 18px; color: #FF9F00; padding: 12px 0px 12px 2%; border-bottom: 1px solid #F4F4F4">
					| 最热商品
				</div>
				<div style="background: red; overflow: hidden; margin: 0px 0%;">
					<s:iterator value="listProductHot"  var="listProductHots">
						<div style="background: #FFF; border: 1px solid yellow; width: 33.33%; float: left; height: 31%; padding-top: 15px; padd">
							<div style="text-align: center; height: 196px; overflow: hidden;">
								<img alt="商品图片" src="${fileImageAction.urlImage }${listProductHots.p_image }" width="90%" height="100%">
							</div>
							<div style="font-size: 14px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
								${listProductHots.p_name }
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
		<div style="background: #FFF; height: 10%; font-weight: bold; font-size: 18px; color: #FF9F00; padding: 12px 0px 12px 1%; border-bottom: 1px solid #F4F4F4">
			| 猜你喜欢
		</div>
		<div style="background: red; overflow: hidden; margin: 0px 0%;">
			<s:iterator value="listAllCommentProduct" var="listAllCommentProducts" >
				<div style="background: #FFF; border: 1px solid red; width: 16.66%; float: left; height: 31%; padding-top: 15px; padd">
					<div style="text-align: center; height: 196px; overflow: hidden;">
						<img alt="商品图片" src="${fileImageAction.urlImage }${listAllCommentProducts.p_image}" width="90%" height="100%">
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
	
	<%@ include file="menu_bottom.jsp" %>
</body>
</html>