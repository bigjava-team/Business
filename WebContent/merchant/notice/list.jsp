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
	function addNotice(){
		window.location.href = "${pageContext.request.contextPath}/merchant/notice/add.jsp";
	}

</script>

</head>
<body id="admin_list_body">

	<div id="admin_list_div_top">
		公告列表
	</div>
	<div class="admin_merchant_pd_l_d1">
		<div class="input-group5d1">
			<button type="button" id="add" name="add" value="添加" class="button_add button-group_button_add" onclick="addNotice()">
				 发布
			</button>
		</div>
	</div>
	
	<table id="admin_list_table" cellspacing="0" cellpadding="0" rules="all" width="100%" border="1" bordercolor="gray">
		<tr id="admin_list_tr1">
			<td width="10%" align="center">编号</td>
			<td width="70%" align="center">公告详情</td>
			<td width="10%" align="center">编辑</td>
			<td width="10%" align="center">删除</td>
		</tr>
		<tr id="admin_list_tr2" onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
			<td align="center">1</td>
			<s:debug/>
			<td align="center" style="text-align: left; padding-left: 1%; padding-right: 1%;">${merchantNotice.notice}</td>
			
			<td align="center">
				<a href="${pageContext.request.contextPath}/merchant/notice/edit.jsp">
					<img class="admin_merchant_pd_immg1" src="${pageContext.request.contextPath}/images/i_edit.gif" border="0">
				</a>
			</td>
			<td align="center">
				<a>
					<img class="admin_merchant_pd_immg1" src="${pageContext.request.contextPath}/images/i_del.gif" width="16" height="16" border="0">
				</a>
			</td>
		</tr>
	</table>
	
	<div id="admin_list_div_page">共1条
	</div>
	
</body>
</html>