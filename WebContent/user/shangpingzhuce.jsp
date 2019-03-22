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

.all {
	width: 100%;
	height: 100%;
}

.head {
	width: 100%;
	height: 96px;
	background:;
	color: white;
}

.headone {
	width: 100%;
	height: 34%;
	background: #D0D0D0;
	color: #3C3C3C;
	line-height: 30px;
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
	height: 66%;
	color: white;
	line-height: 60px;
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
	width: 1022px;
	height: 150px;
	margin-top: 20px;
	margin: 20px auto;
}

.kaitou {
	color: #8E8E8E;
}

.neirong{
	margin-left: 20px;

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
	margin-left: 20px;
}

#box1 {
	width: 293px;
	height: 150px;
	background: #FF9900;
	float: left;
	position: relative;
}

#box1:after {
	content: "";
	width: 0px;
	height: 150px;
	position: absolute;
	box-sizing: border-box;
	right: -30px;
	top: -1px;
	border-top: 75px solid transparent;
	border-left: 30px solid #FF9900;
	border-bottom: 75px solid transparent;
}

#box1:before {
	content: "";
	width: 0px;
	height: 150px;
	position: absolute;
	box-sizing: border-box;
	left: -30px;
	background: #06f;
	border-top: 75px solid transparent;
	border-bottom: 75px solid yellow;
}

#box2 {
	width: 293px;
	height: 150px;
	float: left;
	background: #FF9900;
	position: relative;
	margin-left: 60px;
}

#box2:after {
	content: "";
	width: 0px;
	height: 150px;
	position: absolute;
	box-sizing: border-box;
	right: -30px;
	top: -1px;
	border-top: 75px solid transparent; border-left : 30px solid #FF9900;
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
	height: 150px;
	position: absolute;
	box-sizing: border-box;
	left: -30px;
	background: transparent;
	border-top: 75px solid #FF9900;
	border-left: 30px solid transparent;
	border-bottom: 75px solid #FF9900;
}

#box3 {
	width: 293px;
	height: 150px;
	float: left;
	background: #FF9900;
	position: relative;
	margin-left: 61px;
}

#box3:after {
	content: "";
	width: 0px;
	height: 150px;
	position: absolute;
	box-sizing: border-box;
	right: -30px;
	border-top: 75px solid transparent;
	border-bottom: 75px solid transparent;
}

#box3:before {
	content: "";
	width: 0px;
	height: 150px;
	position: absolute;
	box-sizing: border-box;
	left: -30px;
	background: #06f;
	border-top: 75px solid #FF9900;
	border-left: 30px solid #fff;
	border-bottom: 75px solid #FF9900;
}



///
.new {
	text-align: center;
	
}


.bb {
	text-align: center;
	margin-top: 40px;
	color: #4F4F4F;
}

.button {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 16px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	-webkit-transition-duration: 0.4s; /* Safari */
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
	padding: 20px;
	width: 140px;
	transition: all 0.5s;
	cursor: pointer;
	margin: 5px;
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
	right: -20px;
	transition: 0.5s;
}

.button2:hover span {
	padding-right: 25px;
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
	padding: 20px;
	width: 140px;
	transition: all 0.5s;
	cursor: pointer;
	margin: 5px;
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
	right: -20px;
	transition: 0.5s;
}

.button3:hover span {
	padding-right: 25px;
}

.button3:hover span:after {
	opacity: 1;
	right: 0;
}

.cc {
	margin: 0 auto;
	width: 1022px;
	border: 1px solid #33CC33;
	background: #eee;
	color: #4F4F4F;
}

.biaoge {
	border-collapse: collapse;
	cellspacing: 0;
	cellpadding: 0;
	border: 0;
	width: 1022px;
	height: 130px; vertical-align : middle;
	text-align: center;
	vertical-align: middle;
}

.tr1 {
	background: #eee;
}

.dd {
	margin: 0 auto;
	width: 1022px;
	margin-top: 40px;
}

.ee {
	margin: 0 auto;
	border: 1px solid #9D9D9D;
	width: 940px;
	height: auto;
	line-height: 170%;
}

.ff {
	margin: 0 auto;
	color: red;
	line-height: 170%;
	width: 940px;
	margin-top: 30px;
}

.gg {
	margin-top: 40px;
	margin-left: 50px;
}

.ziti {
	color: black;
}
.lianjie{
	text-decoration:none;
	color:#00FF66;
}
.anniudiv{
		margin-left:36%;	
}
</style>


