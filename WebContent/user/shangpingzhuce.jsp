<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>开店页面</title>

<style type="text/css">
body, select, textarea {
	font-size: 1.1em
}

body, html, input {
	font-family: "微软雅黑";
}

body {
	overflow-x: hidden;
}

.all {
	width: 100%;
	height: 100%;
}

.head {
	width: 100%;
	height: 20%;
	color: white;
}

.headone {
	width: 100%;
	padding-top: 0.5%;
	padding-bottom: 0.5%;
	background: #D0D0D0;
	color: #3C3C3C;
}

.headone a {
	color: #3C3C3C;
	text-decoration: none;
}

.headone a:hover {
	color: #8E8E8E
}

.headtwo {
	background: -webkit-linear-gradient(left, #FFCC00, #FFCC33);
	background: -o-linear-gradient(right, #FFCC00, #FFCC33);
	background: -moz-linear-gradient(right, #FFCC00, #FFCC33);
	background: linear-gradient(to right, #FFCC00, #FFCC33);
	width: 100%;
	padding-top: 1%;
	padding-bottom: 1%;
	height: 66%;
	color: white;
}

.headtwo a {
	color: white;
	text-decoration: none;
}

.headtwo a:hover {
	color: yellow
}

.body {
	margin: 20px auto;
	width: 90%;
	height: auto;
	border: 1px solid #BEBEBE;
}

.fangkuai {
	width: 100%;
	margin-top: 2%;
	margin-left: 11.5%;
}

.kaitou {
	color: #8E8E8E;
}

.neirong {
	margin-left: 1%;
}

.ziti {
	color: #4F4F4F;
	float: left;
}

.ziti1 font {
	color: white;
	size: 17px;
}

.ziti2 {
	text-align: center;
	width: 100%;
}

#box1 {
	width: 23%;
	padding-bottom: 1.1%;
	background: #FF9900;
	float: left;
	position: relative;
	background: #FF9900;
}

#box1:after {
	content: "";
	width: 0px;
	height: 23%;
	position: absolute;
	box-sizing: border-box;
	right: -9.8%;
	top: -1px;
	border-top: 75px solid transparent;
	border-left: 30px solid #FF9900;
	border-bottom: 75px solid transparent;
}

#box1:before {
	content: "";
	width: 0px;
	height: 23%;
	position: absolute;
	box-sizing: border-box;
	left: -9.6%;
	background: #06f;
	border-top: 75px solid transparent;
	border-bottom: 75px solid yellow;
}

#box2 {
	width: 23%;
	padding-bottom: 1.3%;
	float: left;
	background: #FF9900;
	position: relative;
	margin-left: 5%;
	float: left;
}

#box2:after {
	content: "";
	width: 0px;
	height: 19.2%;
	position: absolute;
	box-sizing: border-box;
	right: -9.8%;
	top: -1px;
	border-top: 75px solid transparent;
	border-left: 30px solid #FF9900;
	border-bottom: 75px solid transparent;
	border-left: 30px solid #FF9900;
	border-bottom: 75px solid transparent;
	border-top: 75px solid transparent;
	border-left: 30px solid #FF9900;
	border-bottom: 75px solid transparent;
}

#box2:before {
	content: "";
	width: 0px;
	height: 19.0%;
	position: absolute;
	box-sizing: border-box;
	left: -9.6%;
	background: transparent;
	border-top: 75px solid #FF9900;
	border-left: 30px solid transparent;
	border-bottom: 75px solid #FF9900;
}

#box3 {
	width: 23%;
	padding-bottom: 1.3%;
	float: left;
	background: #FF9900;
	position: relative;
	margin-left: 5%;
	float: left;
}

#box3:after {
	content: "";
	width: 0px;
	height: 19%;
	position: absolute;
	box-sizing: border-box;
	right: -9.6%;
	border-top: 75px solid transparent;
	border-bottom: 75px solid transparent;
}

#box3:before {
	content: "";
	width: 0px;
	height: 21%;
	position: absolute;
	box-sizing: border-box;
	left: -9.6%;
	background: #06f;
	border-top: 75px solid #FF9900;
	border-left: 30px solid #fff;
	border-bottom: 75px solid #FF9900;
}

