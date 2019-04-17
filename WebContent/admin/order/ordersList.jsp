<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
</script>
</head>
<body id="admin_list_body">
	<div id="admin_list_div_top">
		商品列表
		<div style="float: right;"><a href="javascript:;" style="text-decoration: none;" onclick="history.go(-1)">返回</a></div>
	</div>
	
	<table id="admin_list_table" cellspacing="0" cellpadding="0" rules="all" width="100%" border="1" bordercolor="gray">
		<tr id="admin_list_tr1">
			<td width="20%" align="center">编号</td>
			<td width="20%" align="center">图片</td>
			<td width="20%" align="center">名称</td>
			<td width="20%" align="center">数量</td>
			<td width="20%" align="center">价格</td>
		</tr>
		<s:iterator value="listOrderItem" var="listOrderItems">
			<tr id="admin_list_tr2" onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
				<td align="center">${listOrderItems.product.p_id }</td>
				<td align="center"><img src="${fileImageAction.urlImage }${listOrderItems.product.p_image }" height="50px" style="padding-top: 2px;" /></td>
				<td align="center">${listOrderItems.product.p_name }</td>
				<td align="center">${listOrderItems.count }</td>
				<td align="center">${listOrderItems.product.p_price }</td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>