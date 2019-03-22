<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>登录页面</title>

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

.orange {
	margin-top: 3%;
}

.ziti1 {
	color: orange;
}

.button {
	display: inline-block;
	border-radius: 4px;
	background-color: #88ada6;
	border: none;
	color: #FFFFFF;
	text-align: center;
	font-size: 28px;
	padding: 1%;
	width: 39%;
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
	padding-right: 20%;
}

.button:hover span:after {
	opacity: 1;
	right: 0;
}

img {
	vertical-align: text-top;
}

.left {
	text-align: center;
	float: right;
	margin-right: 10%;
	margin-top: 5%;
	width: 23%;
	left: 2%;
	height: 80%;
	border: #909090 1px solid;
	background: #fff;
	color: #333;
	filter: progid:DXImageTransform.Microsoft.Shadow(color=#909090,
		direction=120, strength=4);
	-moz-box-shadow: 2px 2px 10px #909090;
	-webkit-box-shadow: 2px 2px 10px #909090;
	box-shadow: 2px 2px 10px #909090;
}

.inleft {
	margin-top: 1%;
}

.kuang {
	margin-top: 1%;
}

.zhongjian {
	margin-top: 2%;
	background-image: url(TuPian/test1.jpg);
	background-repeat: no-repeat;
	background-size: 100% 100%;
	-moz-background-size: 100% 100%;
	height: 60%;
	width: 100%;
}

.tou {
	margin-top: 2%;
	margin-right: 15%;
	float: right;
	width: auto;
	height: 8%;
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

.toubuwenzi {
	color: brown;
	font-size: 33px;
}

.toubuwenzi1 {
	margin-left: 2%;
}

.mytxt {
	width: 50%;
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

.foot {
	margin-top: 3%;
	color: #424c50;
}

.win{
	text-align: center;
	margin-right: 10%;
	margin-top: 5%;
	border: #909090 1px solid;
	background: #fff;
	color: #333;
	filter: progid:DXImageTransform.Microsoft.Shadow(color=#909090,
		direction=120, strength=4);
	-moz-box-shadow: 2px 2px 10px #909090;
	-webkit-box-shadow: 2px 2px 10px #909090;
	box-shadow: 2px 2px 10px #909090;
	
	POSITION:absolute;
}

.win a{
		color:blue;
	text-decoration: none;
	}
.win a:hover {
	color:red;
}
.log_code{
	width: 90px;
	height: 30px;
	border-radius: 10px;
}
.input_code {
	height: 30px;
	width: 80px;
	border-radius: 5px;
}

.log_code_main{
	height: 50px;
	width: 250px;
	margin-left: 50px;
	
}



</style>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

	function checkFrom() {
		var username = document.getElementById("inputname").value;
		var password = document.getElementById("password").value;

		if (username == null || username == "") {
			alert("请输入用户名!");
			return false;
		} else if (password == null || password == "") {
			alert("请输入密码!");
			return false;
		}
		return true;
	}

	function openLogin() {
		document.getElementById("win").style.display = "";
	}

	function closeLogin() {
		document.getElementById("win").style.display = "none";
	}

		
		  //产生验证码  
      window.onload = function() {
          createCode();
      }
      var code; //在全局定义验证码  
      function createCode() {
          code = "";
          var codeLength = 4; //验证码的长度  
          var checkCode = document.getElementById("code");
          
          var random = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
              'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //随机数 
               
          for(var i = 0; i < codeLength; i++) { //循环操作  
              var index = Math.floor(Math.random() * 36); //取得随机数的索引（0~35）  
              code += random[index]; //根据索引取得随机数加到code上  
          }
          checkCode.value = code; //把code值赋给验证码  
      }
    	//校验验证码  
      function validate(){
      	var yan = document.getElementById("text_code").value.toUpperCase();
          if(yan == null || yan==""){
          	alert("验证码不能为空");
          	//document.getElementById("p").innerHTML="验证码不能为空";
          	return false;
          }
          if(yan != code){
          	alert("验证码错误");
          	//document.getElementById("p").innerHTML="验证码错误";
          	return false;
          }
          return true;
      }
    	
    	
    
      function checkAll() {
        	
    		if (checkFrom() && validate()) {
    			return true;
    		}
			return false;           		
    	}
	</script>
</head>

<body style="margin:0px; padding:0px">
	<div id="all">

		<div id="header" align="center">
			<a href="Save.jsp"><img src="TuPian/logo.jpg"></a><img
				src="TuPian/nuli.gif"><br /> <font size="33px"><b>用户登录</b></font>
			<div class="tou">
					<a href=""><font class="toubuwenzi">返回首页&nbsp;&nbsp;&nbsp;</font></a>
			</div>
		</div>

	<div class="zhongjian">
			<div id="menu" class="left" > 	
			<form action="User_login.action" method="post" align="center" class="inleft" onsubmit="return checkAll()">
				<div class="geshi">
					&nbsp;<br /> 
					<div class="kuang">
					<img src="TuPian/tubiao.jpg" width="8%" height="8%">
						<input type="text" name="user.username" class="mytxt" id="inputname" placeholder="用户名" >
					</div>
				</div><br/>

					<div class="geshi">
						<div class="kuang">
							<img src="TuPian/suo.jpg" width="8%" height="8%"> <input
								type="password" name="user.password" class="mytxt" id="password"
								placeholder="密码">
						</div>
					</div>
					<br/>

				
				<div class="log_code_main">
		            <input type="text" id="text_code" placeholder="请输入验证码" class="log_code" />
		            <input type="button" id="code" onclick="createCode()" class="input_code"  />
	     		 </div>

					<div class="anniu">
						<button class="button" style="vertical-align:middle" id="zhuce">
							<span>登录</span>
						</button>

					</div>
					<div class="orange">
						<a href="user/Save.jsp"><font class="ziti1">
								还没有账号？点我去注册!</font></a>
					</div>
				</form>
			</div>
		</div>
		
			<div id="footer" style="clear:both;text-align:center;">

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
</body>
</html>
