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
	$(document).ready(function() {
		$("#search").click(function() {
			var userRoot = $("#select option:selected").val();// 获取下拉列表的值
			var searchText = $("#input").val();// 获取搜索文本框的值
			window.location.href="adminProduct_adminFindAll.action?user.root="+userRoot+"&searchText="+searchText+"&merchant.m_id=0"+"&paging.presentPage=0";
		});
	});
	
</script>
</head>
<body id="admin_list_body">
	<div id="admin_list_div_top">
		商品列表
	</div>
	
	<!-- 根据姓名查询，若不输入，则查询全部 -->
	<div class="input-group4">
		<select id="select" class="input-group_select4">
			<option class="option" value="0">全部</option>
			<option class="option" value="5">上架商品</option>
			<option class="option" value="4">下架商品</option>
			<option class="option" value="3">申请中商品</option>
			<option class="option" value="2">商品名称</option>
			<option class="option" value="1">是否热门</option>
		</select>
		<!-- 搜索框 -->
		<input type="text" name="queryText" id="input" class="input-group_input4" placeholder="查询全部" onfocus="this.placeholder=' ' " onblur=" this.placeholder='请输入代理人姓名进行查询' " value="${searchText}">
		
		<button id="search" class="input-group_button4">搜索</button>
	</div>
	
	<table id="admin_list_table" cellspacing="0" cellpadding="0" rules="all" width="100%" border="1" bordercolor="gray">
		<tr id="admin_list_tr1">
			<td width="10%" align="center">编号</td>
			<td width="15%" align="center">图片</td>
			<td width="25%" align="center">名称</td>
			<td width="10%" align="center">价格</td>
			<td width="10%" align="center">月销售量</td>
			<td width="10%" align="center">是否热门</td>
			<td width="10%" align="center">进入商品</td>
			<td width="10%" align="center">商品状态</td>
		</tr>
		<s:iterator value="productList" var="product"  status="status" >
			<tr id="admin_list_tr2" onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
				<td align="center">${product.p_id}</td>
				<td align="center"><img src='${fileImageAction.urlImage }${product.p_image }' /></td>
				<td align="center">${product.p_name }</td>
				<td align="center">${product.p_price }</td>
				<td align="center">${product.sale_volume }</td>
				<td align="center">
					<s:if test="product.sale_volume > 500">
						是
					</s:if>
					<s:else>
						否
					</s:else>
				</td>
				<td align="center"><a href="adminProduct_getProductById.action?product.p_id=${product.p_id }">查看商品</a></td>
				<td align="center">
					<s:if test="#product.p_freeze == 1">
						<a href="adminProduct_adminDeleteProduct.action?updateProduct.p_id=${product.p_id}">
							<img src="${pageContext.request.contextPath}/images/i_del.gif" width="16" height="16" border="0" class="admin_merchant_pd_immg1">
						</a>
					</s:if>
					<s:if test="#product.p_freeze == 2">
						商品已下架
					</s:if>
					<s:if test="#product.p_freeze == 3">
						申请中
					</s:if>
				</td>
			</tr>
		</s:iterator>
		
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