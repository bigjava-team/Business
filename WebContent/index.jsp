<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/product_top.css" rel="stylesheet" type="text/css">
<link href="css/menu_bottom.css" rel="stylesheet" type="text/css">
<link href="css/index_carousel.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/tools.js"></script>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/index_carousel.js"></script>

<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
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
	
	$(function(){
		$(".xuanfu").mouseover(function(){
			$(".xuanfu").css('display','block');
		});
		
		$(".xuanfu").mouseout(function(){
			$(".xuanfu").css('display','none');
		});
	});
	
	/* $(function(){
		$(".d0101").html("<p>haha</p>" + "<p>" + "hehehe" + "</p>");
	}); */
	
	/* $(function(){
		$(".aaa_d1").mouseover(function(){
			$(".xuanfu").html("盛唐时代，据说有一天，丝绸之路来了一帮西域商贾，傍晚在客栈住宿，见有一女子斥责一老者。商人上前责问：“你何故这般打骂老人？”那女子道：“我训自己的孙子，与你何干？”闻者皆大吃一惊。原来，此女子已200多岁，老汉也已是九旬之人。他受责打是因为不肯遵守族规服用草药，弄得未老先衰、两眼昏花。商人惊诧之余忙向女寿星讨教高寿的秘诀？女寿星见使者一片真诚，便告诉他自己四季服用枸杞。后来枸杞传入中东和西方，被那里的人誉为东方神草。");
		});
	}); */
	
	$(function(){
		$(".aaa_d1").mouseover(function(){
			$(".xuanfu").html(	"<div style='background: red; float: left; width: 64.5%; height: 100%;'>" +
									"<div style='background: #369; width: 100%; height: 33.33%'>" +
										"<div>1" +
										"</div>" +
										"<div>2" +
										"</div>" +
									"</div>" +
									"<div style='background: #693; width: 100%; height: 33.33%'>" +
									"</div>" +
									"<div style='background: #936; width: 100%; height: 33.33%'>" +
									"</div>" +
								"</div>" +
								"<div style='background: yellow; float: left; width: 35.5%;'>hehe</div>");
		});
	});
	