<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
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


</script>




</head>

<body style="margin:0px; padding:0px">
	<div class="head">
		<div class="headone"> 
			<a href="????"> <font size="3px" style="padding-left:10%">用户名</font></a>
			| <a href="????"> <font size="3px">退出</font>
			</a> <font style="float:right;padding-right:10%"> <a href="????"><font
					size="2px">光光网首页</font></a> | <a href="????"><font size="2px">我买的宝贝</font></a>
				| <a href="????"><font size="2px">我卖的宝贝 </font></a>
			</font>
		</div>

		<div class="headtwo">
			<a href="Maijia.jsp"><font size="5px" style="padding-left:10%">店铺注册页面</font></a>
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
					<div class="ziti2" style="margin-left: 100px">
						<font color="black">选择开店类型</font><br />
						<br /> 个人店铺
					</div>
				</div>

			</div>

			<div id="box2">
				<div class="ziti">
					<div class="ziti1">
						<font size="9px">2</font>
					</div>
					<div class="ziti2">
						<font color="black">阅读开店通知</font><br />
						<br /> 确认自己符合个人店铺的相关规定
					</div>
				</div>
			</div>

			<div id="box3">
				<div class="ziti">
					<div class="ziti1">
						<font size="9px">3</font>
					</div>
					<div class="ziti2">
						<font color="black">申请开店认证</font><br />
						<br /> 需提交店铺资料,等待审核通过
					</div>
				</div>
			</div>

		</div>
		<div class="new">
			
	<div class="title" style="display:none">
		<a id="first" href="javascript:void(0)">div一号</a> <a id="two"
			href="javascript:void(0)">div二号</a> <a id="three"
			href="javascript:void(0)">div三号</a>
	</div>

	<div class="content">

		<div class="aa">
			<div class="bb">
				<img src="TuPian/TouXiang.png" style="height:200px;width:200px"><br />
				<h2>个人店铺</h2>
				自己通过个人账号创建的店铺为个人店铺。<br />
				<br />
				<button class="button button1" onclick="two();">创建个人店铺</button>
				<br />
				<br />
				<br />
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
					<br />
					<br />
					<br />

					<div class="ziti">
						<b>2、我可以开多个店铺吗？</b>
					</div>
					<br /> 答：同一会员已开设的店铺均须同时满足以下要求，才能获得多店权益：<br />
					（一）近365天无出售假冒商品违规、严重违规、一般违规扣分达12分（含）以上等违规记录，且无其他风险特征；<br />
					（二）满足一定经营条件（如近365天确认收货金额>=120万且近12个自然月持续有成交）<br /> <br />
					<br />	
					<div class="ziti">
						<b>3、我已经开过店铺，现在想要注销原来的店铺重新开店，可以吗?</b>
					</div>
					<br /> 答：满足条件就可以注销。
					<br />
					<br />
				</div>
			</div>

			<div class="ff">1、淘宝网在任何情况下都不会用QQ与您取得联系, 任何使用QQ联系您的"工作人员"都是骗子。
			<br/>
				2、消费者保障协议变更内容将于2017年12月01日零点生效，
				主要变更点可见协议公示通知（<a class="lianjie" href="????" >光光网通知</a>）。
				相关重要条款我们已以粗体下划线的方式特别标注，请重点阅读。<br/>
				
				</div>
				<div class="anniudiv">
				<button class="button2" style="vertical-align:middle"
				onclick="one();">
				<span>上一步</span>
			</button>
			<button class="button3" style="vertical-align:middle"
				onclick="three();">
				<span>下一步</span>
			</button>

				</div>




		</div>

		<div class="aa">
		<form action="kaidianchenggong.jsp" method="post">
			<div class="cc">
				<br /> 您已绑定邮箱:<font color="red">#后台邮箱号</font><br />
				<br /> 开店类型必须与邮箱认证类型一致，否则可能无法创建店铺。<br />
				<br />
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
						<td>邮箱认证</td>
						<td><font color="green">已通过</font></td>
						<td>认证成功</td>
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
				<div class="anniudiv">
				<button class="button2" style="vertical-align:middle"
					onclick="two();">
					<span>上一步</span>
				</button>
				<button class="button3" style="vertical-align:middle">
					<span>提交</span>
				</button>
			</div></div></form>

		</div>
	</div>
		
		</div>
	</div>
</div>

</body>
</html>
