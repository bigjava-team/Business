<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>店铺主页</title>
<link rel="stylesheet" href="../css/index.css">
<link href="../css/style.css" rel="stylesheet" />
<style type="text/css">
.page4 h2 {
	margin: auto !important;
	position: absolute !important;
	top: 0 !important;
	left: 0;
	bottom: 0;
	right: 0;
	height: 100px;
	transform: none;
	transition: all 3s;
}

.ani {
	transform: scale(3) rotate(360deg) !important;
}

body {
	margin: 0px;
	padding: 0px;
	overflow-x: hidden;
	font-family: "Microsoft JhengHei";
}

.head {
	width: 100%;
	padding-top: 7%;
	background-color: red;
}

.head2 {
	width: 16.5%;
	background-color: #95C0F6;
	float: left;
	padding-top: 8.6%;
}

.center1 {
	margin-top: 1%;
}

.head2di {
	padding-bottom: 12.7%;
	padding-top: 5%;
	background-color: #3F7FCE;
}

.one {
	text-align: center;
	background-color: #3F7FCE;
	width: 100%;
	color: white;
	padding-top: 0.5%;
	padding-bottom: 0.5%;
}

.two {
	background-color: yellow;
	padding-bottom: 6%;
	padding-top: 5.5%;
	width: 100%;
	text-align: center;
}

.headcenter {
	width: 66.8%;
	float: left;
}

.center2 {
	margin: 0 auto;
	background-color: red;
	width: 60%;
}

.center3 {
	margin: 0 auto;
	width: 66.8%;
}

.kongge {
	margin-top: 1%;
}

.three {
	padding-top: 2%;
}

.four {
	background-color: red;
}

.center4 {
	margin: 0 auto;
	width: 66.8%;
	background-color: red;
	margin-top: 2%;
}

.left {
	float: left;
	width: 20%;
	border-color: green;
}

.dj1 {
	width: 99%;
	border: 1px solid #EEE;
}

.dj2 {
	width: 99%;
	display: none;
	border: 1px solid #EEE;
}

.as {
	width: 50%;
	float: left;
	text-align: center;
}

.as:hover {
	background-color: white;
}

.bs {
	text-align: center;
	width: 50%;
	float: left;
}

.bs:hover {
	background-color: white;
}

.shangping {
	text-align: center;
	font-size: 12px;
	margin-top: 20%;
	line-height: 220%
}

.shangping a {
	color: black;
	text-decoration: none;
}

.shangping a:hover {
	color: #3F7FCE;
}

.right {
	float: right;
	width: 78%;
}

.shangping2 {
	margin-top: 3%;
	padding-top: 10%;
	padding-bottom: 2%;
	width: 28%;
	float: left;
	margin-left: 3%;
	border: 1px solid #e4eaee;
	background-color: #fff;
	line-height: 220%
}

.shangping2 a {
	color: black;
	text-decoration: none;
}

.shangping2 a:hover {
	color: #3F7FCE;
}

.clear {
	clear: both;
}

.box {
	width: 100%;
	height: 100%;
}

.inner {
	width: 100%;
	height: 200px;
	position: relative;
	overflow: hidden;
}

.inner img {
	width: 500px;
	height: 300px;
	vertical-align: top
}

ul {
	width: 1000%;
	position: absolute;
	list-style: none;
	left: 0;
	top: 0;
}

.inner li {
	float: left;
}

ol {
	position: absolute;
	height: 20px;
	right: 20px;
	bottom: 20px;
	text-align: center;
	padding: 5px;
}

ol li {
	display: inline-block;
	width: 20px;
	height: 20px;
	line-height: 20px;
	background-color: #fff;
	margin: 5px;
	cursor: pointer;
}

ol .current {
	background-color: red;
}

#arr {
	display: none;
}

#arr span {
	width: 40px;
	height: 40px;
	position: absolute;
	left: 5px;
	top: 50%;
	margin-top: -20px;
	background: #fff;
	cursor: pointer;
	line-height: 40px;
	text-align: center;
	font-weight: bold;
	font-family: '黑体';
	font-size: 30px;
	color: #000;
	opacity: 0.5;
	border: 1px solid #fff;
}

#arr #right {
	right: 5px;
	left: auto;
}
</style>

