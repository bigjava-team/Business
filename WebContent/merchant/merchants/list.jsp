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
		var m_id = '${m_id }';
		window.location.href = "Merchant_skipUpdateMerchantList?method=post&m_id="+m_id;
	}
</script>
</head>
<body id="admin_list_body">
	<div id="admin_list_div_top">
		我的店铺
	</div>
	
	<div class="admin_m_m_l_d1">
		<button type="button" id="add" name="add" value="添加" class="button_add button-group_button_add" onclick="addCategory()"> 编辑 </button>
	</div>
	
	<div id="admin_add_div_top">
		店铺信息
	</div>
	<form class="admin_form1" action="" method="post">
		
		<table class="admin_form1_table" id="admin_list_table" cellspacing="0" cellpadding="0" rules="all" width="100%" border="1" bordercolor="#EEEEEE">
			<tr id="admin_list_tr2">
				<td class="admin_form1_table_tr_td1" align="center">头像</td>
				<td class="admin_form1_table_tr_td2" align="center">
					<img alt="店铺头像" src="${fileImageAction.urlImage }${merchant.m_image}" width="100px;" height="100px;">
				</td>
				<td class="admin_form1_table_tr_td6" colspan="2" align="center"></td>
			</tr>
			<tr id="admin_list_tr2">
				<td class="admin_form1_table_tr_td1" align="center">编号</td>
				<td class="admin_form1_table_tr_td3" align="center">${merchant.m_id }</td>
				<td class="admin_form1_table_tr_td7" align="center">名称</td>
				<td class="admin_form1_table_tr_td3" align="center">${merchant.m_name }</td>
			</tr>
			<tr id="admin_list_tr2">
				<td class="admin_form1_table_tr_td1" align="center">创建时间</td>
				<td class="admin_form1_table_tr_td3" align="center">${merchant.m_time }</td>
				<td class="admin_form1_table_tr_td7" align="center">店铺状态</td>
				<td class="admin_form1_table_tr_td3" align="center">
				
					<s:if test="merchant._is_freeze == 1">
						店铺已冻结
					</s:if>
					<s:else>
						正常运营中
					</s:else>
			
				</td>
			</tr>
			
			<tr id="admin_list_tr3">
				<td class="admin_form1_table_tr_td4" align="center">店铺公告</td>
				<td class="admin_form1_table_tr_td5" colspan="3" align="center">${merchant.notice }</td>
			</tr>
		</table>
		
	</form>
</body>
</html>