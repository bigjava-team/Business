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

<title>My JSP 'ShangPing.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	
		<style> 
    .boxa,.boxb{ margin:0 auto; width:400px;} 
    .boxa-l{ float:left; width:280px; height:80px; border:1px; solid:#F00;} 
    .boxa-r{ float:right; width:100px; height:80px; border:1px; solid:#F00;} 
    .boxb{ border:1px;solid:#000; height:40px; background:red;} 
    </style> 
    </head> 
    <body> 
    <div class="boxa"> 
    <div class="boxa-l">内容左</div> 
    <div class="boxa-r">内容右</div> 
    </div> 
    <div class="boxb">boxb盒子里的内容</div>
</body>
</html>
