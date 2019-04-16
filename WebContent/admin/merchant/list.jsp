<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript">
	function searchText() {
		var searchText = document.getElementById("input").value;
		var username = '${loginUser.username }';
		window.location.href="Merchant_likeQueryMname?method=post&loginUser.username="+username+"&paging.presentPage=1&searchText="+searchText;
	}
</script>
</head>
<body id="admin_list_body">
	<div id="admin_list_div_top">
		店铺列表
	</div>
	
	<%-- <div class="admin_list_div_moddle2">
		<!-- 根据查询值，若不输入，则查询全部 -->
		<div class="input-group2">
			<!-- 搜索框 -->
			<input type="text" id="input" class="input-group_input2" placeholder="查询全部" onfocus="this.placeholder=' ' " onblur=" this.placeholder='请输入店铺名进行查询' " value="${searchCategorySecond}">
			<!-- placeholder的点击消失及为空时点击其他继续显示提示  -->
			<button id="button" class="input-group_button2" onclick="searchText()">搜索</button>
		</div>
	</div>
	 --%>
	 
	<div class="input-group4">
		<select id="select" class="input-group_select4" style="width: 90px;">
			<option class="option" value="0">全部</option>
			<option class="option" value="4">名称</option>
			<option class="option" value="3">冻结状态</option>
			<option class="option" value="2">未冻结状态</option>
			<option class="option" value="1">申请状态</option>
		</select>
		<!-- 搜索框 -->
		<input type="text" name="queryText" id="input" class="input-group_input4" placeholder="查询全部" onfocus="this.placeholder=' ' " onblur=" this.placeholder='请输入代理人姓名进行查询' " value="${searchText}">
		
		<button id="search" class="input-group_button4">搜索</button>
	</div>
		
	<form action="" method="post">
	
		<table id="admin_list_table" cellspacing="0" cellpadding="0" rules="all" width="100%" border="1" bordercolor="gray">
			<tr id="admin_list_tr1">
				<td width="12%" align="center">编号</td>
				<td width="18%" align="center">头像</td>
				<td width="18%" align="center">名称</td>
				<td width="18%" align="center">创建时间</td>
				<td width="11%" align="center">进入店铺</td>
				<td width="11%" align="center">状态</td>
			</tr>
			
			<s:iterator value="listAllMerchant" var="listAllMerchants">
				<tr id="admin_list_tr2" onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
					<td align="center">${listAllMerchants.m_id }</td>
					<td align="center">
						<%-- <img width="40" height="45" src="${fileImageAction.urlImage }${listAllMerchants.m_image }"/> --%>
					</td>
					<td align="center">${listAllMerchants.m_name }</td>
					<td align="center">${listAllMerchants.m_time }</td>
					<td align="center">
						<a href="Merchant_mIdQueryAllProduct?method=post&m_id=${listAllMerchants.m_id }&paging.presentPage=1">
							进入此店铺
						</a>
					</td>
					<td align="center">
						<s:if test="#listAllMerchants.m_is_freeze == 1">
							同意申请
						</s:if>
						<s:elseif test="#listAllMerchants.m_is_freeze == 2">
							冻结
						</s:elseif>
						<s:elseif test="#listAllMerchants.m_is_freeze == 3">
							解冻
						</s:elseif>
					</td>
				</tr>
			</s:iterator>
		</table>
		
		<div id="admin_list_div_page">
			第${paging.presentPage }页/${paging.page }页&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="Merchant_likeQueryMname?method=post&loginUser.username=${loginUser.username }&paging.presentPage=1&searchText=${searchText }">首页</a>
			<a href="Merchant_likeQueryMname?method=post&loginUser.username=${loginUser.username }&paging.presentPage=${paging.presentPage-1 }&searchText=${searchText }">上一页</a>
			<a href="Merchant_likeQueryMname?method=post&loginUser.username=${loginUser.username }&paging.presentPage=${paging.presentPage+1 }&searchText=${searchText }">下一页</a>
			<a href="Merchant_likeQueryMname?method=post&loginUser.username=${loginUser.username }&paging.presentPage=${paging.page }&searchText=${searchText }">尾页</a>
		</div>
	</form>
</body>
</html>