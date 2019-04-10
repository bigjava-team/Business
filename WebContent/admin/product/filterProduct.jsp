<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			window.location.href="adminProduct_";
		});
	});
	
</script>


</head>
<body id="admin_list_body">
	<div id="admin_list_div_top">
		商品列表
	</div>
	
	<!-- 根据姓名查询，若不输入，则查询全部 -->
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
		<tr id="admin_list_tr2" onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
			<td align="center">1</td>
			<td align="center">1</td>
			<td align="center">1</td>
			<td align="center">1</td>
			<td align="center">1</td>
			<td align="center">f</td>
			<td align="center">2018-10-10 10:10:10</td>
			<td align="center"><a href="${pageContext.request.contextPath }/admin/product/product.jsp">查看商品</a></td>
			<td align="center">
				同意
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