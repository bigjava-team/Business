<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
			<td width="18%" align="center">序号</td>
			<td width="18%" align="center">列表ID</td>
			<td width="36%" align="center">一级分类列表</td>
			<td width="14%" align="center">编辑</td>
			<td width="14%" align="center">删除</td>
		</tr>
		
		<!-- 迭代器遍历用户 -->
		<s:iterator var="category" value="#session.showCategory" status="status">
		
		<tr id="admin_list_tr2" onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
			<td width="18%" align="center"><s:property value="#status.count"/></td>
			<td width="18%" align="center">${category.c_id}</td>
			<td width="36%" align="center">${category.c_name}</td>
			<td width="14%" align="center">
				<a href="Category_findCategoryById.action?c_id=${category.c_id}">
					<img src="${pageContext.request.contextPath}/images/i_edit.gif" border="0" style="CURSOR: hand">
				</a>
			</td>
			<td width="14%" align="center">
				<a href="Category_deleteCategory.action?c_id=${category.c_id}">
					<img src="${pageContext.request.contextPath}/images/i_del.gif" width="16" height="16" border="0" style="CURSOR: hand">
				</a>
			</td>
		</tr>
		</s:iterator>
		
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