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
		店铺商品列表
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
			<td align="center">2</td>
			<td align="center">2</td>
			<td align="center">2</td>
			<td align="center">2</td>
			<td align="center">2</td>
			<td align="center">1000</td>
			<td align="center">否</td>
			<td align="center">
				<a>
					<img src="${pageContext.request.contextPath}/images/i_del.gif" width="16" height="16" border="0" style="CURSOR: hand">
				</a>
			</td>
		</tr>
		
	</table>
	
	<div id="admin_list_div_page" style="float: inherit; overflow: hidden;">
		<div style="float: inherit; text-align: center;">
			第<s:property value="pageBean.page"/>页/<s:property value="pageBean.totalPage"/>页&nbsp;&nbsp;&nbsp;&nbsp;
			<s:if test="pageBean.page != 1">
				<a href="${pageContext.request.contextPath }/adminCategorySecond_findAll.action?page=1">首页</a>
				<a href="${pageContext.request.contextPath }/adminCategorySecond_findAll.action?page=<s:property value="pageBean.page-1"/>">上一页</a>
			</s:if>
			<s:if test="pageBean.page != pageBean.totalPage">
				<a href="${pageContext.request.contextPath }/adminCategorySecond_findAll.action?page=<s:property value="pageBean.page+1"/>">下一页</a>
				<a href="${pageContext.request.contextPath }/adminCategorySecond_findAll.action?page=<s:property value="pageBean.totalPage"/>">尾页</a>
			</s:if>
			<div style="float: right;">
				<input type="submit" onclick="history.go(-1)" value="返回" />
			</div>
		</div>
		
	</div>
	
</body>
</html>