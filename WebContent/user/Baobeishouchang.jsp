<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>宝贝收藏</title>
<style type="text/css">
.wenzi1 {
	font-size: 35px;
	color: white;
	font-family: "Times New Roman", Georgia, Serif;
}

.wenzi2 {
	color: white;
	font-family: Georgia, serif;
	font-size: 25px;
}

.dianpushouchang_div {
	float: left;
	width: 10%;
	text-align: center;
	height: 60px;
	line-height: 60px;
}
.dianpushouchang_div a{
	text-decoration: none;
}
.dianpushouchang_div2{
	float:left;
	width: 30%;
	text-align: center;
}

</style>
<script type="text/javascript">
	function show(id) {
		var div1 =document.getElementById("div2");
		div1.style.background = "rgba(0, 0, 255,0.1)";
	}
	
	function back(id) {
		var div1 =document.getElementById("div2");
		div1.style.background = " #F40";
	}

</script>
</head>
<body style="margin: 0;padding: 0;overflow-x: hidden;">
<div>
	<%@include file="top.jsp"%>
</div>
<div style="background-color: #F40; width: 100%; height: 60px; line-height: 60px;">
		<div style="margin-left: 14%; float: left;">
			<font class="wenzi1">光光</font> <font class="wenzi2">收藏夹</font>
		</div>
			
		<div class="dianpushouchang_div" id="div1" style="margin-left: 46%;background:rgba(0, 0, 255,0.1);">
			<a href="Baobeishouchang.jsp"><font class="wenzi2">宝贝收藏</font></a>
		</div>
	
		<div class="dianpushouchang_div" id="div2" onmouseover="show()" onmouseout="back()">
			<a href="DianpuShouChang.jsp"><font class="wenzi2">店铺收藏</font></a>
		</div>
		<div style="clear: both;"></div>
	</div>
	<div style="width: 74%;margin: 0 auto;border-bottom:#e5e5e5 1px solid;padding-bottom: 1% ">
		<div style="border-bottom:#e5e5e5 2px solid;height: 46px;line-height: 46px;width: 100%">
			<div style="width:41%;color: #f40;border-bottom: #ff4200 2px solid;">
				收藏的商品#后台收藏商品量
			</div>
		</div>
		<div style="width: 100%;padding-top: 2%;padding-bottom: 2%">
				<div class="dianpushouchang_div2">
					<div style="border: #eee 1px solid;height: 200px;width: 80%;margin: 0 auto;display: flex;justify-content: center;align-items: center;" >
						<img alt="" src="../images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" height="80%">
					</div><br/><br/>
				#商品名字<br/>
				<font color="red">#商品价格</font><br/>
				</div>
				<div class="dianpushouchang_div2" style="margin-left: 5%">
					<div style="border: #eee 1px solid;height: 200px;width: 80%;margin: 0 auto;display: flex;justify-content: center;align-items: center;" >
						<img alt="" src="../images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" height="80%">
					</div><br/><br/>
				#商品名字<br/>
				<font color="red">#商品价格</font><br/>
				</div>
				<div class="dianpushouchang_div2" style="margin-left: 5%">
					<div style="border: #eee 1px solid;height: 200px;width: 80%;margin: 0 auto;display: flex;justify-content: center;align-items: center;" >
						<img alt="" src="../images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" height="80%">
					</div><br/><br/>
				#商品名字<br/>
				<font color="red">#商品价格</font><br/>
				</div>
				<div class="dianpushouchang_div2" style="margin-top: 5%">
					<div style="border: #eee 1px solid;height: 200px;width: 80%;margin: 0 auto;display: flex;justify-content: center;align-items: center;" >
						<img alt="" src="../images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" height="80%">
					</div><br/><br/>
				#商品名字<br/>
				<font color="red">#商品价格</font><br/>
				</div>
				<div class="dianpushouchang_div2" style="margin-left: 5%;margin-top: 5%">
					<div style="border: #eee 1px solid;height: 200px;width: 80%;margin: 0 auto;display: flex;justify-content: center;align-items: center;" >
						<img alt="" src="../images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" height="80%">
					</div><br/><br/>
				#商品名字<br/>
				<font color="red">#商品价格</font><br/>
				</div>
				<div class="dianpushouchang_div2" style="margin-left: 5%;margin-top: 5%">
					<div style="border: #eee 1px solid;height: 200px;width: 80%;margin: 0 auto;display: flex;justify-content: center;align-items: center;" >
						<img alt="" src="../images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" height="80%">
					</div><br/><br/>
				#商品名字<br/>
				<font color="red">#商品价格</font><br/>
				</div>
				<div style="clear: both;"></div>
		</div>
	</div>
	
<div>
	<%@include file="Foot.jsp"%>
	</div>
</body>
</html>