<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#search").click(function() {
			var searchText = $("#input").val();// 获取搜索文本框的值
			window.location.href="adminProduct_showToProduct.action?user.root=0"+"&searchText="+searchText+"&paging.presentPage=0";
		});
	});
	
</script>

</head>
<body id="admin_list_body">
	<div id="admin_list_div_top">
		商品列表
	</div>
	<!-- 根据输入内容查询，若不输入，则查询全部 -->
	<div class="input-group3">
		<!-- 搜索框 -->
		<input type="text" name="queryText" id="input" class="input-group_input3" placeholder="查询全部" onfocus="this.placeholder=' ' " onblur=" this.placeholder='请输入代理人姓名进行查询' " value="${searchText}">
		<!-- placeholder的点击消失及为空时点击其他继续显示提示  -->
		<button id="search" class="input-group_button3">搜索</button>
	</div>
	
	<table id="admin_list_table" cellspacing="0" cellpadding="0" rules="all" width="100%" border="1" bordercolor="gray">
		<tr id="admin_list_tr1">
			<td width="10%" align="center">序号</td>
			<td width="10%" align="center">编号</td>
			<td width="10%" align="center">图片</td>
			<td width="20%" align="center">名称</td>
			<td width="10%" align="center">市场价格</td>
			<td width="10%" align="center">光光价格</td>
			<td width="11%" align="center">申请时间</td>
			<td width="12%" align="center">商品信息</td>
			<td width="7%" align="center">申请意见</td>
		</tr>
		<s:iterator value="productLists" var="product"  status="status">
			<tr id="admin_list_tr2" onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
				<td align="center"><s:property value="#status.count"/></td>
				<td align="center">${product.p_id} </td>
				<td align="center">${product.p_image}</td>
				<td align="center">${product.p_name}</td>
				<td align="center">${product.market}</td>
				<td align="center">${product.p_price}</td>
				<td align="center">${product.p_date}</td>
				<td align="center"><a href="${pageContext.request.contextPath }/admin/product/product.jsp">查看商品</a></td>
				<td align="center">
					<a href="adminProduct_agreeProduct.action?user.root=0&updateProduct.p_id=${product.p_id }">同意</a>
				</td>
			</tr>
		</s:iterator>
	</table>
	
	<div id="admin_list_div_page">
		第<s:property value="#session.paging.presentPage"/>页/<s:property value="#session.paging.page"/>页&nbsp;&nbsp;&nbsp;&nbsp;
		<s:if test="#session.paging.presentPage != 1">
			<a href="${pageContext.request.contextPath }/adminProduct_showToProduct.action?paging.presentPage=1&user.root=${session.userRoot}&searchText=${session.searchText}">首页</a>
			<a href="${pageContext.request.contextPath }/adminProduct_showToProduct.action?paging.presentPage=<s:property value="#session.paging.presentPage-1"/>&user.root=${session.userRoot}&searchText=${session.searchText}">上一页</a>
		</s:if>
		<s:if test="#session.paging.presentPage != #session.paging.page">
			<a href="${pageContext.request.contextPath }/adminProduct_showToProduct.action?paging.presentPage=<s:property value="#session.paging.presentPage+1"/>&user.root=${session.userRoot}&searchText=${session.searchText}">下一页</a>
			<a href="${pageContext.request.contextPath }/adminProduct_showToProduct.action?paging.presentPage=<s:property value="#session.paging.page"/>&user.root=${session.userRoot}&searchText=${session.searchText}">尾页</a>
		</s:if>
		&nbsp;共<s:property value="#session.paging.totalNumber"/>条
	</div>
	
</body>
</html>