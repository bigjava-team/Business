<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>
<style type="text/css">

	#select{
		width: 80px;
		height: 25px;
		margin: 0 auto;
		margin-top: 0px;
		margin-left: 0px;
		margin-bottom: 0px;
		padding: 0px;
		float: left;
	}

	.input-group {
		width: 346px;
		height: 25px;
		margin: 0 auto;
		margin-top: 0px;
		margin-bottom: 8px;
		border: 2px solid #acd6ff;
		padding: 0px;
		background: red;
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

	input,
	select,
	a:focus {
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

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
		
		$("#button").click(function() {
			
			var userRoot = $("#select option:selected").val();// 获取下拉列表的值
			
			var searchText = $("#input").val();// 获取搜索文本框的值
			
			window.location.href="User_showAll?user.root="+userRoot+"&searchText="+searchText+"&paging.presentPage=0";
		});
		
	});
	
</script>
</head>
<body id="admin_list_body">
	<div id="admin_list_div_top">
		用户列表
	</div>
	<!-- 根据姓名查询，若不输入，则查询全部 -->
	<div class="input-group">
		<select id="select">
			<option class="option" value="0">全部</option>
			<option class="option" value="3">管理员</option>
			<option class="option" value="2">店长</option>
			<option class="option" value="1">普通用户</option>
		</select>
		<!-- 搜索框 -->
		<input type="text" name="queryText" id="input" placeholder="查询全部" onfocus="this.placeholder=' ' " onblur=" this.placeholder='请输入代理人姓名进行查询' " value="${searchText}">
		<!-- placeholder的点击消失及为空时点击其他继续显示提示  -->
		<span class=" ">
			<button id="button" class="bs">搜索</button>
		</span>
	</div>
	
	<form action="" method="post">
		<table id="admin_list_table" cellspacing="0" cellpadding="0" rules="all" width="100%" border="1" bordercolor="gray">
			<tr id="admin_list_tr1">
				<td width="8%" align="center">序号</td>
				<td width="8%" align="center">编号</td>
				<td width="10%" align="center">头像</td>
				<td width="10%" align="center">昵称</td>
				<td width="12%" align="center">密码</td>
				<td width="10%" align="center">姓名</td>
				<td width="14%" align="center">邮箱</td>
				<td width="10%" align="center">号码</td>
				<td width="8%" align="center">身份</td>
				<td width="10%" align="center">状态</td>
			</tr>
			<!-- 迭代器遍历用户 -->
			<s:iterator value="#session.showUser" status="status" var="user">
				<tr id="admin_list_tr2" onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
					<td align="center"><s:property value="#status.count"/></td>
					<td align="center"><s:property value="#user.u_id" /></td>
					<td align="center"><s:property value="#user.image" /></td>
					<td align="center"><s:property value="#user.username" /></td>
					<td align="center"><s:property value="#user.password" /></td>
					<td align="center"><s:property value="#user.u_name" /></td>
					<td align="center"><s:property value="#user.email" /></td>
					<td align="center"><s:property value="#user.phone" /></td>
					<td align="center"><s:property value="#user.root" /></td>
					<td align="center">
						<input id="td1" type="button" value="冻结" />
					</td>
				</tr>
			</s:iterator>
			
		</table>
		</form>
		<div id="admin_list_div_page">
			第<s:property value="#session.paging.presentPage"/>页/<s:property value="#session.paging.page"/>页&nbsp;&nbsp;&nbsp;&nbsp;
			<s:if test="#session.paging.presentPage != 1">
				<a href="${pageContext.request.contextPath }/User_showAll.action?paging.presentPage=1&user.root=${session.userRoot}&searchText=${session.searchText}">首页</a>
				<a href="${pageContext.request.contextPath }/User_showAll.action?paging.presentPage=<s:property value="#session.paging.presentPage-1"/>&user.root=${session.userRoot}&searchText=${session.searchText}">上一页</a>
			</s:if>
			<s:if test="#session.paging.presentPage != #session.paging.page">
				<a href="${pageContext.request.contextPath }/User_showAll.action?paging.presentPage=<s:property value="#session.paging.presentPage+1"/>&user.root=${session.userRoot}&searchText=${session.searchText}">下一页</a>
				<a href="${pageContext.request.contextPath }/User_showAll.action?paging.presentPage=<s:property value="#session.paging.page"/>&user.root=${session.userRoot}&searchText=${session.searchText}">尾页</a>
			</s:if>
		</div>
</body>
</html>