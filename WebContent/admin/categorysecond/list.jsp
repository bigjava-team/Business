<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
function addCategorySecond(){
	window.location.href = "${pageContext.request.contextPath}/CategorySecond_addPage.action";
}
</script>
<style type="text/css">
	.input-group {
		width: 346px;
		height: 25px;
		margin: 0 auto;
		margin-top: 0px;
		margin-bottom: 8px;
		border: 2px solid #acd6ff;
		padding: 0px;
	}

	input[type="text"] {
		height: 25px;
		width: 200px;
		background: #FFFFFF;
		font-size: 12px;
		float: left;
		border: 0px solid #FFF;
		border-left: 1px solid #c0c0c0;
		padding-left: 15px;
		outline: none;

	}

	.bs {
		height: 25px;
		width: 50px;
		background: #acd6ff;
		border: 0px solid #ff7496;
		float: right;
		cursor: pointer;
	}
	
</style>

</head>
<body id="admin_list_body">
	<div id="admin_list_div_top">
		二级分类列表
	</div>
	
	<!-- 根据查询值，若不输入，则查询全部 -->
	<div class="input-group">
		<!-- 搜索框 -->
		<input type="text" id="input" placeholder="查询全部" onfocus="this.placeholder=' ' " onblur=" this.placeholder='请输入代理人姓名进行查询' " value="${searchCategorySecond}">
		<!-- placeholder的点击消失及为空时点击其他继续显示提示  -->
		<span class=" ">
			<button id="button" class="bs">搜索</button>
		</span>
	</div>
	
	
	<div style="width: 100%; height: 30px;">
		<button type="button" id="add" name="add" value="添加" class="button_add" onclick="addCategorySecond();" 
			style="float: right; "> 添加 </button>
	</div>
	
	<table id="admin_list_table" cellspacing="0" cellpadding="0" rules="all" width="100%" border="1" bordercolor="gray">
		<tr id="admin_list_tr1">
			<td width="36%" align="center">序号</td>
			<td width="36%" align="center">二级分类列表</td>
			<td width="14%" align="center">编辑</td>
			<td width="14%" align="center">删除</td>
		</tr>
		<!-- 迭代器 -->
		<s:iterator value="#session.showCategorySecond" status="status" var="categorySecond">
		<tr id="admin_list_tr2" onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
			<td width="36%" align="center"><s:property value="#status.count"/></td>
			<td width="36%" align="center"><s:property value="#categorySecond.cs_name"/></td>
			<td width="14%" align="center">
				<a href="${pageContext.request.contextPath}/admin/categorysecond/edit.jsp">
					<img src="${pageContext.request.contextPath}/images/i_edit.gif" border="0" style="CURSOR: hand">
				</a>
			</td>
			<td width="14%" align="center">
				<a>
					<img src="${pageContext.request.contextPath}/images/i_del.gif" width="16" height="16" border="0" style="CURSOR: hand">
				</a>
			</td>
		</tr>
	</s:iterator>
	</table>
	
	<div id="admin_list_div_page">
		第<s:property value="#session.paging.presentPage"/>页/<s:property value="#session.paging.page"/>页&nbsp;&nbsp;&nbsp;&nbsp;
		<s:if test="#session.paging.presentPage != 1">
			<a href="${pageContext.request.contextPath }/CategorySecond_findAllBySearchName.action?paging.presentPage=1&searchCategorySecond=${session.searchCategorySecond}">首页</a>
			<a href="${pageContext.request.contextPath }/CategorySecond_findAllBySearchName.action?paging.presentPage=<s:property value="#session.paging.presentPage-1"/>&searchCategorySecond=${session.searchCategorySecond}">上一页</a>
		</s:if>
		<s:if test="#session.paging.presentPage != pageBean.totalPage">
			<a href="${pageContext.request.contextPath }/CategorySecond_findAllBySearchName.action?paging.presentPage=<s:property value="#session.paging.presentPage+1"/>&searchCategorySecond=${session.searchCategorySecond}">下一页</a>
			<a href="${pageContext.request.contextPath }/CategorySecond_findAllBySearchName.action?page=<s:property value="pageBean.totalPage"/>">尾页</a>
		</s:if>
	</div>
	
</body>
</html>