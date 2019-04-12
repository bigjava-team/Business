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
	function addCategorySecond(){
		window.location.href = "${pageContext.request.contextPath}/CategorySecond_addPage.action";
	}
	
	$(document).ready(function() {
		$("#button").click(function() {
			var searchText = $("#input").val();// 获取搜索文本框的值
			alert(searchText);
			window.location.href="CategorySecond_findAllBySearchName?searchCategorySecond="+searchText+"&paging.presentPage=0";
		});
	});
	
	/* $(function(){
		$(".button-group_button_add").hover(function(){
			$(".button-group_button_add").css("color", "#D26900").css("font-size","14px").css("font-weight","bold");
		}, function(){
			$(".button-group_button_add").css("color", "#000").css("font-size","12px").css("font-weight","normal");
		});
	}); */
	
</script>

</head>
<body id="admin_list_body">
	<div id="admin_list_div_top">
		二级分类列表
	</div>
	
	<div class="admin_list_body_moddle1">
		<!-- 根据查询值，若不输入，则查询全部 -->
		<div class="input-group1">
			<!-- 搜索框 -->
			<input type="text" id="input" class="input-group_input1" placeholder="查询全部" onfocus="this.placeholder=' ' " onblur=" this.placeholder='请输入代理人姓名进行查询' " value="${searchCategorySecond}">
			<!-- placeholder的点击消失及为空时点击其他继续显示提示  -->
			<button id="button" class="input-group_button1">搜索</button>
		</div>
	
		<div class="button-group1">
			<button type="button" id="add" name="add" value="添加" class="button-group_button_add1 button-group_button_add" onclick="addCategorySecond();"> 添加 </button>
		</div>
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
				<a href="${pageContext.request.contextPath}/CategorySecond_findCategorySecondById.action?cs_id=${categorySecond.cs_id}">
					<img src="${pageContext.request.contextPath}/images/i_edit.gif" border="0" style="CURSOR: hand">
				</a>
			</td>
			<td width="14%" align="center">
				<a href="${pageContext.request.contextPath}/CategorySecond_deleteCategorySecond.action?cs_id=${categorySecond.cs_id}">
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
		<s:if test="#session.paging.presentPage != #session.paging.page">
			<a href="${pageContext.request.contextPath }/CategorySecond_findAllBySearchName.action?paging.presentPage=<s:property value="#session.paging.presentPage+1"/>&searchCategorySecond=${session.searchCategorySecond}">下一页</a>
			<a href="${pageContext.request.contextPath }/CategorySecond_findAllBySearchName.action?paging.presentPage=<s:property value="#session.paging.page"/>&searchText=${session.searchText}">尾页</a>
		</s:if>
		&nbsp;共<s:property value="#session.paging.totalNumber"/>条
	</div>
	
</body>
</html>