<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
	function addCategory(){
		window.location.href = "${pageContext.request.contextPath}/admin/category/add.jsp";
	}
</script>
</head>
<body id="admin_list_body">
	<div id="admin_list_div_top">
		一级分类列表
	</div>
	
	<div style="width: 100%; height: 30px;">
		<button type="button" id="add" name="add" value="添加" class="button_add" onclick="addCategory()" 
			style="float: right; "> 添加 </button>
	</div>
	
	<table id="admin_list_table" cellspacing="0" cellpadding="1" rules="all" width="100%" border="1" bordercolor="gray">
		<tr id="admin_list_tr1">
			<td width="36%" align="center">序号</td>
			<td width="36%" align="center">一级分类列表</td>
			<td width="14%" align="center">编辑</td>
			<td width="14%" align="center">删除</td>
		</tr>
		<tr id="admin_list_tr2" onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
			<td width="36%" align="center">1</td>
			<td width="36%" align="center">服装</td>
			<td width="14%" align="center">
				<%-- <a href="${pageContext.request.contextPath}/adminCategory_edit.action?cid=<s:property value="#c.cid"/>"> --%>
				<a href="${pageContext.request.contextPath}/admin/category/edit.jsp">
					<img src="${pageContext.request.contextPath}/images/i_edit.gif" border="0" style="CURSOR: hand">
				</a>
			</td>
			<td width="14%" align="center">
				<a>
					<img src="${pageContext.request.contextPath}/images/i_del.gif" width="16" height="16" border="0" style="CURSOR: hand">
				</a>
			</td>
		</tr>
		
		<tr onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';" style="font-size: 12px;">
			<td width="36%" align="center">2</td>
			<td width="36%" align="center">家电</td>
			<td width="14%" align="center">
				<%-- <a href="${pageContext.request.contextPath}/adminCategory_edit.action?cid=<s:property value="#c.cid"/>"> --%>
				<a href="${pageContext.request.contextPath}/admin/category/edit.jsp">
					<img src="${pageContext.request.contextPath}/images/i_edit.gif" border="0" style="CURSOR: hand">
				</a>
			</td>
			<td width="14%" align="center">
				<a>
					<img src="${pageContext.request.contextPath}/images/i_del.gif" width="16" height="16" border="0" style="CURSOR: hand">
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