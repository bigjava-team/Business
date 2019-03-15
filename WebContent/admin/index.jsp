<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script type="text/javascript">
		
		function checkFrom(){
			var username = document.getElementById("username").value;
			var password = document.getElementById("password").value;
			
			if (username == null || username == "") {
				alert("请输入用户名!");
				return false;
			}else if (password == null || password == "") {
				alert("请输入密码!");
				return false;
			}
			return true;
		}
	
	</script>


	<style>

		a:hover { 
			color:#FF00FF; 
			text-decoration:none; 
		} 
		a:active { 
			color:#D200D2; 
			text-decoration:none; 
		} 

	</style>

</head>
<body bgcolor="#E6E6FA" style="font-size:20px ">

	<h2 style="color:#FF8000">欢迎您的到来<br>请登陆!</h2>
	
	<form action="User_login" method="post" onsubmit="return checkFrom()">
		
		username: <input type="text" name="user.username" id="username" /><br />
		password: <input type="password" name="user.password" id="password" /><br>
				<input type="submit" value="提交" />
	</form>
	
	<a href="save.jsp" >注册</a>

</body>
</html>