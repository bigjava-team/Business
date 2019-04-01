<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin-jQuery-js.js"></script>
<script type="text/javascript">
	function addCategory(){
		window.location.href = "${pageContext.request.contextPath}/MerchantProduct_addPage.action";
	}

	$(document).ready(function() {
		$("#button").click(function() {
			var searchText = $("#input").val();// 获取搜索文本框的值
			alert(searchText);
			window.location.href="MerchantProduct_findAll?method=post&searchText="+searchText+"&paging.presentPage=0";
		});
	});
</script>

</head>
<body id="admin_list_body">

	<div id="admin_list_div_top">
		商品列表
	</div>
	<!-- 根据查询值，若不输入，则查询全部 -->
	
	<div class="admin_merchant_pd_l_d1">
		<!-- 根据姓名查询，若不输入，则查询全部 -->
		<div class="input-group5">
			<select class="input-group_select5">
				<option class="option" value="0">全部</option>
				<option class="option" value="3">编号</option>
				<option class="option" value="2">名称</option>
				<option class="option" value="1">月销售量</option>
				<option class="option" value="1">是否热门</option>
			</select>
			<!-- 搜索框 -->
			<input type="text" name="queryText" id="input" class="input-group_input7" placeholder="查询全部" onfocus="this.placeholder=' ' " onblur=" this.placeholder='请输入代理人姓名进行查询' " value="${searchText}">
			
			<input type="text" name="queryText" id="input" class="input-group_input8" placeholder="最低价格"  value="">
			<div class="input-group5_d1">
				&nbsp; - &nbsp;
			</div>
			<input type="text" name="queryText" id="input" class="input-group_input9" placeholder="最高价格"  value="">
			<!-- placeholder的点击消失及为空时点击其他继续显示提示  -->
			<button id="search" class="input-group_button5">搜索</button>
		</div>
		<div class="input-group5d1">
			<button type="button" id="add" name="add" value="添加" class="button_add button-group_button_add" onclick="addCategory()">
				 上架 
			</button>
		</div>
	</div>
	
	<table id="admin_list_table" cellspacing="0" cellpadding="0" rules="all" width="100%" border="1" bordercolor="gray">
		<tr id="admin_list_tr1">
			<td width="8%" align="center">编号</td>
			<td width="10%" align="center">图片</td>
			<td width="16%" align="center">名称</td>
			<td width="7%" align="center">商城价格</td>
			<td width="7%" align="center">市场价格</td>
			<td width="8%" align="center">月销售量</td>
			<td width="8%" align="center">商品描述</td>
			<td width="7%" align="center">是否热门</td>
			<td width="10%" align="center">上架时间</td>
			<td width="7%" align="center">商品状态</td>
			<td width="7%" align="center">编辑</td>
			<td width="7%" align="center">下架</td>
		</tr>
		<!-- 迭代器 -->
		<s:iterator value="productList" status="status" var="product">
		<tr id="admin_list_tr2" onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
			<td align="center">${product.p_id}</td>
			<td align="center"><img src='<s:property value='fileImageAction.urlImage'/>${product.p_image }' /></td>
			<td align="center">${product.p_name }</td>
			<td align="center">${product.p_price }</td>
			<td align="center">${product.market }</td>
			<td align="center">${product.sale_volume }</td>
			<td align="center">${product.p_desc }</td>
			<td align="center">
				<s:if test="product.sale_volume > 500">
					是
				</s:if>
				<s:else>
					否
				</s:else>
			</td>
			<td align="center">${product.p_date }</td>
			<td align="center">
				<s:if test="product.p_freeze ==1">
					已上架
				</s:if>
				<s:elseif test="product.p_freeze ==2">
					已下架
				</s:elseif>
				<s:else>
					申请中
				</s:else>
			
			</td>
			<td align="center">
				<a href="${pageContext.request.contextPath}/MerchantProduct_getProductById.action?product.p_id=${product.p_id}">
					<img class="admin_merchant_pd_immg1" src="${pageContext.request.contextPath}/images/i_edit.gif" border="0">
				</a>
			</td>
			<td align="center">
				<a>
					<img class="admin_merchant_pd_immg1" src="${pageContext.request.contextPath}/images/i_del.gif" width="16" height="16" border="0">
				</a>
			</td>
		</tr>
		</s:iterator>
		
	</table>
	
	<div id="admin_list_div_page">
		第<s:property value="#session.paging.presentPage"/>页/<s:property value="#session.paging.page"/>页&nbsp;&nbsp;&nbsp;&nbsp;
		<s:if test="#session.paging.presentPage != 1">
			<a href="${pageContext.request.contextPath }/MerchantProduct_findAll.action?paging.presentPage=1&searchText=${session.searchText}&merchant.m_id=${merchant.m_id}">首页</a>
			<a href="${pageContext.request.contextPath }/MerchantProduct_findAll.action?paging.presentPage=<s:property value="#session.paging.presentPage-1"/>&searchText=${session.searchText}&merchant.m_id=${merchant.m_id}">上一页</a>
		</s:if>
		<s:if test="#session.paging.presentPage != #session.paging.page">
			<a href="${pageContext.request.contextPath }/MerchantProduct_findAll.action?paging.presentPage=<s:property value="#session.paging.presentPage+1"/>&searchText=${session.searchText}&merchant.m_id=${merchant.m_id}">下一页</a>
			<a href="${pageContext.request.contextPath }/MerchantProduct_findAll.action?paging.presentPage=<s:property value="#session.paging.page"/>&searchText=${session.searchText}&merchant.m_id=${merchant.m_id}">尾页</a>
		</s:if>
	</div>
	
</body>
</html>