</head>
<body>
	<div class="head"></div>
	<div class="center1">
		<div class="head2">
			<div class="head2di"></div>
		</div>
		<div class="headcenter">
			<div class="one">店铺首页</div>
			<div class="two">#店铺图片</div>
		</div>
		<div class="head2">
			<div class="head2di"></div>
		</div>
		<div class="clear"></div>
	</div>

	<div class="kongge">
		<div class="one" style="width: 66.8%; margin: 0 auto">商品轮播</div>
		<div class="carousel content-main">

			<ul class="list">
				<li><img src="../TuPian/1.jpg"
					style="width: 100%; height: 100%;"></li>
				<li><img src="../TuPian/2.jpg"
					style="width: 100%; height: 100%;"></li>
				<li><img src="../TuPian/3.jpg"
					style="width: 100%; height: 100%;"></li>
				<li><img src="../TuPian/4.jpg"
					style="width: 100%; height: 100%;"></li>
				<li><img src="../TuPian/1.jpg"
					style="width: 100%; height: 100%;"></li>
				<li><img src="../TuPian/2.jpg"
					style="width: 100%; height: 100%;"></li>
				<li><img src="../TuPian/3.jpg"
					style="width: 100%; height: 100%;"></li>
				<li><img src="../TuPian/4.jpg"
					style="width: 100%; height: 100%;"></li>
				<li><img src="../TuPian/1.jpg"
					style="width: 100%; height: 100%;"></li>
				<li><img src="../TuPian/2.jpg"
					style="width: 100%; height: 100%;"></li>
				<li><img src="../TuPian/3.jpg"
					style="width: 100%; height: 100%;"></li>
			</ul>
		</div>
		<script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="../js/index.js"></script>
		<script type="text/javascript">
			var setting = {
				width : 1000,
				height : 270,
				postWidth : 658,
				postHeight : 270,
				scale : 0.8,
				speed : 500,
				verticalAlign : "center"
			}
			$(".carousel").attr("data-setting",
					'{ "width":900,"height":411,"postWidth":658}')
			Carousel.init($(".carousel"))

			function animationIn(i) {
				console.log(i, 'i\'m in')
				switch (i) {
				case 1:
					$('.page2 h2').fadeIn();
					break;
				case 2:
					$('.page3 h2').animate({
						top : '40%',
						left : '30%'
					}, 1000);
					break;
				case 3:
					setTimeout(function() {
						$('.page4 h2').addClass('ani')
						console.log('hhh')
					}, 0)
					break;
				default:
					;
				}
			}

			function animationOut(i) {
				console.log(i, 'i\'m out')
				switch (i) {
				case 1:
					$('.page2 h2').fadeOut();
					break;
				case 2:
					$('.page3 h2').animate({
						top : 0,
						left : 0
					}, 1000);
					break;
				case 3:
					$('.page4 h2').removeClass('ani')
					break;
				default:
					;
				}
			}
		</script>

		<div style="text-align: center; clear: both">
			<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
			<script src="/follow.js" type="text/javascript"></script>
			<script src='../js/mousewheel.js'></script>
			<script src="../js/jquery.touchSwipe.js"></script>
			<script src="../js/cubeTransition.js"></script>
		</div>

		<div class="kongge">
			<div class="center3">
				<div class="one">商品列表</div>
				<div class="three">
					<div style="float: left;">
						<b><font size="4px">排行榜<font color="blue">&nbsp;&nbsp;TOP5</font></font></b>
					</div>
					<div style="float: left; margin-left: 31%">
						<font size="5px;">本月热销商品</font>
					</div>

					<div class="clear"></div>


					<hr>
				</div>
				<div class="four">
					<div style="text-align: center; clear: both; margin-top: 1%">
					</div>
					<iframe frameborder="0" scrolling="no" src="../user/dianpuzhiye_lunbo.jsp" width="100%"
						height="500px"></iframe>

				</div>
			</div>

			<div class="center4">
				<div id="left" class="left">
					<div class="one">宝贝排行榜</div>
					<div style="padding-bottom: 20%">
						<div style="background-color: #EEE; width: 100%;">
							<div class="as" id="as">销售量</div>
							<div class="bs" id="bs">收藏数</div>
							<div class="clear"></div>
						</div>
						<div class="dj1" id="dg1">
							<div class="shangping">
								<div style="float: left">#背景图片</div>
								<div style="float: right">
									<a href="***">#商品名称</a><br /> <font color="red">¥#商品价格</font><br />
									已售出<font color="red">#商品出售量</font>件
								</div>
								<div class="clear"></div>
							</div>
							<div class="shangping">
								<div style="float: left">#背景图片</div>
								<div style="float: right">
									<a href="***">#商品名称</a><br /> <font color="red">¥#商品价格</font><br />
									已售出<font color="red">#商品出售量</font>件
								</div>
								<div class="clear"></div>
							</div>
							<div class="shangping">
								<div style="float: left">#背景图片</div>
								<div style="float: right">
									<a href="***">#商品名称</a><br /> <font color="red">¥#商品价格</font><br />
									已售出<font color="red">#商品出售量</font>件
								</div>
								<div class="clear"></div>
							</div>
							<div class="shangping">
								<div style="float: left">#背景图片</div>
								<div style="float: right">
									<a href="***">#商品名称</a><br /> <font color="red">¥#商品价格</font><br />
									已售出<font color="red">#商品出售量</font>件
								</div>
								<div class="clear"></div>
							</div>
						</div>
						<div class="dj2" id="dg2">
							<div class="shangping">
								<div style="float: left">#背景图片</div>
								<div style="float: right">
									<a href="***">#商品名称</a><br /> <font color="red">¥#商品价格</font><br />
									已收藏<font color="red">#商品收藏量</font>件
								</div>
								<div class="clear"></div>
							</div>

							<div class="shangping">
								<div style="float: left">#背景图片</div>
								<div style="float: right">
									<a href="***">#商品名称</a><br /> <font color="red">¥#商品价格</font><br />
									已收藏<font color="red">#商品收藏量</font>件
								</div>
								<div class="clear"></div>
							</div>
							<div class="shangping">
								<div style="float: left">#背景图片</div>
								<div style="float: right">
									<a href="***">#商品名称</a><br /> <font color="red">¥#商品价格</font><br />
									已收藏<font color="red">#商品收藏量</font>件
								</div>
								<div class="clear"></div>
							</div>
							<div class="shangping">
								<div style="float: left">#背景图片</div>
								<div style="float: right">
									<a href="***">#商品名称</a><br /> <font color="red">¥#商品价格</font><br />
									已收藏<font color="red">#商品收藏量</font>件
								</div>
								<div class="clear"></div>
							</div>
						</div>


					</div>
				</div>
				<div class="right" id="right">
					<div class="one">宝贝推荐</div>

					<div class="shangping2">
						#商品图片<br /> <a href="***">#商品名称</a> <font color="red">#商品价格</font><br />
						<div style="float: right">
							<font color="#595959">月销:#商品销量</font>
						</div>
					</div>


					<div class="shangping2">
						#商品图片<br /> <font color="red">#商品价格</font><br /> #商品名称<br />
						<div style="float: right">
							<font color="#595959">月销:#商品销量</font>
						</div>
					</div>
					<div class="shangping2">
						#商品图片<br /> <font color="red">#商品价格</font><br /> <font
							color="black">#商品名称</font><br />
						<div style="float: right">
							<font color="#595959">月销:#商品销量</font>
						</div>
					</div>
					<div class="shangping2">
						#商品图片<br /> <font color="red">#商品价格</font><br /> <font
							color="black">#商品名称</font><br />
						<div style="float: right">
							<font color="#595959">月销:#商品销量</font>
						</div>
					</div>
					<div class="shangping2">
						#商品图片<br /> <font color="red">#商品价格</font><br /> <font
							color="black">#商品名称</font><br />
						<div style="float: right">
							<font color="#595959">月销:#商品销量</font>
						</div>
					</div>
					<div class="shangping2">
						#商品图片<br /> <font color="red">#商品价格</font><br /> <font
							color="black">#商品名称</font><br />
						<div style="float: right">
							<font color="#595959">月销:#商品销量</font>
						</div>
					</div>
					<div class="clear"></div>

				</div>

			</div>

		</div>


	</div>

	<script>
		/**
		 *
		 * @param id  传入元素的id
		 * @returns {HTMLElement | null}  返回标签对象，方便获取元素
		 */
		function my$(id) {
			return document.getElementById(id);
		}

		//获取各元素，方便操作
		var box = my$("box");
		var inner = box.children[0];
		var ulObj = inner.children[0];
		var list = ulObj.children;
		var olObj = inner.children[1];
		var arr = my$("arr");
		var imgWidth = inner.offsetWidth;
		var right = my$("right");
		var pic = 0;
		//根据li个数，创建小按钮
		for (var i = 0; i < list.length; i++) {
			var liObj = document.createElement("li");

			olObj.appendChild(liObj);
			liObj.innerText = (i + 1);
			liObj.setAttribute("index", i);

			//为按钮注册mouseover事件
			liObj.onmouseover = function() {
				//先清除所有按钮的样式

				for (var j = 0; j < olObj.children.length; j++) {
					olObj.children[j].removeAttribute("class");
				}
				this.className = "current";
				pic = this.getAttribute("index");
				animate(ulObj, -pic * imgWidth);
			}

		}

		//设置ol中第一个li有背景颜色
		olObj.children[0].className = "current";
		//克隆一个ul中第一个li,加入到ul中的最后=====克隆
		ulObj.appendChild(ulObj.children[0].cloneNode(true));

		var timeId = setInterval(onmouseclickHandle, 1000);
		//左右焦点实现点击切换图片功能
		box.onmouseover = function() {
			arr.style.display = "block";
			clearInterval(timeId);
		};
		box.onmouseout = function() {
			arr.style.display = "none";
			timeId = setInterval(onmouseclickHandle, 1000);
		};

		right.onclick = onmouseclickHandle;
		function onmouseclickHandle() {
			//如果pic的值是5,恰巧是ul中li的个数-1的值,此时页面显示第六个图片,而用户会认为这是第一个图,
			//所以,如果用户再次点击按钮,用户应该看到第二个图片
			if (pic == list.length - 1) {
				//如何从第6个图,跳转到第一个图
				pic = 0;//先设置pic=0
				ulObj.style.left = 0 + "px";//把ul的位置还原成开始的默认位置
			}
			pic++;//立刻设置pic加1,那么此时用户就会看到第二个图片了
			animate(ulObj, -pic * imgWidth);//pic从0的值加1之后,pic的值是1,然后ul移动出去一个图片
			//如果pic==5说明,此时显示第6个图(内容是第一张图片),第一个小按钮有颜色,
			if (pic == list.length - 1) {
				//第五个按钮颜色干掉
				olObj.children[olObj.children.length - 1].className = "";
				//第一个按钮颜色设置上
				olObj.children[0].className = "current";
			} else {
				//干掉所有的小按钮的背景颜色
				for (var i = 0; i < olObj.children.length; i++) {
					olObj.children[i].removeAttribute("class");
				}
				olObj.children[pic].className = "current";
			}
		}
		left.onclick = function() {
			if (pic == 0) {
				pic = list.length - 1;
				ulObj.style.left = -pic * imgWidth + "px";
			}
			pic--;
			animate(ulObj, -pic * imgWidth);
			for (var i = 0; i < olObj.children.length; i++) {
				olObj.children[i].removeAttribute("class");
			}
			//当前的pic索引对应的按钮设置颜色
			olObj.children[pic].className = "current";
		};

		//设置任意的一个元素,移动到指定的目标位置
		function animate(element, target) {
			clearInterval(element.timeId);
			//定时器的id值存储到对象的一个属性中
			element.timeId = setInterval(function() {
				//获取元素的当前的位置,数字类型
				var current = element.offsetLeft;
				//每次移动的距离
				var step = 10;
				step = current < target ? step : -step;
				//当前移动到位置
				current += step;
				if (Math.abs(current - target) > Math.abs(step)) {
					element.style.left = current + "px";
				} else {
					//清理定时器
					clearInterval(element.timeId);
					//直接到达目标
					element.style.left = target + "px";
				}
			}, 10);
		}

		//div切换
		window.onload = function() {
			var x1 = document.getElementById("as");
			x1.onmouseover = function() {
				var xd1 = document.getElementById("dg1");
				xd1.style.display = 'block'
				var xx1 = document.getElementById("dg2");
				xx1.style.display = 'none'
			}
			var x2 = document.getElementById("bs");
			x2.onmouseover = function() {
				var xd1 = document.getElementById("dg2");
				xd1.style.display = 'block'
				var xx1 = document.getElementById("dg1");
				xx1.style.display = 'none'
			}
		}
	</script>
</body>
</html>