.cont {
	position: fixed;
	top: 25%;
	left: 36%;
	width: 28%;
	height: 25%;
	padding:1% 1% 0.5% 1%;
	border: 10px solid #ddd;
	background-color: lightblue;
	color: white;
	z-index: 1;
	overflow: auto;
	line-height: 200%;
}

.contsubmit {
	margin-top: 5%;
	background-color: #3F7FCE;
	border: 1px solid #3F7FCE;
	color: white;
	padding: 2% 4%;
	width: 28%;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	cursor: pointer;
	background-color: #3F7FCE;
}

.bb {
	text-align: center;
	margin-top: 4%;
	color: #4F4F4F;
}

.button {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 1% 2%;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	-webkit-transition-duration: 0.4s;
	transition-duration: 0.4s;
	cursor: pointer;
}

.button1 {
	background-color: white;
	color: black;
	border: 2px solid #008CBA;
}

.button1:hover {
	background-color: #008CBA;
	color: white;
}

.button2 {
	display: inline-block;
	border-radius: 4px;
	background-color: #FF9900;
	border: none;
	color: #FFFFFF;
	text-align: center;
	font-size: 20px;
	padding: 2.3%;
	width: 17%;
	transition: all 0.5s;
	cursor: pointer;
	margin: 2%;
}

.button2 span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
}

.button2 span:after {
	content: '»';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20%;
	transition: 0.5s;
}

.button2:hover span {
	padding-right: 22%;
}

.button2:hover span:after {
	opacity: 1;
	right: 0;
}

.button3 {
	display: inline-block;
	border-radius: 4px;
	background-color: #FF9900;
	border: none;
	color: #FFFFFF;
	text-align: center;
	font-size: 20px;
	padding: 2.3%;
	width: 17%;
	transition: all 0.5s;
	cursor: pointer;
	margin: 2%;
}

.button3 span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
}

.button3 span:after {
	content: '»';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20%;
	transition: 0.5s;
}

.button3:hover span {
	padding-right: 22%;
}

.button3:hover span:after {
	opacity: 1;
	right: 0;
}

.cc {
	width: 60%;
	border: 1px solid #33CC33;
	background: #eee;
	color: #4F4F4F;
	margin-left: 21%;
	margin-top: 4%;
}

.biaoge {
	border-collapse: collapse;
	cellspacing: 0;
	cellpadding: 0;
	border: 0;
	width: 100%;
	height: 20%;
	vertical-align: middle;
	text-align: center;
	vertical-align: middle;
}

.tr1 {
	background: #eee;
	padding-top: 2%;
	padding-bottom: 2%;
}

td {
	padding-top: 2%;
	padding-bottom: 2%;
}

.dd {
	margin: 0 auto;
	width: 80%;
	margin-top: 5%;
}

.ee {
	margin-top: 4%;
	margin-left: 11%;
	border: 1px solid #9D9D9D;
	width: 80%;
	line-height: 170%;
}

.ff {
	margin-left: 11%;
	color: red;
	line-height: 170%;
	width: 80%;
	margin-top: 2%;
}

.gg {
	margin-top: 4%;
	margin-left: 5%;
}

.ziti {
	color: black;
}

.lianjie {
	text-decoration: none;
	color: #00FF66;
}

.anniudiv {
	margin-left: 36%;
}

.anniudiv2 {
	margin-left: 30%;
}
 #bg{ 
	display: none; 
	position: absolute; 
	top: 0%; 
	left: 0%; 
	width: 100%; 
	height: 132%; 
	background-color: black; 
	z-index:1001; 
	-moz-opacity: 0.3; 
	opacity:.30; 
	filter: alpha(opacity=30);
}
 
#show{ 
	display: none; 
	position: absolute; 
	z-index:1002; 
	overflow: auto;
}
</style>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
function showDiv() { 
	document.getElementById("bg").style.display ="block";
	document.getElementById("show").style.display ="block";
}
 
