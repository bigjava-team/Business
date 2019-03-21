<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>修改页面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<style type="text/css">
body {
	overflow-x: hidden;
}

a {
	text-decoration: none;
	color: #424c50;
}

font {
	color: black;
}


.ziti1 {
	color: #6A5ACD;
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
	width: 44%;
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
	right: -2%;
	transition: 0.5s;
}

.button:hover span {
	padding-right: 25px;
}

.button:hover span:after {
	opacity: 1;
	right: 0;
}

img {
	vertical-align: text-top;
}

.left {
	height: 68%;
	text-align: center;
	float: right;
	margin-right: 10%;
	margin-top: 5%;
	width: 25%;
	left: 2%;
	border: #909090 1px solid;
	background: #fff;
	color: #333;
	filter: progid:DXImageTransform.Microsoft.Shadow(color=#909090,
		direction=120, strength=4);
	-moz-box-shadow: 2px 2px 10px #909090;
	-webkit-box-shadow: 2px 2px 10px #909090;
	box-shadow: 2px 2px 10px #909090;
}

.kuang {
	margin-top: 1%;
}

.zhongjian {
	margin-top: 2%;
	background-image: url(TuPian/test2.jpg);
	background-repeat: no-repeat;
	background-size: 100% 100%;
	-moz-background-size: 100% 100%;
	height: 75%;
	width: 100%;
}

.tou {
	margin-right: 15%;
	float: right;
	width: auto;
	height: 8%;
	background: borwn;
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

.toubuwenzi {
	color: brown;
	font-size: 33px;
}

.wenti {
	margin-top: 4%;
}

.mytxt {
	width: 45%;
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

.mytxt1{
	width: 45%;
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
	margin-left: 4%;
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
.mytxt1:focus {
	border: 1px solid #fafafa;
	-webkit-box-shadow: 0px 0px 6px #007eff;
	-moz-box-shadow: 0px 0px 5px #007eff;
	box-shadow: 0px 0px 5px #007eff;
}
.foot {
	margin-top: 2%;
	color: #424c50;
}
</style>
<script type="text/javascript">

	function yanzhen() {
		var phone = document.getElementById('phone').value;
		var password = document.getElementById("password").value;
		var passwordtoo = document.getElementById("newpassword").value;
		if (password == null || password == "") {
			alert("请输入旧密码!");
			return false;
		} else if (passwordtoo == null || passwordtoo == "") {
			alert("请输入新密码!");
			return false;
		} else if (!(/^1[34578]\d{9}$/.test(phone))) {
			alert("手机号码有误，请重填");
			return false;
		}else if(password.length<5){
			alert("旧密码最少为五位数！");
			return false;
		}else if(password.length<5){
			alert("新密码最少为五位数！");
			return false;
			}

		return true;
	}





	function uploadImage(e) {
		if (!preSubmitFileCheck(e)) {
			console.info("验证失败，显示提示框"); return;
		}
	}
	function preSubmitFileCheck(e) {
		var fileTypes = [ "jpeg", "jpg", "png", "gif" ];

		if (window.navigator.userAgent.indexOf("MSIE") >= 1) {
			var filePath = document.selection.createRange().text;
			var type = filePath.substring(filePath.lastIndexOf('.') + 1);
			for (var i = 0; i < fileTypes.length; i++) {
				if (fileTypes[i] == type) {
					typeFlag = true; break;
				}
			}
			if (!typeFlag) {
				alert("上传格式不符，请重新上传！");
				return false;
			}
		} else {
			var files = e.target.files,
				fs = files.length,
				s = 0;
			for (var i = 0; i < fs; i++) {
				var name = files[i].name;
				console.log("图片大小:size:" + files[i].size)
				if (files[i].size > 5 * 1024 * 1024) {
					sizeFlag = true;
				}
				var type = name.substring(name.lastIndexOf('.') + 1);
				typeFlag = false;
				for (var j = 0; j < fileTypes.length; j++) {
					if (fileTypes[j] == type) {
						typeFlag = true; break;
					}
				}
				if (!typeFlag || sizeFlag) {
					alert("上传格式不符，请重新上传！");
				}
			}
		}
		return true;
	}
</script>
</head>

<body style="margin:0px; padding:0px">
	
	<form action="******" method="post"
					 onsubmit="return yanzhen()">
		<div id="all">

			<div id="header">
				<a href="Save.jsp"><img src="TuPian/logo.jpg"></a><img
					src="TuPian/nuli.gif"><br /> <font size="33px"><b>修改信息</b></font>
				<div class="tou">
					<div class="wenti">
						<a href=""><font class="toubuwenzi">首页&nbsp;&nbsp;&nbsp;</font></a>
						<a href=""><font class="toubuwenzi">我的光光</font></a>
					</div>
				</div>
			</div>



			<div class="zhongjian">
				<div id="menu" class="left">



					<div class="geshi">
						&nbsp;<br /> 用户名:#用户名
						<div class="kuang"></div>
					</div>
					<br />

					<div class="geshi">
						<div class="kuang">
							输入旧密码: <input type="password" class="mytxt" id="password"
								placeholder="旧密码">
						</div>
					</div>
					<br />

					<div class="geshi">
						<div class="kuang">
							输入新密码: <input type="password" class="mytxt" id="newpassword"
								placeholder="新密码">
						</div>
					</div>
					<br />

					<div class="geshi">
						<div class="kuang">
							电话号码: <input type="text" class="mytxt1" id="phone"
								placeholder="电话号码">
						</div>
					</div>
					<br />

						<div style="margin-left:14%">
					<div class="kuang">
						修改头像: <input type="file" id="file_input"
							onchange="uploadImage(event)"
							accept="image/jpg, image/jpeg, image/gif, image/png">

					</div>
					</div>
					<br />
					<div class="anniu">
						<input type="submit" class="button" id="zhuce" value="提交">

					</div>
				</div>
			</div>

			<div id="footer" style="clear:both;text-align:center;">


				<div class="footer-hd">
					<div class="foot">
						<hr width="100%">
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
		</div>
	</form>
</body>
</html>
