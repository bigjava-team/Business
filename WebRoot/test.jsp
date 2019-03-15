<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		
		
		
		<style>
div {
width: 100px;
height: 50px;
border: 1px solid #ccc;
text-align: center;
line-height: 50px;
font-size: 14px;
padding: 10px;
box-sizing: border-box;
}
a {
display: block;
text-decoration: none;
background: pink;
width: 100px;
height: 50px;
}
a:focus h4{
color: green;
background: yellow;
}
a h4{
color: hotpink;
}
</style>
</head>
<body>
<div>
<a href="#">
			<h4>你好</h4>
</a>
<a href="#">
<h4>你好</h4>
</a>
<a href="#">
<h4>你好</h4>
</a>
<a href="#">
<h4>你好</h4>
</a>
<a href="#">
<h4>你好</h4>
</a>
</div>
  </body>
</html>
