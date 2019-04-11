<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>
</head>
<body id="home_right_body">
	<div id="divSY">
		管理员后台管理首页
	</div>
	<center>
		<div>登录成功！</div>
		<div>欢迎您，管理员：${sessionScope.loginUser.username } </div>
	</center>	
	
</body>
</html>