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
		window.location.href = "${pageContext.request.contextPath}/admin/category/add.jsp";
	}
</script>
</head>
<body id="admin_list_body">
	<div id="admin_list_div_top">
		一级分类列表
	</div>
	
	<div id="admin_list_moddle">
		<button type="button" id="add" name="add" value="添加" class="button_add button-group_button_add" onclick="addCategory()"> 添加 </button>
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
					<img class="admin_list_tr2_img1" src="${pageContext.request.contextPath}/images/i_edit.gif" border="0">
				</a>
			</td>
			<td width="14%" align="center">
				<a href="Category_deleteCategory.action?c_id=${category.c_id}">
					<img class="admin_list_tr2_img1" src="${pageContext.request.contextPath}/images/i_del.gif" width="16" height="16" border="0">
				</a>
			</td>
		</tr>
		</s:iterator>
		
	</table>
	
</body>
</html>