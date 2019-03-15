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
		店铺列表
	</div>
	
	<form action="" method="post">
	
		<table id="admin_list_table" cellspacing="0" cellpadding="0" rules="all" width="100%" border="1" bordercolor="gray">
			<tr id="admin_list_tr1">
				<td width="12%" align="center">序号</td>
				<td width="12%" align="center">编号</td>
				<td width="18%" align="center">头像</td>
				<td width="18%" align="center">名称</td>
				<td width="18%" align="center">创建时间</td>
				<td width="11%" align="center">进入店铺</td>
				<td width="11%" align="center">状态</td>
			</tr>
			
			<tr id="admin_list_tr2" onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
				<td align="center">1</td>
				<td align="center">1</td>
				<td align="center">
					<a>
						<%-- <img alt="商品图片" width="40" height="45" src="${pageContext.request.contextPath}/<s:property value="#product.image"/> "> --%>
						商品图片
					</a>
				</td>
				<td align="center">光光店铺</td>
				<td align="center">2018-10-10 10:10:10</td>
				<td align="center">
					<a href="${pageContext.request.contextPath }/admin/merchant/m_product.jsp">
						进入此店铺
					</a>
				</td>
				<td align="center">
					<a>
						冻结
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
	</form>
</body>
</html>