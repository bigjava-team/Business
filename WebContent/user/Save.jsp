<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<base href="<%=basePath%>">

<title>注册页面</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">




<style type="text/css">
a {
	text-decoration: none;
	color: #424c50;
}

font {
	color: grey;
}

body {
	margin: 0;
	padding: 0;
	background: url('TuPian/on.jpg') no-repeat fixed;
	-webkit-background-size: cover;
}
			
.button {
	display: inline-block;
	border-radius: 4px;
	background-color: #88ada6;
	border: none;
	color: #FFFFFF;
	text-align: center;
	font-size: 28px;
	padding: 10px;
	width: 140px;
	transition: all 0.5s;
	cursor: pointer;
	margin: 5px;
}

.button span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
}

.button span:after {
	content: '»';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20px;
	transition: 0.5s;
}

.button:hover span {
	padding-right: 25px;
}

.button:hover span:after {
	opacity: 1;
	right: 0;
}
			
.yangshi{
	width:200px;
	height:100px;
	margin-left:196px;
	margin-top:20px;
}		
				
.geshi{
	margin-top:5px;
		}	
			
.zhongjian{
	background:#F00;
	width:100%;
	height:auto;
}

.right{
	margin-top:108px;
	margin-right: 100px;
	float:right;

}
.left {
	text-align:center;
	margin-left:180px;
	margin-top:10px;
	float: left;
	width: 600px;
	left: 20px;
	height: 520px;
	border: #909090 1px solid;
	background: #fff;
	color: #333;
	filter: progid:DXImageTransform.Microsoft.Shadow(color=#909090,
		direction=120, strength=4);
	-moz-box-shadow: 2px 2px 10px #909090;
	-webkit-box-shadow: 2px 2px 10px #909090;
	box-shadow: 2px 2px 10px #909090;
}
.inleft{
	margin-left:24px;
	width:auto;
	height:auto;
	float:left;
}
.inright{
	margin-right:20px;
	margin-top:19px;
	width:auto; 
	height:auto;
	float:right;
}

.mytxt {
	width: 200px;
	color: #333;
	line-height: normal;
	font-family: "Microsoft YaHei", Tahoma, Verdana, SimSun;
	font-style: normal;
	font-variant: normal;
	font-size-adjust: none;
	font-stretch: normal;
	font-weight: normal;
	margin-top: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
	padding-top: 4px;
	padding-right: 4px;
	padding-bottom: 4px;
	padding-left: 4px;
	font-size: 15px;
	outline-width: medium;
	outline-style: none;
	outline-color: invert;
	border-top-left-radius: 3px;
	border-top-right-radius: 3px;
	border-bottom-left-radius: 3px;
	border-bottom-right-radius: 3px;
	text-shadow: 0px 1px 2px #fff;
	background-attachment: scroll;
	background-repeat: repeat-x;
	background-position-x: left;
	background-position-y: top;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: rgb(255, 255, 255);
	margin-right: 8px;
	border-top-color: #ccc;
	border-right-color: #ccc;
	border-bottom-color: #ccc;
	border-left-color: #ccc;
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
	font-family: "Microsoft YaHei", Tahoma, Verdana, SimSun;
}

.mytxt:focus {
	border: 1px solid #fafafa;
	-webkit-box-shadow: 0px 0px 6px #007eff;
	-moz-box-shadow: 0px 0px 5px #007eff;
	box-shadow: 0px 0px 5px #007eff;
}

.kuang {
	margin-top: 10px;
}


.yanzhen{
	background-color: #4CAF50; 
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 12px;
		}
img {
	vertical-align: text-top;
}


.foot {
	margin-top: 600px;
	color: #424c50;
}


</style>

<script type="text/javascript">

	//按钮提示功能
	function tishi() {
	
		alert("请先同意协议!");
	}
	

	//同意协议功能
	function tongyi() {
		document.getElementById("zhuce").disabled = false
		
	}
	function butongyi() {
	alert("请先同意协议!");
		document.getElementById("zhuce").disabled = true
	}

	//隐藏协议
	function xianshi() {
		document.getElementById("xieyi").style.visibility = "visible";
	}
	function yingcang() {
		document.getElementById("xieyi").style.visibility = "hidden";
	}
</script>

<script type="text/javascript">
	function checkPassword(){
		var pwd = document.getElementsByName("password")[0].value;
		var rePwd = document.getElementsByName("rePassword")[0].value;
	
		if(pwd != rePwd){
		alert("亲，两次输入的密码不一致，请重新输入！！！");
			return false;
		}
		return true;
	}

</script>
<script type="text/javascript" src="js/jquery-3.1.1.min.js" ></script>
<script type="text/javascript">
	
	$(function(){
		
		$("form").submit(function(){
			
			var text = $("#checkUsername").text();
			if(text == "用户名已存在"){
				alert("用户名已存在");
				return false;
			}
			return true;
		});
		
		
		/* 
			校验用户名是否存在
		*/
		$("input[name=username]").keyup(function(){
			 var username_val = $(this).val();
			 
			 if(username_val == null || username_val == "") {
				alert("用户名不能为空");
				return false;
			 }
			 
			 var params={
				username : username_val,					 
			 }
			 
			 $.ajax({
				 url : "ajax_checkUsername",
				 type : "post",
				 data : params,
				 dataType : "json",
				 success:function(data, textStatus){
					 console.log(data);
					 $("#checkUsername").html(data.result);
				 },
				 error:function(data, textStatus){
					alert("错误");
					return false;
				}
			 });
		});
	});
