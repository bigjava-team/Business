<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>
</head>
<body id="admin_list_body">
	<div id="admin_list_div_top">
		商品列表
	</div>
	
	<!-- 根据姓名查询，若不输入，则查询全部 -->
	<div class="input-group4">
		<select class="input-group_select4">
			<option class="option" value="0">全部</option>
			<option class="option" value="3">编号</option>
			<option class="option" value="2">名称</option>
			<option class="option" value="1">月销售量</option>
			<option class="option" value="1">是否热门</option>
		</select>
		<!-- 搜索框 -->
		<input type="text" name="queryText" id="input" class="input-group_input4" placeholder="查询全部" onfocus="this.placeholder=' ' " onblur=" this.placeholder='请输入代理人姓名进行查询' " value="${searchText}">
		
		<input type="text" name="queryText" id="input" class="input-group_input5" placeholder="最低价格"  value="">
		<div class="input-group4_d4">
			&nbsp; - &nbsp;
		</div>
		<input type="text" name="queryText" id="input" class="input-group_input6" placeholder="最高价格"  value="">
		<!-- placeholder的点击消失及为空时点击其他继续显示提示  -->
		<button id="search" class="input-group_button4">搜索</button>
	</div>
	
	<table id="admin_list_table" cellspacing="0" cellpadding="0" rules="all" width="100%" border="1" bordercolor="gray">
		<tr id="admin_list_tr1">
			<td width="10%" align="center">序号</td>
			<td width="10%" align="center">编号</td>
			<td width="10%" align="center">图片</td>
			<td width="20%" align="center">名称</td>
			<td width="10%" align="center">价格</td>
			<td width="10%" align="center">月销售量</td>
			<td width="10%" align="center">是否热门</td>
			<td width="10%" align="center">进入商品</td>
			<td width="10%" align="center">下架商品</td>
		</tr>
		<tr id="admin_list_tr2" onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
			<td align="center">1</td>
			<td align="center">1</td>
			<td align="center">1</td>
			<td align="center">1</td>
			<td align="center">1</td>
			<td align="center">f</td>
			<td align="center">1000000000</td>
			<td align="center"><a href="${pageContext.request.contextPath }/admin/product/list_product.jsp">查看商品</a></td>
			<td align="center">
				<a>
					<img src="${pageContext.request.contextPath}/images/i_del.gif" width="16" height="16" border="0" class="admin_merchant_pd_immg1">
				</a>
			</td>
		</tr>
		
	</table>
	
	<div id="admin_list_div_page">
		第<s:property value="pageBean.page"/>页/<s:property value="pageBean.totalPage"/>页&nbsp;&nbsp;&nbsp;&nbsp;
		<s:if test="pageBean.page != 1">
			<a href="${pageContext.request.contextPath }/adminCategorySecond_findAll.action?page=1">首页</a>
			<a href="${pageContext.request.contextPath }/adminCategorySecond_findAll.action?page=<s:property value="pageBean.page-1"/>">上一页</a>
		</s:if>
		<s:if test="pageBean.page != pageBean.totalPage">
			<a href="${pageContext.request.contextPath }/adminCategorySecond_findAll.action?page=<s:property value="pageBean.page+1"/>">下一页</a>
			<a href="${pageContext.request.contextPath }/adminCategorySecond_findAll.action?page=<s:property value="pageBean.totalPage"/>">尾页</a>
		</s:if>
	</div>
	
</body>
</html>