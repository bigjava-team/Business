<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>

</head>
<body id="admin_list_body">
	
	<form action="" method="post">
		<div id="admin_list_div_top">
			订单列表
		</div>
		
		<div class="admin_list_div_moddle2">
			<!-- 根据查询值，若不输入，则查询全部 -->
			<div class="input-group2">
				<!-- 搜索框 -->
				<input type="text" id="input" class="input-group_input2" placeholder="查询全部" onfocus="this.placeholder=' ' " onblur=" this.placeholder='请输入代理人姓名进行查询' " value="${searchCategorySecond}">
				<!-- placeholder的点击消失及为空时点击其他继续显示提示  -->
				<button id="button" class="input-group_button2">搜索</button>
			</div>
		</div>
		
		<table id="admin_list_table" cellspacing="0" cellpadding="0" rules="all" width="100%" border="1" bordercolor="gray">
			<tr id="admin_list_tr1">
				<td width="19%" align="center">编号</td>
				<td width="12.5%" align="center">订单金额</td>
				<td width="12.5%" align="center">订单时间</td>
				<td width="12.5%" align="center">收货人姓名</td>
				<td width="12.5%" align="center">收货人电话</td>
				<td width="18.5%" align="center">收货人地址</td>
				<td width="12.5%" align="center">状态</td>
			</tr>
			<tr id="admin_list_tr2"  onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
				<td align="center">123456789112345678911234567891</td>
				<td align="center">¥123</td>
				<td align="center">2019-24-24 24:24:24</td>
				<td align="center">张三</td>
				<td align="center">12345678910</td>
				<td align="center">
					江西省南昌市南昌县紫阳大道
				</td>
				<td align="center">
					<button>发货</button>
				</tr>
		</table>
		
		<div id="admin_list_div_page">
				第<s:property value="#session.paging.presentPage"/>页/<s:property value="#session.paging.page"/>页&nbsp;&nbsp;&nbsp;&nbsp;
					<s:if test="#session.paging.presentPage != 1">
						<a href="${pageContext.request.contextPath }/adminOrders_showAllOrders.action?paging.presentPage=1&searchText=${session.searchText}">首页</a>
						<a href="${pageContext.request.contextPath }/adminOrders_showAllOrders.action?paging.presentPage=<s:property value="#session.paging.presentPage-1"/>&searchText=${session.searchText}">上一页</a>
					</s:if>
					<s:if test="#session.paging.presentPage != #session.paging.page">
						<a href="${pageContext.request.contextPath }/adminOrders_showAllOrders.action?paging.presentPage=<s:property value="#session.paging.presentPage+1"/>&searchText=${session.searchText}">下一页</a>
						<a href="${pageContext.request.contextPath }/adminOrders_showAllOrders.action?paging.presentPage=<s:property value="#session.paging.page"/>&searchText=${session.searchText}">尾页</a>
					</s:if>
			&nbsp;共<s:property value="#session.paging.totalNumber"/>条
		</div>
	</form>
</body>
</html>