</script>
</head>
<body style="background: #F4F4F4; margin: 0px; padding: 0px;">
	<div class="d0101" style="background: red;"></div>
	<%@ include file="product_top.jsp" %>

	<!-- <div style="background: red; width: 88%; margin-left: 6%; margin-right: 6%; height: 20px;">
		顶部1
	</div>
	<div style="background: yellow; width: 88%; margin-left: 6%; margin-right: 6%; height: 70px;">
		顶部2
	</div> -->
	
	<div style="background: aqua; overflow: hidden; width: 88%; margin-left: 6%; margin-right: 6%; margin-bottom: 8px;">
		<div style="background: #FF5000; color: #FFF; font-size: 16px; width: 16%; height: 30px; float: left; text-align: center; line-height: 30px;">
			主题市场
		</div>
		<div style="background: #FF8300; color: #FFF; width: 84%; height: 30px; line-height: 30px; float: left;">
			<a>淘宝</a>
			<a>天猫</a>
			<a>京东</a>
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
		<div class="bbb" style="background: red; width: 59%; float: left; margin-left: 0.8%;">
			<div id="middle_carousel" style="background: yellow; overflow: hidden; height: 56%;">
				<%-- <div style="background: #D26900; display: table; float: left; overflow: hidden; position: relative; width: 74%; height: 100%; line-height: 100%; margin-top: 5px; margin-right: 1%; padding-top: 0px;">
					<span style="display: table-cell; vertical-align: middle; margin: 0px; padding: 0px;">
						<img alt="tupian" src="${pageContext.request.contextPath }/images/products/aaa002.jpg" width="100%" height="290px">
					</span>
				</div> --%>
				<div id="carousel">
					<ul id="carousel_ul">
						<li><img src="images/index/1.jpg" name="carousel_ul_img"  /></li>
						<li><img src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" name="carousel_ul_img" /></li>
						<li><img src="images/index/3.jpg" name="carousel_ul_img" /></li>
						<li><img src="images/index/4.jpg" name="carousel_ul_img" /></li>
						<li><img src="images/index/5.jpg" name="carousel_ul_img" /></li>
						<li><img src="images/index/1.jpg" name="carousel_ul_img" /></li> 
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
					广告
				</div>
			</div>
			
			<div style="background: yellow; overflow: hidden; height: 7%;">
				介绍
			</div>
			<!-- 284 520 -->
			<div style="background: aqua; overflow: hidden; height: 39%;">
				<div style="background: #FF8000; float: left; width: 74%; height: 100%; margin-right: 1%;">
					图片轮播
				</div>
				<div style="background: #D26900; float: left; width: 23.5%; height: 100%;">
					广告
				</div>
			</div>
		</div>
		<div class="ccc" style="background: #79FF79; width: 24%; height: 270px; float: left;">
			下右侧
		</div>
		
		<div class="xuanfu" style="background: #FFF; display: none; position: absolute; width: 52.7%; float: left; margin-left: 14.1%; margin-top: 30px; border: 2px solid red; padding: 1% 1.5% 1% 1.8%;">
		
		</div>
	</div>
	
	<div style="overflow: hidden; margin-bottom: 8px;">
		<div style="background: #79FF79; width: 43.6%; margin-left: 6%; margin-right: 0.8%; float: left;">
			<div style="background: #FFF; height: 10%; font-weight: bold; font-size: 18px; color: #FF9F00; padding: 12px 0px 12px 2%; border-bottom: 1px solid #F4F4F4">
				| 最新商品
			</div>
			<div style="background: red; overflow: hidden; margin: 0px 0%;">
				<div style="background: #FFF; border: 1px solid yellow; width: 33.33%; float: left; height: 31%; padding-top: 15px; padd">
					<div style="text-align: center;">
						<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
					</div>
					<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
						商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
					</div>
					<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
						¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
					</div>
					<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
						销量:12345
					</div>
				</div>
				
				<div style="background: #FFF; border: 1px solid #FFF; width: 33.33%; float: left; height: 31%; padding-top: 15px; padd">
					<div style="text-align: center;">
						<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
					</div>
					<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
						商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
					</div>
					<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
						¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
					</div>
					<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
						销量:12345
					</div>
				</div>
				
				<div style="background: #FFF; border: 1px solid #FFF; width: 33.33%; float: left; height: 31%; padding-top: 15px; padd">
					<div style="text-align: center;">
						<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
					</div>
					<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
						商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
					</div>
					<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
						¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
					</div>
					<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
						销量:12345
					</div>
				</div>
			</div>
			
			<div style="background: red; overflow: hidden; margin: 0px 0%;">
				<div style="background: #FFF; border: 1px solid red; width: 33.33%; float: left; height: 31%; padding-top: 15px; padd">
					<div style="text-align: center;">
						<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
					</div>
					<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
						商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
					</div>
					<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
						¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
					</div>
					<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
						销量:12345
					</div>
				</div>
				
				<div style="background: #FFF; border: 1px solid red; width: 33.33%; float: left; height: 31%; padding-top: 15px; padd">
					<div style="text-align: center;">
						<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
					</div>
					<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
						商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
					</div>
					<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
						¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
					</div>
					<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
						销量:12345
					</div>
				</div>
				
				<div style="background: #FFF; border: 1px solid red; width: 33.33%; float: left; height: 31%; padding-top: 15px; padd">
					<div style="text-align: center;">
						<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
					</div>
					<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
						商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
					</div>
					<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
						¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
					</div>
					<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
						销量:12345
					</div>
				</div>
			</div>
			
		</div>
		
		<div style="background: #79FF79; width: 43.6%; margin-right: 6%; margin-right: 0.4%; float: left;">
			<div style="background: #79FF79; width: 100%; margin-right: 0.8%; float: left;">
				<div style="background: #FFF; height: 10%; font-weight: bold; font-size: 18px; color: #FF9F00; padding: 12px 0px 12px 2%; border-bottom: 1px solid #F4F4F4">
					| 最热商品
				</div>
				<div style="background: red; overflow: hidden; margin: 0px 0%;">
					<div style="background: #FFF; border: 1px solid red; width: 33.33%; float: left; height: 31%; padding-top: 15px; padd">
						<div style="text-align: center;">
							<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
						</div>
						<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
							商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
						</div>
						<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
							¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
						</div>
						<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
							销量:12345
						</div>
					</div>
					
					<div style="background: #FFF; border: 1px solid red; width: 33.33%; float: left; height: 31%; padding-top: 15px; padd">
						<div style="text-align: center;">
							<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
						</div>
						<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
							商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
						</div>
						<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
							¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
						</div>
						<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
							销量:12345
						</div>
					</div>
					
					<div style="background: #FFF; border: 1px solid red; width: 33.33%; float: left; height: 31%; padding-top: 15px; padd">
						<div style="text-align: center;">
							<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
						</div>
						<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
							商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
						</div>
						<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
							¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
						</div>
						<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
							销量:12345
						</div>
					</div>
				</div>
			
				<div style="background: red; overflow: hidden; margin: 0px 0%;">
					<div style="background: #FFF; border: 1px solid red; width: 33.33%; float: left; height: 31%; padding-top: 15px; padd">
						<div style="text-align: center;">
							<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
						</div>
						<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
							商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
						</div>
						<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
							¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
						</div>
						<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
							销量:12345
						</div>
					</div>
					
					<div style="background: #FFF; border: 1px solid red; width: 33.33%; float: left; height: 31%; padding-top: 15px; padd">
						<div style="text-align: center;">
							<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
						</div>
						<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
							商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
						</div>
						<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
							¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
						</div>
						<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
							销量:12345
						</div>
					</div>
					
					<div style="background: #FFF; border: 1px solid red; width: 33.33%; float: left; height: 31%; padding-top: 15px; padd">
						<div style="text-align: center;">
							<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
						</div>
						<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
							商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
						</div>
						<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
							¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
						</div>
						<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
							销量:12345
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div style="background: #28FF28; overflow: hidden; width: 88%; margin-left: 6%; margin-right: 6%;">
		<div style="background: #FFF; height: 10%; font-weight: bold; font-size: 18px; color: #FF9F00; padding: 12px 0px 12px 1%; border-bottom: 1px solid #F4F4F4">
			| 猜你喜欢
		</div>
		<div style="background: red; overflow: hidden; margin: 0px 0%;">
			<div style="background: #FFF; border: 1px solid red; width: 16.66%; float: left; height: 31%; padding-top: 15px; padd">
				<div style="text-align: center;">
					<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
				</div>
				<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
					商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
				</div>
				<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
					¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
				</div>
				<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
					销量:12345
				</div>
			</div>
			
			<div style="background: #FFF; border: 1px solid red; width: 16.66%; float: left; height: 31%; padding-top: 15px; padd">
				<div style="text-align: center;">
					<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
				</div>
				<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
					商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
				</div>
				<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
					¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
				</div>
				<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
					销量:12345
				</div>
			</div>
			
			<div style="background: #FFF; border: 1px solid red; width: 16.66%; float: left; height: 31%; padding-top: 15px; padd">
				<div style="text-align: center;">
					<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
				</div>
				<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
					商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
				</div>
				<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
					¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
				</div>
				<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
					销量:12345
				</div>
			</div>
			
			<div style="background: #FFF; border: 1px solid red; width: 16.66%; float: left; height: 31%; padding-top: 15px; padd">
				<div style="text-align: center;">
					<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
				</div>
				<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
					商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
				</div>
				<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
					¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
				</div>
				<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
					销量:12345
				</div>
			</div>
			
			<div style="background: #FFF; border: 1px solid red; width: 16.66%; float: left; height: 31%; padding-top: 15px; padd">
				<div style="text-align: center;">
					<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
				</div>
				<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
					商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
				</div>
				<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
					¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
				</div>
				<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
					销量:12345
				</div>
			</div>
			
			<div style="background: #FFF; border: 1px solid red; width: 16.66%; float: left; height: 31%; padding-top: 15px; padd">
				<div style="text-align: center;">
					<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
				</div>
				<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
					商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
				</div>
				<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
					¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
				</div>
				<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
					销量:12345
				</div>
			</div>
		</div>
		
		<div style="background: red; overflow: hidden; margin: 0px 0%;">
			<div style="background: #FFF; border: 1px solid red; width: 16.66%; float: left; height: 31%; padding-top: 15px; padd">
				<div style="text-align: center;">
					<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
				</div>
				<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
					商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
				</div>
				<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
					¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
				</div>
				<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
					销量:12345
				</div>
			</div>
			
			<div style="background: #FFF; border: 1px solid red; width: 16.66%; float: left; height: 31%; padding-top: 15px; padd">
				<div style="text-align: center;">
					<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
				</div>
				<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
					商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
				</div>
				<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
					¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
				</div>
				<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
					销量:12345
				</div>
			</div>
			
			<div style="background: #FFF; border: 1px solid red; width: 16.66%; float: left; height: 31%; padding-top: 15px; padd">
				<div style="text-align: center;">
					<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
				</div>
				<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
					商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
				</div>
				<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
					¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
				</div>
				<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
					销量:12345
				</div>
			</div>
			
			<div style="background: #FFF; border: 1px solid red; width: 16.66%; float: left; height: 31%; padding-top: 15px; padd">
				<div style="text-align: center;">
					<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
				</div>
				<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
					商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
				</div>
				<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
					¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
				</div>
				<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
					销量:12345
				</div>
			</div>
			
			<div style="background: #FFF; border: 1px solid red; width: 16.66%; float: left; height: 31%; padding-top: 15px; padd">
				<div style="text-align: center;">
					<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
				</div>
				<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
					商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
				</div>
				<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
					¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
				</div>
				<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
					销量:12345
				</div>
			</div>
			
			<div style="background: #FFF; border: 1px solid red; width: 16.66%; float: left; height: 31%; padding-top: 15px; padd">
				<div style="text-align: center;">
					<img alt="商品图片" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="90%">
				</div>
				<div style="font-size: 12px; padding-left: 5%; padding-right: 5%; height: 32px; overflow: hidden;">
					商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称商品名称
				</div>
				<div style="color: #FF4400; padding-left: 5%; padding-right: 5%; overflow: hidden;">
					¥<font style="font-size: 22px; font-weight: bold;">1999999999.00</font>
				</div>
				<div style="color: #9CA0AA; font-size: 12px; text-align: right; padding-bottom: 10px; padding-right: 5%;">
					销量:12345
				</div>
			</div>
		</div>
		
	</div>
	
	<%@ include file="menu_bottom.jsp" %>
</body>
</html>