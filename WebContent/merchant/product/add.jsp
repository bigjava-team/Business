<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>
</head>
<body class="admin_body" style="margin: 1% 1%;">
	
	<div id="admin_add_div_top">
		上架商品 
	</div>
	
	<form class="admin_form1" action="MerchantProduct_save.action?merchant.m_id=1" method="post" enctype="multipart/form-data">
		<div class="admin_add_div_middle">
			<div class="admin_merchant_d1">
				商品名称：
			</div>
			<div class="admin_merchant_d2">
				<input type="text" name="product.p_name" />
			</div>
		</div>
		
		<div class="admin_add_div_middle">
			<div class="admin_merchant_d1">
				所属的二级分类：
			</div>
			<div class="admin_merchant_d2">
				<select name="categorySecond.cs_id">
					<s:iterator var="cs" value="csList">
						<option value="<s:property value="#cs.cs_id"/>"><s:property value="#cs.cs_name"/></option>
					</s:iterator>
				</select>
			</div>
		</div>
		
		<div class="admin_add_div_middle">
			<div class="admin_merchant_d1">
				商品市场价格：
			</div>
			<div class="admin_merchant_d2">
				<input type="text" name=product.market>
			</div>
		</div>
		
		<div class="admin_add_div_middle">
			<div class="admin_merchant_d1">
				商品商场价格：
			</div>
			<div class="admin_merchant_d2">
				<input type="text" name="product.p_price" value="" class="bg"/>
			</div>
		</div>
		
		<div class="admin_add_div_middle admin_merchant_pd_a_e_d1">
			<div class="admin_merchant_d3">
				商品图片：
			</div>
			<div class="admin_merchant_d2">
				<input type="file" name="fileImageAction.fileImage">
			</div>
		</div>
		
		<div class="admin_add_div_middle admin_merchant_pd_a_e_d2">
			<div class="admin_merchant_d3">
				商品描述：
			</div>
			<div class="admin_merchant_d2">
				<textarea rows="5" cols="30" name="product.p_desc"></textarea>
			</div>
		</div>
		
		<div id="admin_add_div_bottom">
			<input type="submit" value="确定" style="margin-right: 80px;" />
			<input type="reset" value="重置" style="margin-right: 80px;" />
			<input type="button" onclick="history.go(-1)" value="返回" />
		</div>
	</form>
	
</body>
</html>