<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
 <html>
 
  <style type="text/css">
 .contentone68{ background-color: rgba(0,0,0,0.1); width:10%;height:24px;border:0px solid ;float:left;
 				float:left;align-items:center; display: -webkit-flex; justify-content:center; display: -webkit-flex;}
 .contentone69{ background-color: rgba(0,0,0,0.05); width:10%;height:25px; border:0.1px solid #ffffff;
 				 float:left;align-items:center; display: -webkit-flex; justify-content:center; display: -webkit-flex; }
 .wenziz11{ text-align:center;   font-size:12px; word-spacing:33px; }
 a {text-decoration: none; text-decoration: none; color: inherit;}
  #c div{float:left;} 
 
 </style>
 
<div id="c" class="wenziz11">
<div class="contentone68" >${category.c_name }</div>
<div class="title" style="width:90%;" >
	<s:iterator value="listCategorySecond" var="LCS">
		<a class="contentone69" href="index_cs_idQueryAllCategorySecond.action?method=post&categorySecond.cs_id=<s:property value='#LCS.cs_id' />&paging.presentPage=1&loginUser.username=${loginUser.username}" id="CS_<s:property value='#LCS.cs_id'/>"><s:property value="#LCS.cs_name" /></a>
	</s:iterator>
</div>
</div>
	
 </html>   
   