<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改地址</title>
<script type="text/javascript" src="../js/jsAddress.js"></script>
<style type="text/css">
.clear {
	clear: both;
}

.contsubmit {
	margin-left: 13%;
	background-color: #3F7FCE;
	border: 1px solid #3F7FCE;
	color: white;
	padding: 1% 1%;
	width: 12%;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	cursor: pointer;
	background-color: #3F7FCE;
}

.Updatedizhi_body {
	margin: 0px;
	padding: 0px;
	overflow-x: hidden;
	font-family: FangSong;
}

.top {
	background-color: red;
	text-align: center;
	padding-top: 1%;
	padding-bottom: 1%;
}

li {
	margin-bottom: 10px;
	list-style: none;
	font-weight: bold
}

a {
	text-decoration: none;
	color: black;
}

a:hover {
	color: orange;
}

.left {
	float: left;
	margin-left: 18%;
	margin-top: 2%;
}

ul {
	margin: 0;
	padding: 0;
}

.right {
	float: left;
	width: 70%;
	margin-left: 2%;
}

.one {
	border: 1px solid #dcdee3;
	padding-top: 1%;
	padding-bottom: 1%;
	text-align: center;
}

.tip4 {
	color: red;
	width: 43%;
	margin-right: 23%;
	float: left;
	width: 20%;
	padding-top: 0.8%;
	margin-left: 1%;
	
}
</style>
<script type="text/javascript">
	function users() {
		var userlabel = document.getElementById("name");
		userlabel.className = "green";
	}
	function nameid() {
		var div1 = document.getElementById("tip4");
		var text = document.getElementsByName("name").item(0).value;
		var user = document.getElementById("user");
		var reg = /[\u4E00-\u9FA5\uF900-\uFA2D]/;
		if (!(reg.test(text))) {
			user.className = "red";
			div1.innerHTML = "请输入汉字!";
			return false;
		}
		if (text.length > 8) {
			user.className = "red";
			div1.innerHTML = "收获人姓名最多不超过8位!";
			return false;
		}
		if (text.length < 2) {
			user.className = "red";
			div1.innerHTML = "收获人姓名最少为2位!";
			return false;
		}

		if (2 <= text.length <= 8) {
			user.className = "black";
			div1.innerHTML = "";
			return true;
		}
	}

	function dizhi() {
		var userlabel = document.getElementById("dizhi");
		userlabel.className = "green";
	}

	function pwdcat() {
		var div1 = document.getElementById("tip5");
		var text = document.getElementsByName("dizhi").item(0).value;
		var user = document.getElementById("dizhi");
		var reg = /[\u4E00-\u9FA5\uF900-\uFA2D]/;

		if (text.length == 0 || text == "") {
			user.className = "red";
			div1.innerHTML = "详细地址不能为空!";
			return false;
		}
		if (!(reg.test(text))) {
			user.className = "red";
			div1.innerHTML = "请输入汉字!";
			return false;
		}
		if (1 <= text.length) {
			user.className = "black";
			div1.innerHTML = "";
			return true;
		}
	}

	function phone() {
		var userlabel = document.getElementById("phone");
		userlabel.className = "green";
	}

	function YZphone() {
		var div1 = document.getElementById("tip6");
		var text = document.getElementsByName("phone").item(0).value;
		var user = document.getElementById("phone");

		if (text.length == 0 || text == "") {
			user.className = "red";
			div1.innerHTML = "电话号码不能为空!";
			return false;
		}
		if (!(/^1[34578]\d{9}$/.test(text))) {
			user.className = "red";
			div1.innerHTML = "电话号码格式错误!";
			return false;
		}
		if (1 <= text.length) {
			user.className = "black";
			div1.innerHTML = "";
			return true;
		}
	}
	function dealsubmit() {
		if (pwdcat() == false || nameid() == false || YZphone() == false) {
			return false;
		} else {
			return true;
		}
	}
</script>
</head>
<body class="Updatedizhi_body">
	<form action="userxinxi.jsp" method="post"
		onsubmit="return dealsubmit()">
		<div class="top">
			<h1>头部</h1>
		</div>
		<div class="body">
			<div class="left">
				#用户头像<br /> <br /> <font color="red" size="5px">账户管理</font><br />
				<br />

				<ul>
					<li><a href="">光光网首页</a></li>
					<li><a href="">个人首页</a></li>
					<li><a href="">收获地址</a></li>
					<li><a href="">开店设置</a></li>
					<li><a href="">修改信息</a></li>
				</ul>
			</div>
			<div class="right">
				<div
					style="width: 70%; color: #014d7f; background-color: LightCyan; padding-top: 1%; padding-bottom: 1%;">
					<font size="5px">收货地址</font>
				</div>
				<div style="color: orange; padding-bottom: 2%; padding-top: 2%;">
					新增收货地址</div>
				<div>
					省：<select id="cmbProvince"></select> 市：<select id="cmbCity"></select>
					区：<select id="cmbArea"></select>
					<script type="text/javascript">
						addressInit('cmbProvince', 'cmbCity', 'cmbArea', '北京',
								'市辖区', '东城区');
						addressInit('Select1', 'Select2', 'Select3');
					</script>
				</div>
				<div style="margin-top: 2%; ">
					<div style="float: left;  width: 35%;">
						详细地址:<input type="text" id="dizhi" name="dizhi"
							placeholder="请输入详细地址,例如小区,楼栋号等信息 " onblur="pwdcat()"
							onfocus="dizhi()"
							style="width: 71%; height: 25px; margin-left: 6%; ">
					</div>
					<div id="tip5" 
						class="tip4"></div>
					<div class="clear"></div>
					<br />
					<div style="float: left; width: 35%;">
						收货人姓名:<input type="text" id="user" name="name"
							placeholder="2-8位字符" onblur="nameid()" onfocus="users()"
							style="width: 71%; height: 25px; margin-left:1%;">
					</div>
					<div id="tip4"  class="tip4" style="margin-left: 1%" ></div>
					<div class="clear"></div>
					<br /> 
					<div style="float: left;  width: 35%;">
					手机号码:<input type="text" name="phone" id="phone"
						placeholder="收件人的手机号码" onblur="YZphone()" onfocus="phone()"
						style="width: 71%; height: 25px; margin-left: 6%;">
					</div>
					<div id="tip6"  class="tip4"></div>
					<div class="clear"></div>
					<br /> <input type="submit" class="contsubmit">
				</div>
				<div
					style="width: 70%; color: #014d7f; background-color: LightCyan; padding-top: 1%; padding-bottom: 1%; margin-top: 3%;">
					<font size="5px">已保存n条地址</font>
				</div>

				<table style="width: 70%; margin-top: 4%" cellspacing="0">
					<tr style="background-color: #ebecf0;">
						<td class="one">收货人</td>
						<td class="one">详细地址</td>
						<td class="one">电话/手机</td>
						<td class="one">操作</td>
					</tr>
					<tr>
						<td class="one">#收货人</td>
						<td class="one">#详细地址</td>
						<td class="one">#电话/手机</td>
						<td class="one"><a href="****">修改</a> | <a href="****">删除</a></td>
					</tr>
					<tr>
						<td class="one">#收货人</td>
						<td class="one">#详细地址</td>
						<td class="one">#电话/手机</td>
						<td class="one"><a href="****">修改</a> | <a href="****">删除</a></td>
					</tr>
				</table>
			</div>
		</div>
	</form>
</body>
</html>