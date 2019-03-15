<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>开店成功</title>
    
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
        background: url('TuPian/d.jpg') no-repeat fixed;
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
  <font size="6px">恭喜你!你是光光网第<font color="red">#后台商家id</font>个开店成功的卖家</font><br/>
		<font size="5px">店铺名为:</font><font size="17px" color="yellow">#店铺名</font>
		<br/><br/> 
		<img src="TuPian/tu.png" height="50" width="50" align="top"><a href="???">设置店铺!</a><br/><br/>
		<img src="TuPian/tu.png" height="50" width="50" align="top"><a href="???">返回光光网!</a>
		 </div>
  </body>
</html>
