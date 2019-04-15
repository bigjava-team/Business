<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户个人中心</title>
<style type="text/css">
body {
	margin: 0px;
	padding: 0px;
	overflow-x: hidden;
}

.head {
	background-color: #ff4401;
	width: 100%;
	height: 30px;
}

.body {
	margin-top: 1%;
	margin-left: 12%;
	height: 120%;
	width: 83%;
}

.left {
	float: left;
	width: 10%;
	height: 25%;
	line-height: 200%;
}

.left font {
	line-height: 160%;
}

.left a {
	color: black;
	text-decoration: none;
}

.left a:hover {
	color: #EAC100;
}

.center {
	float: left;
	width: 62%;
}

.centertop {
	background-color: #f5f8fa;
	border: 1px solid #e4eaee;
	width: 95%;
	padding-top: 2%;
	padding-bottom: 5%;
}

.centertop a {
	color: #546d7e;
	text-decoration: none;
}

.centertop a:hover {
	color: #EAC100;
}

.centerdi {
	width: 95%;
	border: 1px solid #e4eaee;
	padding-top: 2%;
	padding-bottom: 2%;
}

.centerdi ul {
	list-style: none;
	margin: 0px;
	padding: 0px;
	width: auto;
}

.centerdi ul li {
	float: left;
	padding-left: 6.7%;
}

.centerdi ul li a, div.centerdi ul li a:visited {
	color: black;
	display: block;
	text-decoration: none;
	white-space: nowrap;
}

.centerdi ul li a:hover {
	color: orange;
}

.right {
	text-align: center;
	float: right;
	width: 28%;
	height: 100%;
}

.two font {
	margin-left: 35%;
}

.foot {
	margin-top: 3%;
	color: #424c50;
}

.footer a {
	text-decoration: none;
	color: #424c50;
}

.shang {
	background-color: #6ec884;
	color: white;
	border: 1px solid #6ec884;
	width: 82%;
	padding-top: 3%;
	padding-bottom: 3%;
}

.Date {
	border: 1px solid #cfe5d4;
	width: 82%;
	padding-bottom: 3%;
}

.clearfloat {
	clear: both;
}

.dibu1 {
	width: 95.3%;
	background-color: #a0cdeb;
	border: #a0cdeb;
	margin-top: 3%;
	color: white;
	padding-top: 1%;
	padding-bottom: 1%;
}

.dibu2 {
	padding-bottom: 10%;
	border: 1px solid #e4eaee;
	width: 95%;
	background-color: #f5f8fa;
	border: 1px solid #e4eaee;
}

.shangping {
	margin-top: 3%;
	padding-top: 3%;
	padding-bottom: 2%;
	width: 28%;
	float: left;
	margin-left: 3%;
	border: 1px solid #e4eaee;
	background-color: #fff;
}

.shangping font {
	line-height: 150%;
}
/*第一版块*/

/*导航栏目z的文字*/
.wenziz {
	float: left;
	text-align: left;
	color: #666;
	font-size: 14px;
	margin: 0 10 0 30;
	word-spacing: 33px;
	word-spacing: 22px;
	word-spacing: 22px;
}

.wenziz2 {
	text-align: right;
	color: #666;
	font-size: 14px;
	margin: 0 100px 0 10px;
	word-spacing: 22px;
}

.userxinxi_button {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding-left: 15%;
	padding-top: 15%;
	padding-bottom: 15%;
	padding-right: 15%;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
}

.userxinxi_inbutton {
	background-color: white;
	color: black;
	border: 2px solid #555555;
}

.userxinxi_inbutton:hover {
	background-color: #555555;
	color: white;
}

.clear {
	clear: both;
}

.updateps {
	padding-top: 2%;
	line-height: 200%;
	padding-left: 24%;
	margin-top: 4%;
	padding-bottom: 2%;
	height: 100%;
	width: 71%;
	border: #909090 1px solid;
	background: #fff;
	filter: progid:DXImageTransform.Microsoft.Shadow(color=#909090,
		direction=120, strength=4);
	-moz-box-shadow: 2px 2px 10px #909090;
	-webkit-box-shadow: 2px 2px 10px #909090;
	box-shadow: 2px 2px 10px #909090;
}

.update_anniu {
	margin-top: 3%;
	margin-left: 21%;
}

