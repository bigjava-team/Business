<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册页面</title>



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
	}
	
	.center {
		width: 100%;
		background: url(../TuPian/5.jpg);
	}
	
	
	
	.foot {
		margin-top: 2%;
		color: #424c50;
	}
	
	.left {
		float: left;
		width: 60%;
	}
	
	.mytxt {
		height: 20%;
		width: 155%;
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
		margin-left: 10px;
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
	
	
	.right {
		margin-right: 8%;
		margin-top: 2%;
		padding-left:2%;
		padding-right:2%;
		float: right;
		width: 20%;
		border: #909090 1px solid;
		background: #fff;
		color: #333;
		filter: progid:DXImageTransform.Microsoft.Shadow(color=#909090,
			direction=120, strength=4);
		-moz-box-shadow: 2px 2px 10px #909090;
		-webkit-box-shadow: 2px 2px 10px #909090;
		box-shadow: 2px 2px 10px #909090;
	}
	
	.check_email {
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
	
	.wenzi {
		margin-left: 3%;
		margin-top: 2%;
		font-family: "宋体";
	}
	
	.kuang {
		margin-top: 2%;
		float: left;
		width: 50%;
	}
	
	.button{
		background-color:pink;
		border: none;
		color: white;
		padding: 15px 32px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 16px;
		cursor: pointer;
		border-radius: 12px;
	
	}
	.hebing {
		width: 90%;
		height: 40%;
		margin-top: 4%;
	}
	
	.tubiao {
		float: left;
		width: 20%;
		margin-left: 4%;
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

	function checkFrom() {
		var username = document.getElementById("inputname").value;
		var password = document.getElementById("password").value;
		var youxiang = document.getElementById("email").value;
		var yanzheng = document.getElementById("emailpassword").value;
		reg = /^([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/gi;
		
		var checkEmail = document.getElementById("checkEmail").value;
		var text_email = $("#emailpassword").val();// 文本框中输入的验证码
		
		if (username == null || username == "") {
			alert("请输入用户名!");
			return false;
		} else if (password == null || password == "") {
			alert("请输入密码!");
			return false;
		} else if (yanzheng == null || yanzheng == "") {
			alert("请输入邮箱验证码!");
			return false;
		} else if (email.value == "") {
			alert("请输入电子邮件");
			return false;
		} else if (!reg.test(email.value)) {
			alert("邮件格式不正确，请重新输入!");
			return false;
		}else if (text_email != checkEmail) {
			alert("验证码输入错误");
			return false;
		}

		return true;
	}
</script>

<script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		
		// 发送邮件
		$(".check_email").click(function() {
			var email = $("#email").val();
			reg = /^([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/gi;
			
			if (!reg.test(email)) {
				alert("邮件格式不正确，请重新输入!");
				return;
			}
			
			var params = {
				emailAddress : email
			}
			
			$.ajax({
				url: "ajax_checkEmail",
				type: "post",
				data: params,
				dataType: "json",
				success:function(data, textStatus) {
					$("#checkEmail").val(data.checkEmail);
				},error:function(data, textStatus) {
					alert("发送失败");
					return;
				}
			});
		});
		
		// 校验用户名已存在
		$("input[name='user.username']").keyup(function() {
			
			var user_username = document.getElementById("inputname").value;
			
			if (user_username == null || user_username == "") {
				alert("用户名不能为空");
				return;
			}
			
			var params = {
				"user.username" : user_username
			}
			
			$.ajax({
				url: "ajax_checkUsername",
				type: "post",
				data: params,
				dataType: "json",
				success:function(data, textStatus) {
					$("#checkUsername").text(data.check);
				},error:function(data, textStatus) {
					alert("错误");
					return;
				}
			});
			
		});
	});
</script>
</head>
<body>
	<form action="User_register" method="post"
		onsubmit="return checkFrom();">
		<input type="hidden" id="checkEmail" >
		<div id="header"  class="tou"align="center">
			<a href="loginn.jsp"><img src="../TuPian/logo.jpg"></a><img
				src="../TuPian/nuli.gif"><br/>	
			<div style="float: left;margin-left: 41%;">
				<font size="5px" color="black">用户注册</font>
			</div>
			<div style="float: left;margin-left: 25%;color:red">
				<h2><a href="/Business/index_showAll.action">返回首页</a></h2>
			</div>
			<div style="clear: both;"></div>
		</div>
		<div class="center"
			style="background: url(../TuPian/5.jpg); overflow: hidden;">
			<div class="left">
				<textarea cols="70%" rows="25%" disabled="disabled" id="xieyi"
					style="border: 0px; background: none; float: right; color: #272727; font-size: 20px">

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
			<div class="right">
				<div class="wenzi">邮箱号码</div>
				<div class="hebing">
					<div class="tubiao">
						<img src="../TuPian/1.jpg" width="80%">
					</div>
					<div class="kuang">
						<input type="text" name="user.email" class="mytxt" id="email" placeholder="填写你常用的邮箱号">
					</div>
				</div>
				<br /> <br /> <br />

				<div class="wenzi">用户名</div>
				<div class="hebing">
					<div class="tubiao">
						<img src="../TuPian/2.jpg" width="80%">
					</div>
					<div class="kuang">
						<input type="text" name="user.username" class="mytxt" id="inputname" placeholder="用户名最长18个英文"><br/>
						<span id="checkUsername" style="color: red;"></span>
					</div>
				</div>
				<br /> <br /> <br />

				<div class="wenzi">密码</div>
				<div class="hebing">
					<div class="tubiao">
						<img src="../TuPian/3.jpg" width="80%">
					</div>
					<div class="kuang">
						<input type="password" name="user.password" class="mytxt" id="password"
							placeholder="5-20位英文、数字、符号">
					</div>
				</div>
				<br /> <br /> <br />

				<div class="wenzi">邮箱验证码</div>
				<div class="hebing">
					<div class="tubiao">
						<img src="../TuPian/4.jpg" width="80%">
					</div>
					<div class="kuang">
						<input type="text" class="mytxt" id="emailpassword"
							placeholder="填写邮箱验证码">
					</div>
				</div>
				<br /> <br /> <br />

				<div style="text-align: center;">
					<input type="button" class="check_email" value="点击发送验证码" /><br /> 
					<input type="checkBox" onclick="if (this.checked) {tongyi()} else {butongyi()} 
				 if (this.checked) {yingcang()} else {xianshi()}">
					我同意协议<br /> <br /><!--  <input type="submit" class="button"
						style="vertical-align: middle;" id="zhuce" disabled="true"
						value="注册" /> -->
					<input type="submit" class="button" disabled="true" style="vertical-align: middle;" id="zhuce" value="注册" />
				</div>
				<br /> <br />
			</div>
		</div>

		<div id="footer" style="clear: both; text-align: center;">

			<div class="foot">
				<div class="footer-hd">
					<hr width="90%">
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
					<hr width="80%">
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
	</form>
</body>
</html>