</script>
</head>
<body>

	<div id="all">
		<div id="header" align="center" class="tou">
			<a href="loginn.jsp"><img src="TuPian/logo.jpg"></a><img
				src="TuPian/nuli.gif">
			<h2>用户注册</h2>
		</div>
	
	
	<div class="zhongjian">
	
	<form action="User_register.action" method="post" onsubmit="return checkPassword()">
	
	<div class="left">
	<div class="inleft">
		<div class="geshi">&nbsp;<br /> 用户名
			<div class="kuang">
				<input type="text" name="username" class="mytxt" id="inputname" placeholder="用户名">
				<span id="checkUsername" style="color:red"></span>
			</div>
		</div><br/>
	
		<div class="geshi">
			真实姓名
			<div class="kuang">
				<input type="text" class="mytxt" id="rename" placeholder="真实姓名">
			</div>
		</div><br/>
		
		<div class="geshi">
			电话号码
			<div class="kuang">
				<input type="text" class="mytxt" id="phone" placeholder="电话号码">
			</div><br/>
			
		</div>
	</div>
	
	<div class="inright">
		<div class="geshi">
			密码
			<div class="kuang">
				<input type="password" name="password" class="mytxt" id="password" placeholder="密码">
			</div>
		</div><br/>

		<div class="geshi">
			再次输入密码
			<div class="kuang">
				<input type="password" name="rePassword" class="mytxt" id="repassword" placeholder="再次输入密码">
			</div>
		</div><br/>

		<div class="geshi">
			注册邮箱
			<div class="kuang">
				<input type="text" class="mytxt" id="email" placeholder="注册邮箱">
				<br/>
			</div>
		</div><br/>
	</div>
	
	<div class="yangshi">
		<button class="yanzhen">点击发送验证码</button><br/>
		
		邮箱验证码<br/>
		<div class="kuang">
			<input type="text" class="mytxt" id="emailpassword" placeholder="邮箱验证码"> <br/>
		</div>	
		
		 <div class="kuang">
			<input type="checkBox"
				onclick="if (this.checked) {tongyi()} else {butongyi()} 
					 if (this.checked) {yingcang()} else {xianshi()}
				">
			我同意协议<br />
		</div>
		
		<div class="anniu">
			<button class="button"
			style="vertical-align:middle" id="zhuce" disabled="true">
				<span>注 册 </span>
			</button>
		</div>
	</div>
	</div>
</form>

<div class="right">
<textarea cols="53" rows="22" disabled="disabled" id="xieyi"
			style="border:0px;background:none; float:right; color:black;">
注册协议
【审慎阅读】您在申请注册流程中点击同意前，应当认真阅读以下协议。请您务必审慎阅读、充分理解协议中相关条款内容，其中包括：

1、与您约定免除或限制责任的条款；

2、与您约定法律适用和管辖的条款；

3、其他以粗体下划线标识的重要条款。

如您对协议有任何疑问，可向平台客服咨询。

【特别提示】当您按照注册页面提示填写信息、阅读并同意协议且完成全部注册程序后，即表示您已充分阅读、理解并接受协议的全部内容。如您因平台服务与光光发生争议的，适用《光光平台服务协议》处理。如您在使用平台服务过程中与其他用户发生争议的，依您与其他用户达成的协议处理。

阅读协议的过程中，如果您不同意相关协议或其中任何条款约定，您应立即停止注册程序
</textarea>

</div>

</div>

		<div id="footer" style="clear:both;text-align:center;">

			<div class="foot">
				<div class="footer-hd">
					<hr width="1300px">
					<p>
						<a href="//page.1688.com/shtml/about/ali_group1.shtml">百度</a> <b>|</b>
						<a href="//www.alibaba.com">谷歌</a> <b>|</b> <a
							href="//www.1688.com">尚硅谷</a> <b>|</b> <a
							href="//www.aliexpress.com">哔哩哔哩</a> <b>|</b> <a
							href="//www.taobao.com">淘宝网</a> <b>|</b> <a
							href="//www.tmall.com">hibernate</a> <b>|</b> <a
							href="//ju.taobao.com">spring</a> <b>|</b> <a
							href="//www.etao.com">springmvc</a> <b>|</b> <a
							href="//www.alimama.com">Struts</a> <b>|</b> <a
							href="//www.aliyun.com">SSH</a> <b>|</b> <a
							href="//www.yunos.com">Linux</a> <b>|</b> <a href="//www.net.cn">SSH</a>
						<b>|</b> <a href="//www.alipay.com">mybaits</a>
					</p>
				</div>
				<div class="footer-bd">
					<hr width="1300px">
					<p>
						<a href="">关于光光</a> <a href="">合作伙伴</a> <a href="">营销中心</a> <a
							href="">联系客服</a> <a href="">开放平台</a> <a href="">诚征英才</a> <a
							href="">联系我们</a> <a href="">网站地图</a> <a href="">法律声明及隐私权政策</a> <font>&copy;
							2019 GuangGuangGuang.com 版权所有</font>
					</p>
					<p>
						<font>光光光网项目学校:江西制造职业技术学院</font> <b>|</b> <font>光光光网项目班级:17软件一班</font>
						<b>|</b> <font>光光光网项目团队:周-罗-章-龚-彭</font>
					</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