.update_button {
	display: inline-block;
	border-radius: 4px;
	background-color: #88ada6;
	border: none;
	color: #FFFFFF;
	text-align: center;
	font-size: 28px;
	padding: 10px;
	width: 33%;
	transition: all 0.5s;
	cursor: pointer;
	margin: 5px;
}

.updateuser_button {
	display: inline-block;
	border-radius: 4px;
	background-color: #46E2F1;
	border: none;
	color: #FFFFFF;
	text-align: center;
	font-size: 28px;
	padding: 10px;
	width: 22%;
	transition: all 0.5s;
	cursor: pointer;
	margin: 5px;
}

.updateuser_jsdiv {
	color: red;
	width: 29%;
	height: 20px;
	text-align: center;
	padding-bottom: 1%;
	padding-top: 1%;
	float: left;
}

.contsubmit {
	margin-top: 4%;
	margin-left: 43%;
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

.update_one {
	border: 1px solid #dcdee3;
	padding-top: 1%;
	padding-bottom: 1%;
	text-align: center;
}

.update_dizhi {
	float: left;
	width: 100%;
	margin-top: 2%;
}

.updatedizhi_jsdiv {
	float: left;
	color: red;
	width: 43%;
	text-align: center;
	padding-bottom: 0.8%;
	padding-top: 0.8%;
}

.update_dizhidiv {
	float: left;
	width: 50%;
	line-height: 270%;
}

.update_one a {
	text-decoration: none;
	color: black;
}

.update_one a:hover {
	color: orange;
}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jsAddress.js"></script>
<script type="text/javascript">
	window.onload = function() {
		setInterval(function() {
			var date = new Date();
			var year = date.getFullYear(); //获取当前年份
			var mon = date.getMonth() + 1; //获取当前月份
			var da = date.getDate(); //获取当前日
			var day = date.getDay(); //获取当前星期几
			var h = date.getHours(); //获取小时
			var m = date.getMinutes(); //获取分钟
			var s = date.getSeconds(); //获取秒
			var d = document.getElementById('Date');
			d.innerHTML = '<font size="20px" color="#55b46c">' + h + ':' + m
					+ ':' + s + '</font>' + '<br/>' + '<font color="#55b46c">'
					+ '星期 ' + day + '<br/>' + year + '.' + mon + '.' + da
					+ '</font>';
		}, 1000)};
	
	
	function Over(o){o.style.backgroundColor='#fff'; o.style.border='1px solid #c31414';}
	function Out(o){o.style.backgroundColor='#fff'; o.style.border='1px dotted #CCC';}
	
	
	function display(id){  
	    var traget1=document.getElementById("lb1");  
	    var traget2=document.getElementById("lb2");  
	    var traget3=document.getElementById("lb3");  
	    var traget4=document.getElementById("lb4");
	    if(id==1){  
	        traget1.style.display="block";
	        traget2.style.display="none";
	        traget3.style.display="none";
	        traget4.style.display="none";
	    }
	    if(id==2){  
	        traget1.style.display="none";
	        traget2.style.display="block";
	        traget3.style.display="none";
	        traget4.style.display="none";
	    }
	    if(id==3){  
	        traget1.style.display="none";
	        traget2.style.display="none";
	        traget3.style.display="block";
	        traget4.style.display="none";
	    }
	    if(id==4){  
	        traget1.style.display="none";
	        traget2.style.display="none";
	        traget3.style.display="none";
	        traget4.style.display="block";
	    }
	}
	      
	//第二个div的js代码
	function update_jiups1() {
		var userlabel = document.getElementById("jiups");
		userlabel.className = "green";
	}

	function update_jiups2() {
		var div1 = document.getElementById("update1");
		var text = document.getElementsByName("jiups").item(0).value;
		var user = document.getElementById("jiups");
		
		var oldPass = '${session.u.password}';
		
		if (text == "" || text == null) {
			user.className = "red";
			div1.innerHTML = "旧密码不能为空!";
			return false;
		}
		
		/* if (text != oldPass) {
			user.className = "red";
			div1.innerHTML = "旧密码错误！！";
			return false;
		} */
		
	}

	function update_xinps1() {
		var userlabel = document.getElementById("newps1");
		userlabel.className = "green";
	}

	function update_xinps2() {
		var div1 = document.getElementById("update2");
		var text = document.getElementsByName("newps1").item(0).value;
		var user = document.getElementById("newps1");

		if (text == "" || text == null) {
			user.className = "red";
			div1.innerHTML = "新密码不能为空!";
			return false;
		}
		if (text.length > 20) {
			user.className = "red";
			div1.innerHTML = "新密码最多不超过20位!";
			return false;
		}
		if (text.length < 5) {
			user.className = "red";
			div1.innerHTML = "新密码最少为5位!";
			return false;
		}

		if (5 <= text.length <= 20) {
			user.className = "black";
			div1.innerHTML = "";
			return true;
		}
	}

	function update_queps1() {
		var userlabel = document.getElementById("queps");
		userlabel.className = "green";
	}

	function update_queps2() {
		var div1 = document.getElementById("tip3");
		var text = document.getElementsByName("queps").item(0).value;
		var user = document.getElementById("queps");
		var text2 = document.getElementsByName("newps1").item(0).value;

		if (text == "" || text == null) {
			user.className = "red";
			div1.innerHTML = "确认密码不能为空!";
			return false;
		}
		if (text == text2) {
			user.className = "black";
			div1.innerHTML = "";
			return true;
		} else {
			user.className = "red";
			div1.innerHTML = "两次密码不一致!";
			return false;
		}

	}

	function dealsubmit1() {
		if (update_jiups2() == false || update_xinps2() == false
				|| update_queps2() == false) {
			return false;
		} else {
			return true;
		}
	}
	//第三个div的js方法
	function name1() {
		var userlabel = document.getElementById("name");
		userlabel.className = "green";
	}

	function name2() {
		var div1 = document.getElementById("tip1");
		var text = document.getElementsByName("name").item(0).value;
		var user = document.getElementById("name");
		var reg = /[\u4E00-\u9FA5\uF900-\uFA2D]/;

		if (text == "" || text == null) {
			user.className = "red";
			div1.innerHTML = "真实姓名不能为空!";
			return false;
		}
		if (!(reg.test(text))) {
			  user.className="red";
			 div1.innerHTML="请输入汉字!";
			return false;
	  }
		if (text.length > 10) {
			user.className = "red";
			div1.innerHTML = "真实姓名最多不超过10位!";
			return false;
		}
		if (text.length < 1) {
			user.className = "red";
			div1.innerHTML = "真实姓名最少为5位!";
			return false;
		}

		if (1 <= text.length <= 10) {
			user.className = "black";
			div1.innerHTML = "";
			return true;
		}
	}

	function phone1() {
		var userlabel = document.getElementById("phone");
		userlabel.className = "green";
	}

	function phone2() {
		var div1 = document.getElementById("tip2");
		var text = document.getElementsByName("phone").item(0).value;
		var user = document.getElementById("phone");

		if(text.length==0 || text==""){
	        user.className="red";
			 div1.innerHTML="电话号码不能为空!";
			 return false;
		  }
	  if (!(/^1[34578]\d{9}$/.test(text))) {
			  user.className="red";
			 div1.innerHTML="电话号码格式错误!";
			return false;
	  }
	  if(1<=text.length){
		  user.className="black";
		   div1.innerHTML="";
		  return true;
		   }
	}
	
	  
	function resetFile(){   
		var file = document.getElementById('file');
		file.value = ''; 
	
	}   
	
	function checkFileType(str){  
	    var pos = str.lastIndexOf(".");  
	    var lastname = str.substring(pos,str.length);  
	    var resultName=lastname.toLowerCase();  
	    if ('.jpg'!=resultName.toString()){
	    	alert('只能上传jpg文件，您上传的文件类型为'+lastname+'，请重新上传');  
	    	
	    	resetFile(); 
	    }  
	}  

	

	function dealsubmit2() {
		if (name2() == false || phone2() == false) {
			return false;
		} else if(HtmlFileForm.file.value == "") {  
	           alert("请选择文件路径");  
	           return false;  
	   }else{
			return true;
		}
	}
	
	//第四个div的js方法
	
function users(){
	var userlabel=document.getElementById("update_dizhiname");
	   userlabel.className="green";
}
function nameid(){
	 var div1 =document.getElementById("tip4");
	  var text=document.getElementsByName("update_dizhiname").item(0).value;
	  var user=document.getElementById("update_dizhiname");
	  var reg = /[\u4E00-\u9FA5\uF900-\uFA2D]/;
	  if(text=="" || text==null){
		  user.className="red";
			 div1.innerHTML="收货人姓名不能为空!";
			return false;
	  }
	  if (!(reg.test(text))) {
		  user.className="red";
		 div1.innerHTML="请输入汉字!";
		return false;
  }
	  if(text.length>8){
	        user.className="red";
			 div1.innerHTML="收获人姓名最多不超过8位!";
			 return false;
		  }
	  if(text.length<2){
	        user.className="red";
			 div1.innerHTML="收获人姓名最少为2位!";
			 return false;
		  }
	  
	  if(2<=text.length<=8){
		  user.className="black";
		   div1.innerHTML="";
		  return true;
		   }
}
 
function dizhi(){
	var userlabel=document.getElementById("dizhi");
	   userlabel.className="green";
}
 
function pwdcat(){
	 var div1 =document.getElementById("tip5");
	  var text=document.getElementsByName("dizhi").item(0).value;
	  var user=document.getElementById("dizhi");
	  var reg = /[\u4E00-\u9FA5\uF900-\uFA2D]/;
	  
	  if(text.length==0 || text==""){
	        user.className="red";
			 div1.innerHTML="详细地址不能为空!";
			 return false;
		  }
	  if (!(reg.test(text))) {
		  user.className="red";
		 div1.innerHTML="请输入汉字!";
		return false;
  }
	  if(1<=text.length){
		  user.className="black";
		   div1.innerHTML="";
		  return true;
		   }
}

function phone(){
	var userlabel=document.getElementById("dizhiphone");
	   userlabel.className="green";
}
 
function YZphone(){
	 var div1 =document.getElementById("tip6");
	  var text=document.getElementsByName("dizhiphone").item(0).value;
	  var user=document.getElementById("dizhiphone");
	  
	  if(text.length==0 || text==""){
	        user.className="red";
			 div1.innerHTML="电话号码不能为空!";
			 return false;
		  }
	  if (!(/^1[34578]\d{9}$/.test(text))) {
			  user.className="red";
			 div1.innerHTML="电话号码格式错误!";
			return false;
	  }
	  if(1<=text.length){
		  user.className="black";
		   div1.innerHTML="";
		  return true;
		   }
}
function dealsubmit3(){
	
	var cmbProvince = $("#cmbProvince").val();
	var cmbCity = $("#cmbCity").val();
	var cmbArea = $("#cmbArea").val();
	var dizhi = $("#dizhi").val(); 
	var address = cmbProvince + cmbCity + cmbArea + dizhi;
	$("input[name='address']").val(address);
	$("input[name='addressP_M_D']").val(cmbProvince+"|"+cmbCity+"|"+cmbArea);
	if(pwdcat()==false  || nameid()==false|| YZphone()==false){
		return false;
	}else{
		return true;
	}
}

function show1(id){
	 var tr1 = document.getElementById("shouhu_"+id);
	    var text1 = document.getElementById("update_dizhiname");
	    var tr2 = document.getElementById("detailed_"+id);
	    var text2 = document.getElementById("dizhi");
	    var tr3 = document.getElementById("phone_"+id);
	    var text3 = document.getElementById("dizhiphone");
	    text1.value  =tr1.innerHTML;
	    text2.value  =tr2.innerHTML;
	    text3.value  =tr3.innerHTML;
	    
	    var tr4= document.getElementById("p_m_d_"+id).text;
	    tr4 = $.trim(tr4);
	    tr4 = tr4.split("|");
	    for (var i=0; i<tr4.length; i++) {
	    	if(i==0){
	    		var sheng=tr4[i];
	    		sheng = $.trim(sheng);
	    	}
	    	if(i==1){
	    		var shi=tr4[i];
	    		shi = $.trim(shi);
	    	}
	    	if(i==2){
	    		var qu=tr4[i];
	    		qu = $.trim(qu);
	    	}
	    }
	    addressInit('cmbProvince', 'cmbCity', 'cmbArea',sheng,shi,qu);
	    addressInit('Select1', 'Select2', 'Select3');
}		

</script>

</head>
<body>
	<div >
		<%@include file="top.jsp" %>
	</div>
	<div class="body">
		<div class="left">
			<div class="title">
				<div style="margin-left: 16%">
					<font style="color: red">全部功能</font>
				</div>
				<input type="submit" class="userxinxi_button userxinxi_inbutton"
					value="猜我喜欢" onclick="display(1)"><br /> <input
					type="submit" class="userxinxi_button userxinxi_inbutton"
					value="修改密码" onclick="display(2)"><br /> <input
					type="submit" class="userxinxi_button userxinxi_inbutton"
					value="修改信息" onclick="display(3)"><br /> <input
					type="submit" class="userxinxi_button userxinxi_inbutton"
					value="收货地址" onclick="display(4)"><br /> 

			</div>
		</div>
		<div class="center">
			<div class="centertop">
				<a href=""> #显示头像 #用户名 </a>
				<div style="float: right; padding-top: 2%">联系方式</div>
			</div>
			<div class="content">
				<div id="lb1" style="display: block;">
					<div class="dibu1">
						<b> 根据浏览，猜我喜欢</b>
					</div>
					<div class="dibu2">
						<div class="shangping" onmouseover=Over(this);
							onmouseout=Out(this);>
							<div style="border: #eee 1px solid;height: 200px;width: 80%;margin: 0 auto;display: flex;justify-content: center;align-items: center;" >
								<img alt="" src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" height="70%">
							</div>
							<font color="red">#商品价格</font>
								<br /> <font color="red">#商品价格</font><br /> 
							<div style="float: right">
								<font color="#595959">月销:#商品销量</font>
							</div>
						</div>
						<div class="clearfloat"></div>
					</div>
				</div>
				<!-- 第二个div -->
				<div id="lb2" style="display: none">

					<div
						style="width: 95.4%; margin-top: 2%; color: #FDE938; background-color: #F30408; padding-top: 1%; padding-bottom: 1%; ">
						<font size="5px">修改密码</font>
					</div>
					<form action="User_updatePassword.action" method="post"
						onsubmit="return dealsubmit1()">
						<div class="updateps">
							<div style="margin-left: 15.6%; margin-top: 1%; float: left;">
								<b>旧密码: </b><input type="password" id="jiups" name="jiups"
									onblur="update_jiups2()" onfocus="update_jiups1()"
									placeholder="输入旧密码校验身份">
							</div>

							<div id="update1"
								style="margin-top: 1%; float: left; color: red; width: 29%; text-align: center;"></div>
							<div class="clear"></div>

							<div style="margin-left: 15.6%; margin-top: 1%; float: left;">
								<b>新密码: </b><input type="password" id="newps1" name="newps1"
									onblur="update_xinps2()" onfocus="update_xinps1()"
									placeholder="5-20位数字,字母">
							</div>

							<div id="update2"
								style="margin-top: 1%; float: left; color: red; width: 29%; text-align: center;"></div>
							<div class="clear"></div>

							<div style="margin-left: 12.6%; margin-top: 1%; float: left;">
								<b>确认密码:</b> <input type="password" id="queps" name="queps"
									onblur="update_queps2()" onfocus="update_queps1()"
									placeholder="密码要跟新密码一致">
							</div>

							<div id="tip3"
								style="margin-top: 1%; float: left; color: red; width: 29%; text-align: center;"></div>
							<div class="clear"></div>
							<div class="update_anniu">

								<input type="submit" class="update_button" id="zhuce" value="提交"/>
							</div>
						</div>
					</form>
				</div>
				<!-- 第三个div -->
				<div id="lb3" style="display: none">
					<form action="userxinxi.jsp" method="post"
						enctype="multipart/form-data" name="HtmlFileForm"
						onsubmit="return dealsubmit2()">
						<div
							style="width: 95.4%; margin-top: 2%; color: white; background-color: black; padding-top: 1%; padding-bottom: 1%;">
							<font size="5px">修改用户信息</font>
						</div>
						<div
							style="text-align: center; padding-top: 2%; padding-bottom: 2%; line-height: 200%; border: 1px solid #e3e197; background: #ffffdd; width: 95.4%;">
							<div style="float: left; margin-left: 32%">
								<b>真实姓名:</b><input type="text" id="name" name="name"
									onblur="name2()" onfocus="name1()" placeholder="姓名1-10位">
							</div>
							<div id="tip1" class="updateuser_jsdiv"></div>
							<div class="clear"></div>

							<div style="float: left; margin-left: 32%">
								<b>电话号码:</b><input type="text" id="phone" name="phone"
									onblur="phone2()" onfocus="phone1()" placeholder="手机号码">
							</div>
							<div id="tip2" class="updateuser_jsdiv"></div>
							<div class="clear"></div>

							<div style="float: left; margin-left: 32%">
								<b>上传头像:</b> <span id='uploadSpan'> <input type="file"
									name="file" id="file" unselectable="on"
									onchange='checkFileType(this.value);' />
								</span>
							</div>
							<div class="clear"></div>
							<input type="submit" class="updateuser_button" id="zhuce"
								value="提交">

						</div>
					</form>
				</div>
				<!-- 第四个div -->
				<div id="lb4" style="display: none">
					<form action="addr_addAddress" method="post"
						onsubmit="return dealsubmit3()">
						<div class="update_dizhi">
							<input type="hidden" name="addressP_M_D" />
							<input type="hidden" name="address" />
							<input type="hidden" name="loginUser.username" value="${loginUser.username }" />
							<div style="width: 95.4%; color: #014d7f; background-color: LightCyan; padding-top: 1%; padding-bottom: 1%;">
								<font size="5px">收货地址</font>
							</div>
							<div style="color: orange; padding-bottom: 2%; padding-top: 2%;">
								新增收货地址</div>
							<div>
								省：<select id="cmbProvince"></select> 
								市：<select id="cmbCity"></select>
								区：<select id="cmbArea"></select>
								<script type="text/javascript">
								    addressInit('cmbProvince', 'cmbCity', 'cmbArea', '北京', '市辖区', '东城区');
								    addressInit('Select1', 'Select2', 'Select3');
								</script>
							</div>
							<div style="margin-top: 2%">
								<div class="update_dizhidiv">
									详细地址:<input type="text" id="dizhi" name="detailedAddress"
										placeholder="请输入详细地址,例如小区,楼栋号等信息 " onblur="pwdcat()"
										onfocus="dizhi()"
										style="width: 78%; height: 25px; margin-left: 2%">
								</div>
								<div id="tip5" class="updatedizhi_jsdiv"></div>
								<div class="clear"></div>
								<div class="update_dizhidiv">
									收货人姓名:<input type="text" id="update_dizhiname"
										name="a_name" placeholder="2-8位字符" onblur="nameid()"
										onfocus="users()"
										style="width: 75.5%; height: 25px; margin-left: 0.5%">
								</div>
								<div id="tip4" class="updatedizhi_jsdiv"></div>
								<div class="clear"></div>
								<div class="update_dizhidiv">
									手机号码:<input type="text" name="a_phone" id="dizhiphone"
										placeholder="收件人的手机号码" onblur="YZphone()" onfocus="phone()"
										style="width: 78%; height: 25px; margin-left: 2%">
								</div>
								<div id="tip6" class="updatedizhi_jsdiv"></div>
								<div class="clear"></div>
								<input type="submit" class="contsubmit">
							</div>
							<div
								style="width: 95.4%; color: #014d7f; background-color: LightCyan; padding-top: 1%; padding-bottom: 1%; margin-top: 3%;">
								<font size="5px">已保存${number }条地址</font>
							</div>

							<table style="width: 95.4%; margin-top: 4%" cellspacing="0">
								<tr style="background-color: #ebecf0;">
									<td class="update_one">收货人</td>
									<td class="update_one">地址</td>
									<td class="update_one">联系电话</td>
									<td class="update_one">操作</td>
								</tr>
								<s:iterator value="listAddr" var="listAddrs">
									<tr style="background-color: #ebecf0;">
										<td  class="update_one" id="shouhu_${listAddrs.a_id }">${listAddrs.a_name }</td>
										<td hidden="hidden" class="update_one" id="p_m_d_${listAddrs.a_id }">
											${listAddrs.addressP_M_D }
										</td>
										<td hidden="hidden" class="update_one" id="detailed_${listAddrs.a_id }">${listAddrs.detailedAddress }</td>
										<td class="update_one" id="address_${listAddrs.a_id }">${listAddrs.address }</td>
										<td class="update_one" id="phone_${listAddrs.a_id }">${listAddrs.a_phone }</td>
										<td class="update_one">
											<a onclick="show1(${listAddrs.a_id })" style="cursor:pointer">修改</a>/
											<a href="addr_delAddr?method=post&loginUser.username=${loginUser.username }&paging.presentPage=0&a_id=${listAddrs.a_id }" >删除</a>
										</td>
									</tr>
								</s:iterator>
							</table>
						</div>
					</form>
				</div>
				
			</div>

		</div>
		<div class="right">
			<div class="shang">我的日历</div>
			<div id="Date" class="Date"></div>
		</div>
	</div>
	
</body>
</html>