function hideDiv(){
	document.getElementById("bg").style.display ="none";
	document.getElementById("show").style.display ="none";	
}
	$(document).ready(function() {
		var titles = $("div.title >a");
		var conts = $("div.content >div.aa");
		titles.first().addClass("now").siblings().removeClass("now"); //默认第一个标题添加样式
		conts.first().show().nextAll().hide(); //默认第一个内容显示，其他隐藏
		titles.each(function(index) {
			$(this).click(function() {
				$(this).addClass("now").siblings().removeClass("now"); //给鼠标悬浮上的第index个（即当前）标题添加样式
				conts.eq(index).show().siblings().hide(); //第index个内容显示，其他隐藏
			});
		});
	});

	function one() {
		var dtx = document.getElementById('first');
		dtx.click();
	}

	function two() {
		var dtx = document.getElementById('two');
		dtx.click();
	}

	function three() {
		var dtx = document.getElementById('three');
		dtx.click();
	}

	function yanzhen() {
		var name = document.getElementById("name").value;
		var fileInput = $('#reportXML').get(0).files[0];
		console.info(fileInput);
		if (name == null || name == "") {
			alert("输入店铺名才可申请!");
			return false;
		} else if (name.length < 5) {
			alert("店铺名最少为五位数!");
			return false;
		} else if (name.length > 10) {
			alert("店铺名最多为十位数!");
			return false;
		}

		if (fileInput) {
			$("#reportXMLform").submit();
		} else {
			alert("必须上传图片作为店铺头像!");
			return false;
		}
		alert("申请成功!请耐心等待审核!");
		return true;
	}
</script>

</head>

