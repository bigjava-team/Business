<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>
</head>
<body class="admin_body" style="margin: 1% 1%;">
	
	<div id="admin_add_div_top">
		编辑店铺信息
	</div>
	
	<form class="admin_form1" action="Merchant_updateMerchantNameOrMerchantImage" enctype="multipart/form-data" method="post">
		<div class="admin_add_div_middle">
			<input type="hidden" name="m_id" value="${merchant.m_id }" />
			<div class="admin_merchant_d1">
				店铺名称：
			</div>
			<div class="admin_merchant_d2">
				<input type="text" name="m_name" value="${merchant.m_name }" />
			</div>
		</div>
		
		<div class="admin_add_div_middle">
			<div class="admin_merchant_d1">
				店铺头像：
			</div>
			<div class="admin_merchant_d2">
				<input type="file" name="fileImageAction.fileImage">
			</div>
		</div>
		
		<%-- <div class="admin_add_div_middle admin_merchant_pd_a_e_d2">
			<div class="admin_merchant_d3">
				店铺描述：
			</div>
			<div class="admin_merchant_d2">
				<textarea rows="5" cols="30" name="pdesc" value=${merchant.notice }></textarea>
			</div>
		</div> --%>
		
		<div id="admin_add_div_bottom">
			<input type="submit" value="确定" style="margin-right: 80px;" />
			<input type="reset" value="重置" style="margin-right: 80px;" />
			<input type="button" onclick="history.go(-1)" value="返回" />
		</div>
	</form>
	
</body>
</html>