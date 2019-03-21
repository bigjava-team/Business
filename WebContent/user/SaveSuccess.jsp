<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册成功</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->



<style >
 body { margin: 0;
       	padding: 0;
        background: url('TuPian/h.jpg') no-repeat fixed;
        -webkit-background-size: cover;
        }
        
        a{
		text-decoration:none;
		font-size:28px;
		color:black;
}
		a:hover{
		color:#8E8E8E;
		
		}
    </style>


  </head>
  
  <body>
  <div  style="text-align:center;margin-top: 100px;">
  <font size="6px">恭喜你!你是光光网第<font color="red">#用户id</font>个成功注册的用户</font><br/>
		<font size="5px">用户名为:</font><font size="17px" color="yellow">#用户名</font>
		<br/><br/> 
		<img src="TuPian/tu.png" height="50" width="50" align="top"><a href="Update.jsp">完善个人信息!</a><br/><br/>
		<img src="TuPian/tu.png" height="50" width="50" align="top"><a href="???">返回光光网!</a>
		 </div>
  </body>
</html>