<body style="margin: 0px; padding: 0px">
	<div class="head">
		<div class="headone">
			<a href="????"> <font size="3px" style="padding-left: 10%">用户名</font></a>
			| <a href="????"> <font size="3px">退出</font>
			</a> <font style="float: right; padding-right: 10%"> <a
				href="????"><font size="2px">光光网首页</font></a> | <a href="????"><font
					size="2px">我买的宝贝</font></a> | <a href="????"><font size="2px">我卖的宝贝
				</font></a>
			</font>
		</div>

		<div class="headtwo">
			<a href="Maijia.jsp"><font size="5px" style="padding-left: 10%">店铺注册页面</font></a>
		</div>
	</div>



	<div class="body">
		<div class="neirong">
			<div class="kaitou">
				<h1>我要开店</h1>
				每一个光光账号最多开一个店铺。开店流程如下:
			</div>

			<div class="fangkuai">

				<div id="box1">
					<div class="ziti">
						<div class="ziti1">
							<font size="9px">1</font>
						</div>
						<div class="ziti2" style="margin-left: 100%">
							<font color="black">选择开店类型</font><br /> <br /> 个人店铺
						</div>
					</div>

				</div>

				<div id="box2">
					<div class="ziti">
						<div class="ziti1">
							<font size="9px">2</font>
						</div>
						<div class="ziti2" style="margin-left: 6%">
							<font color="black">阅读开店通知</font><br /> <br /> 确认自己符合个人店铺的相关规定
						</div>
					</div>
				</div>

				<div id="box3">
					<div class="ziti">
						<div class="ziti1">
							<font size="9px">3</font>
						</div>
						<div class="ziti2" style="margin-left: 10%">
							<font color="black">申请开店认证</font><br /> <br /> 需提交店铺资料,等待审核通过
						</div>
					</div>
				</div>
				<div style="clear: both;"></div>
			</div>
			<div class="new">

				<div class="title" style="display: none">
					<a id="first" href="javascript:void(0)">div一号</a> <a id="two"
						href="javascript:void(0)">div二号</a> <a id="three"
						href="javascript:void(0)">div三号</a>
				</div>

				<div class="content">

					<div class="aa">
						<div class="bb">
							<img src="../TuPian/TouXiang.png"
								style="height: 200px; width: 200px"><br />
							<h2>个人店铺</h2>
							自己通过个人账号创建的店铺为个人店铺。<br /> <br />
							<button class="button button1" onclick="two();">创建个人店铺</button>
							<br /> <br /> <br />
						</div>
					</div>
					<div class="aa">

						<div class="ee">
							<div class="gg">
								<div class="ziti">
									<b>1、我在光光已经开了个店了，我用别人的身份证再开一个店可以吗？</b>
								</div>
								<br />

								答：不可以。未经光光平台同意，将本人光光账号提供给他人做开店使用，由此导致相关争议，诉讼及因店铺经营中的违法违规行为导致一切人身，财产权益损害，均由本人自行承担全部民事、行政及刑事责任。
								<br /> <br /> <br />

								<div class="ziti">
									<b>2、我可以开多个店铺吗？</b>
								</div>
								<br /> 答：同一会员已开设的店铺均须同时满足以下要求，才能获得多店权益：<br />
								（一）近365天无出售假冒商品违规、严重违规、一般违规扣分达12分（含）以上等违规记录，且无其他风险特征；<br />
								（二）满足一定经营条件（如近365天确认收货金额>=120万且近12个自然月持续有成交）<br /> <br /> <br />
								<div class="ziti">
									<b>3、我已经开过店铺，现在想要注销原来的店铺重新开店，可以吗?</b>
								</div>
								<br /> 答：满足条件就可以注销。 <br /> <br />
							</div>
						</div>

						<div class="ff">
							1、淘宝网在任何情况下都不会用QQ与您取得联系, 任何使用QQ联系您的"工作人员"都是骗子。 <br />
							2、消费者保障协议变更内容将于2017年12月01日零点生效， 主要变更点可见协议公示通知（<a class="lianjie"
								href="????">光光网通知</a>）。 相关重要条款我们已以粗体下划线的方式特别标注，请重点阅读。<br />

						</div>
						<div class="anniudiv">
							<button class="button2" style="vertical-align: middle"
								onclick="one();">
								<span>上一步</span>
							</button>
							<button class="button3" style="vertical-align: middle"
								onclick="three();">
								<span>下一步</span>
							</button>
						</div>
					</div>
					<div class="aa">
					<div class="container_div"><!-- 遮罩 -->
   						 <div id="bg"></div>
   						 <div id="show">
						<form action="userxinxi.jsp" method="post"
							onsubmit="return yanzhen()">
							<div id="cont_b" class="cont">
								<b><font color="red">店铺信息填写</font></b><br /> 店铺名:<input
									type="text" id="name" name="name" placeholder="长度为5-10位 "><br />
								店铺头像:<input type="file" id="reportXML" name="reportXML"
									title="输入内容" multiple="multiple"><br /> 
									 <input type="button" class="contsubmit" value="返回" onclick="hideDiv()" style="margin-left: 10%;"/>
									<input
									type="submit" class="contsubmit" style="margin-left: 25%"
									value="提交申请">
							</div>
						</form>
						</div>
						<div class="cc">
							<br /> 您已绑定邮箱:<font color="red">#后台邮箱号</font><br /> <br />
							开店类型必须与邮箱认证类型一致，否则可能无法创建店铺。<br /> <br />
						</div>

						<div class="dd">
							<table class="biaoge">

								<tr>
									<td class="tr1">认证名称</td>
									<td class="tr1">状态</td>
									<td class="tr1">提示</td>
									<td class="tr1">账号</td>
								</tr>

								<tr>
									<td>用户状态</td>
									<td><font color="green">已登录</font></td>
									<td>登录成功</td>
									<td>#账户邮箱</td>
								</tr>

								<tr>
									<td class="tr1">店铺类型认证</td>
									<td class="tr1">#后台状况</td>
									<td class="tr1">#审核君审核中 or <font color="green">#已通过</font></td>
									<td class="tr1">个人店铺</td>
								</tr>

							</table>

							<br /> <br /> <br />
							<div class="anniudiv2">
								<button class="button2" style="vertical-align: middle"
									onclick="two();">
									<span>上一步</span>
								</button>
								<button class="button2" id="button"
									
									style="vertical-align: middle; width: 40%;" onclick="showDiv();">
									<span>已了解，马上开店</span>
								</button>
								
							</div>
						</div>
</div>
					</div>
				</div>

			</div>
		</div>
	</div>


</body>
</html>
