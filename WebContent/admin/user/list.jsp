<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	 function searchText() {
		 var userRoot = $("#select option:selected").val();// 获取下拉列表的值
		 var username = '${loginUser.username }';
		 var searchText = document.getElementById("input").value;
		 window.location.href="User_showAll.action?paging.presentPage=1&loginUser.root="+userRoot+"&loginUser.username="+username+"&searchText="+searchText;
	 }
</script>
</head>
<body id="admin_list_body">
	<div id="admin_list_div_top">
		用户列表
	</div>
	
	<!-- 根据姓名查询，若不输入，则查询全部 -->
	<div class="input-group3">
		<select id="select" class="input-group_select3">
			<option class="option" value="0">全部</option>
			<option class="option" value="2">店长</option>
			<option class="option" value="1">普通用户</option>
		</select>
		<!-- 搜索框 -->
		<input type="text" name="queryText" id="input" class="input-group_input3" placeholder="查询全部" onfocus="this.placeholder=' ' " onblur=" this.placeholder='请输入代理人姓名进行查询' " value="${searchText}">
		<!-- placeholder的点击消失及为空时点击其他继续显示提示  -->
		<button id="search" class="input-group_button3" onclick="searchText()">搜索</button>
	</div>
	
	<table id="admin_list_table" cellspacing="0" cellpadding="0" rules="all" width="100%" border="1" bordercolor="gray">
		<tr id="admin_list_tr1">
			<td width="8%" align="center">编号</td>
			<td width="14%" align="center">头像</td>
			<td width="14%" align="center">昵称</td>
			<td width="12%" align="center">密码</td>
			<td width="10%" align="center">姓名</td>
			<td width="14%" align="center">邮箱</td>
			<td width="10%" align="center">号码</td>
			<td width="8%" align="center">身份</td>
			<td width="10%" align="center">状态</td>
		</tr>
		<!-- 迭代器遍历用户 -->
		<s:iterator value="users" status="status" var="user">
			<tr id="admin_list_tr2" onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
				<td align="center"><s:property value="#user.u_id" /></td>
				<td align="center"><img src="${fileImageAction.urlImage }${user.image }" width="100px" height="100px" /></td>
				<td align="center"><s:property value="#user.username" /></td>
				<td align="center"><s:property value="#user.password" /></td>
				<td align="center"><s:property value="#user.u_name" /></td>
				<td align="center"><s:property value="#user.email" /></td>
				<td align="center"><s:property value="#user.phone" /></td>
				<td align="center">
					<s:if test="#user.root == 1">
						普通用户
					</s:if>
					<s:elseif test="#user.root == 2">
						店长
					</s:elseif>
					<s:else>
						管理员
					</s:else>
				</td>
				<td align="center">
					<s:if test="#user.root == 3">	
						不支持操作
	     			</s:if>
	     			<s:else>
	     				<s:if test="#user.u_is_freeze == 1">
							<a href="User_updateUserStates.action?user.u_id=<s:property value="#user.u_id" />&loginUser.root=${loginUser.root }&loginUser.username=${loginUser.username }">冻结</a>
						</s:if> 
						<s:elseif test="#user.u_is_freeze == 2"> 
							<a href="User_updateUserStates.action?user.u_id=<s:property value="#user.u_id" />&loginUser.root=${loginUser.root }&loginUser.username=${loginUser.username }">解冻</a>
	     				</s:elseif> 
	     			</s:else>
				</td>
			</tr>
		</s:iterator>
		
	</table>
	<div id="admin_list_div_page">
		第${paging.presentPage }页/${paging.page }页&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath }/User_showAll.action?paging.presentPage=1&loginUser.root=${loginUser.root}&searchText=${searchText }">首页</a>
			<a href="${pageContext.request.contextPath }/User_showAll.action?paging.presentPage=${paging.presentPage-1 }&loginUser.root=${loginUser.root}&searchText=${searchText}">上一页</a>
			<a href="${pageContext.request.contextPath }/User_showAll.action?paging.presentPage=${paging.presentPage+1 }&loginUser.root=${loginUser.root}&searchText=${searchText}">下一页</a>
			<a href="${pageContext.request.contextPath }/User_showAll.action?paging.presentPage=${paging.page }&loginUser.root=${loginUser.root}&searchText=${searchText}">尾页</a>
		&nbsp;共${paging.totalNumber }条
	</div>
</body>
</html>