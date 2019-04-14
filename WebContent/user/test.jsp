<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>测试页面</title>

<style type="text/css">
	#product_div1_div1_div1 {
		display: block;
		width: 400px;
		height: 400px;
		position: relative;
		border: 1px solid #ccc;
		float:left;
	}
	
	#float-box {
		width: 400px;
		height: 400px;
		position: relative;
		z-index: 1;
	}
	
	#small-box {
		display: none;
		width: 160px;
		height: 120px;
		position: absolute;
		background: #ffffcc;
		border: 1px solid #ccc;
		filter: alpha(opacity = 50);
		opacity: 0.5;
		cursor: move;
	}
	
	#product_div1_div1_div1_div2 {
		display: none;
		position: absolute;
		top: 0;
		left: 420px;
		width: 400px;
		height: 400px;
		overflow: hidden;
		border: 1px solid #ccc;
		z-index: 1;
	}
	
	#product_div1_div1_div1_div2 img {
		position: absolute;
		z-index: 5;
	}
	.bigtu{
			width:400px;
			height: 400px;
	}
	
	.smalltu{
			width:800px;
			height:800px;
	}
</style>

<script type="text/javascript">

	window.onload = function(){
		//获取到需要的元素
		var product_div1_div1_div1 = document.getElementById('product_div1_div1_div1');
		var smallBbox = document.getElementById('small-box');
		var floatBox = document.getElementById('float-box');
		var bigBox = document.getElementById('product_div1_div1_div1_div2');
		var bigBoxImg = bigBox.getElementsByTagName('img')[0];
	  
		floatBox.onmouseover = function(){
			smallBbox.style.display = "block";
			bigBox.style.display = "block";
		}
		
		floatBox.onmouseout = function(){
			smallBbox.style.display = "none";
			bigBox.style.display = "none";
		}
		
		floatBox.onmousemove = function(e){
			var _event = e || event;
			console.log(_event.clientY);
			var l = _event.clientX - product_div1_div1_div1.offsetLeft - floatBox.offsetLeft - smallBbox.offsetWidth/2;//除2是因为让鼠标点出现在放大遮罩的中心位置
			var t = _event.clientY - product_div1_div1_div1.offsetTop - floatBox.offsetTop - smallBbox.offsetHeight/2;
			  
			var product_div1_div1_div1Width = product_div1_div1_div1.offsetWidth;
			var product_div1_div1_div1Height = product_div1_div1_div1.offsetHeight;
			  
			  
			var smallBboxWidth = smallBbox.offsetWidth;
			var smallBboxHeight = smallBbox.offsetHeight;
			//鼠标可以移动的最大XY的距离
			var maxX = product_div1_div1_div1Width - smallBboxWidth;
			var maxY = product_div1_div1_div1Height - smallBboxHeight;
			  
			  
			l = Math.min(maxX,Math.max(0,l));
			t = Math.min(maxY,Math.max(0,t));
			smallBbox.style.left = l +"px";
			smallBbox.style.top = t +"px";
			  
			  
			var percentX = l / (floatBox.offsetWidth - smallBboxWidth);//求出小图遮罩的坐标占可移动区域的比例
			var percentY = t / (floatBox.offsetHeight - smallBboxHeight);
			  
			  
			bigBoxImg.style.left = -percentX *(bigBoxImg.offsetWidth - bigBox.offsetWidth) +"px";//大图对的移动方向和小图遮罩的移动方向相反
			bigBoxImg.style.top = -percentY*(bigBoxImg.offsetHeight - bigBox.offsetHeight)+"px";
		}
	}
</script>
</head>
<body>
	<div id="product_div1_div1_div1" style="background: red;">
		<div id="float-box">
			<div id="small-box"></div>
			<img src="${pageContext.request.contextPath }/images/products/aaa002.jpg"class="bigtu">
		</div>
		<div id="product_div1_div1_div1_div2">
			<div>
				<img src="${pageContext.request.contextPath }/images/products/aaa002.jpg" class="smalltu">
			</div>
		</div>
	</div>
</body>
</html>
