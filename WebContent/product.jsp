<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品详情页</title>
</head>
<style>
	body{background: red; margin: 0px; padding: 0px;}
	.now{background: blue}
</style>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
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
</script>

<body>
	<div style="width: 100%; height: 150px; background: blue; margin-bottom: 50px;">顶部</div>
	
	<div style="width: 84%; height: 501px; background: yellow; margin-left: 8%; margin-bottom: 25px;">
		<div style="width: 38%; height: 501px; background: blue; float: left">
			<div style="background: #ADADAD; width: 92%; height: 80%; margin-top: 20px; margin-left: 4%; margin-right: 4%; margin-bottom: 15px;">
				<img alt="图片名称" src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100%;" height="100%;">
			</div>
			<div style="background: #ADADAD; width: 100%; height: 60px;">
				<img alt="图片名称" src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="60px;" height="60px;">
				<img alt="图片名称" src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="60px;" height="60px;">
				<img alt="图片名称" src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="60px;" height="60px;">
				<img alt="图片名称" src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="60px;" height="60px;">
				<img alt="图片名称" src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="60px;" height="60px;">
			</div>
		</div>
		
		<div style="width: 45%; height: 501px; background: grey; float: left">
			<div style="height: 50px; margin-left: 3%; margin-right: 5%; margin-bottom: 2%; margin-top: 20px;">
				<font style="font-size: 18px; font-weight: bold;">商品名品名称商品名称商品名称商品名称商品名称商品名称商品名称</font>
			</div>
			
			<div style="background: red; margin: 0% 5% 0% 3%; font-size: 14px; padding: 5px 10px 5px 10px;">
				<div>
					市场价: &emsp;<font style="font-size: 18px; text-decoration: line-through;">¥500.00</font>
				</div>
				<div>
					光光价: &emsp;<font style="font-size: 30px; font-weight: bold;">¥499.00</font>
				</div>
			</div>
			
			<div style="background: yellow; margin: 10px 5% 12px 3%; font-size: 14px; padding: 5px 10px 5px 10px;">
				优惠: &emsp;&emsp;已优惠&emsp;<font style="font-size: 18px; font-weight: bold;">¥1.00</font>
			</div>
			<div style="background: red; margin: 0px 5% 12px 3%; font-size: 14px; padding: 5px 10px 5px 10px;">
				配送: &emsp;&emsp;快递 : &nbsp; 免运费
			</div>
			<div style="background: yellow; margin: 0px 5% 12px 3%; padding: 5px 10px 5px 10px; font-size: 14px;">
				<div style="background: blue; width: 14%; float: left;">颜色: </div>
				<div style="width: 100%; height: 50px; background: green">
					<img alt="图片名称" src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="50px;" height="50px;">
					<img alt="图片名称" src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="50px;" height="50px;">
					<img alt="图片名称" src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="50px;" height="50px;">
					<img alt="图片名称" src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="50px;" height="50px;">
					<img alt="图片名称" src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="50px;" height="50px;">
					<img alt="图片名称" src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="50px;" height="50px;">
				</div>
			</div>
			<form action="" method="post">
				<div style="background: yellow; margin: 0px 5% 12px 3%; padding: 5px 10px 5px 10px; font-size: 14px;">
					<div style="background: blue; width: 14%; float: left;">数量: </div>
					<div style="width: 100%; height: 26px; background: green">
						<input type="text" style="width: 50px; height: 20px;" /> 件
					</div>
				</div>
				<div style="background: yellow; margin: 0px 5% 15px 3%; padding: 0px 10px 0px 10px; font-size: 14px;">
					<input type="submit" value="加入购物车"  style="width: 120px; height: 45px;" />
				</div>
			</form>
			
			<div style="background: yellow; height: 62px; margin: 0px 5% 10px 3%; padding: 5px 10px 5px 10px; font-size: 14px;">
				<div style="background: blue; width: 14%; height: 30px; line-height: 30px; float: left;">承诺: </div>
				<div style="width: 86%; height: 30px; line-height: 30px; background: green; float: left">
					7天退货&emsp;运费险&emsp;公益宝贝
				</div>
				<div style="background: blue; width: 14%; height: 30px; line-height: 30px; clear: none; float: left;">支付: </div>
				<div style="width: 86%; height: 30px; line-height: 30px; background: green; float: left">
					银行卡 &emsp; 支付宝
				</div>
			</div>
		</div>
		
		<div style="width: 17%; height: 100%; background: #ADFEDC; float: left;">
			<div style="width: 100%; height: 320px; background: yellow;">
				<div style="background: blue; width: 100%; height: 40px; font-size: 16px; font-weight: bold; text-align: center; line-height: 40px;">
					店铺名称
				</div>
				<div style="background: green; border:1px solid #666; height:250px; width:90%; margin-left: 5%; margin-top: 15px; position:relative;">
					<h3 style="background:#FFF; display:block; height:20px; width:50px; position:absolute; left:60%; top:-20px; text-align:center; font-size: 10px;">店铺详情</h3>
					<div style="background: red; font-size: 14px; margin-left: 10%; margin-right: 10%; margin-top: 20px;">
						<img alt="店铺图片" src="images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100%" height="100%">
					</div>
					<div style="font-size: 14px; margin-left: 10%; margin-top: 20px;">
						掌柜: 张三
					</div>
					<div style="font-size: 14px; margin-left: 10%; margin-top: 20px;">
						开店时间: 1111
					</div>
					
				</div>
			</div>
			<div style="width: 100%; height: 181px; background: #FFBF59;">
			
			</div>
		</div>
	</div>
	
	<div style="width: 84%; height: 300px; background: blue; margin-left: 7%;">
		
		<div style="width: 18%; background: white; float: left">
			<div class="title"  style="width: 100%; height: 43px; background: yellow;">
				店铺宝贝
			</div>
			<div style="width: 100%; height: 30px; background: blue; font-size: 14px;">
				查看所有宝贝
			</div>
			<div style="width: 100%; height: 30px; background: yellow; font-size: 14px;">
				羽绒服
			</div>
			
			<div style="width: 100%; height: 30px; background: red; font-size: 14px;">
				毛呢大衣
			</div>
			
			<div style="width: 100%; height: 30px; background: blue; font-size: 14px;">
				宝贝最新榜
			</div>
			
			<div style="background: #CCCC99; width: 100%; height: 200px;">
				<div style="background: #808040; width: 100%; height: 50px;">
					<div style="background: yellow; width: 30%; height: 50px; float: left;">
					
					</div>
					<div style="background: red; width: 30%; height: 50px; float: left;">
					
					</div>
				</div>
				<div style="background: #808040; width: 100%; height: 50px;">
					<div style="background: yellow; width: 30%; height: 50px; float: left;">
					
					</div>
					<div style="background: red; width: 30%; height: 50px; float: left;">
					
					</div>
				</div>
			</div>
			
			
			<div style="width: 100%; height: 30px; background: #E2C2DE; font-size: 14px;">
				宝贝最热榜
			</div>
		</div>
		
		<div style="width: 82%; height: 300px; background: #FFBD9D; float: left">
			
			<div class="title"  style="width: 100%; height: 43px; background: black;">
				<a href="#">宝贝详情</a>
				<a href="#">用户评论</a>
				<a href="#">专项服务</a>
			</div>
			
			<div class="content"  style="width: 100%; background: green;">
				<div class="aa"><div>宝贝详情的内容</div>宝贝详情的内容</div>
				<div class="aa">用户评论的内容</div>
				<div class="aa">专项服务的内容</div>
			</div>
			
		</div>
		
	</div>
	
	<div style="width: 100%; height: 200px; margin-top: 100px; background: blue;">
		尾部
	</div>
</body>
</html>