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
	</div>
	
	<table id="admin_list_table" cellspacing="0" cellpadding="0" rules="all" width="100%" border="1" bordercolor="gray">
		<tr id="admin_list_tr1">
			<td width="20%" align="center">编号</td>
			<td width="20%" align="center">图片</td>
			<td width="20%" align="center">名称</td>
			<td width="20%" align="center">数量</td>
			<td width="20%" align="center">价格</td>
		</tr>
		<tr id="admin_list_tr2" onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
			<td align="center">123</td>
			<td align="center"><img src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" height="50px" style="padding-top: 2px;" /></td>
			<td align="center">123</td>
			<td align="center">123</td>
			<td align="center">123</td>
		</tr>
		<tr id="admin_list_tr2" onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
			<td align="center">123</td>
			<td align="center"><img src="${pageContext.request.contextPath }/images/products/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" height="50px" style="padding-top: 2px;" /></td>
			<td align="center">123</td>
			<td align="center">123</td>
			<td align="center">123</td>
		</tr>
	</table>
	
	<div id="admin_list_div_page">
		第<s:property value="#session.paging.presentPage"/>页/<s:property value="#session.paging.page"/>页&nbsp;&nbsp;&nbsp;&nbsp;
		<s:if test="#session.paging.presentPage != 1">
			<a href="${pageContext.request.contextPath }/adminProduct_adminFindAll.action?paging.presentPage=1&user.root=${session.userRoot}&searchText=${session.searchText}&merchant.m_id=0">首页</a>
			<a href="${pageContext.request.contextPath }/adminProduct_adminFindAll.action?paging.presentPage=<s:property value="#session.paging.presentPage-1"/>&user.root=${session.userRoot}&searchText=${session.searchText}&merchant.m_id=0">上一页</a>
		</s:if>
		<s:if test="#session.paging.presentPage != #session.paging.page">
			<a href="${pageContext.request.contextPath }/adminProduct_adminFindAll.action?paging.presentPage=<s:property value="#session.paging.presentPage+1"/>&user.root=${session.userRoot}&searchText=${session.searchText}&merchant.m_id=0">下一页</a>
			<a href="${pageContext.request.contextPath }/adminProduct_adminFindAll.action?paging.presentPage=<s:property value="#session.paging.page"/>&user.root=${session.userRoot}&searchText=${session.searchText}&merchant.m_id=0">尾页</a>
		</s:if>
		&nbsp;共<s:property value="#session.paging.totalNumber"/>条
	</div>
	
</body>
</html>