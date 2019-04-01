<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin-jQuery-js.js"></script>
<script type="text/javascript">
	function addCategory(){
		window.location.href = "${pageContext.request.contextPath}/merchant/merchants/edit.jsp";
	}
</script>
</head>
<body class="admin_body" style="margin: 1% 1%;">
	
	<div id="admin_add_div_top">
		商品信息
	</div>
	
	<form class="admin_form1" action="" method="post">
		
		<table class="admin_form1_table" id="admin_list_table" cellspacing="0" cellpadding="0" rules="all" width="100%" border="1" bordercolor="#EEEEEE">
			<tr id="admin_list_tr2">
				<td class="admin_form1_table_tr_td1" align="center">商品图片</td>
				<td class="admin_form1_table_tr_td8" colspan="3" align="center">
					<img alt="商品图片"  src="${pageContext.request.contextPath }/images/merchant/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100px;" height="100px;">
					<img alt="商品图片"  src="${pageContext.request.contextPath }/images/merchant/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100px;" height="100px;">
					<img alt="商品图片"  src="${pageContext.request.contextPath }/images/merchant/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100px;" height="100px;">
					<img alt="商品图片"  src="${pageContext.request.contextPath }/images/merchant/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100px;" height="100px;">
					<img alt="商品图片"  src="${pageContext.request.contextPath }/images/merchant/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100px;" height="100px;">
					<img alt="商品图片"  src="${pageContext.request.contextPath }/images/merchant/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100px;" height="100px;">
					<img alt="商品图片"  src="${pageContext.request.contextPath }/images/merchant/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100px;" height="100px;">
					<img alt="商品图片"  src="${pageContext.request.contextPath }/images/merchant/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100px;" height="100px;">
					<img alt="商品图片"  src="${pageContext.request.contextPath }/images/merchant/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100px;" height="100px;">
					<img alt="商品图片"  src="${pageContext.request.contextPath }/images/merchant/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100px;" height="100px;">
				</td>
			</tr>
			
			<tr id="admin_list_tr2">
				<td class="admin_form1_table_tr_td1" align="center">编号</td>
				<td class="admin_form1_table_tr_td3" align="center">110</td>
				<td class="admin_form1_table_tr_td7" align="center">名称</td>
				<td class="admin_form1_table_tr_td3" align="center">时尚男鞋</td>
			</tr>
			
			<tr id="admin_list_tr2">
				<td class="admin_form1_table_tr_td1" align="center">市场价格</td>
				<td class="admin_form1_table_tr_td3" align="center">¥ 299.99</td>
				<td class="admin_form1_table_tr_td7" align="center">光光价格</td>
				<td class="admin_form1_table_tr_td3" align="center">¥ 199.99</td>
			</tr>
			
			<tr id="admin_list_tr3">
				<td class="admin_form1_table_tr_td4" align="center">描述</td>
				<td class="admin_form1_table_tr_td5" colspan="3" align="center">本店所有商品打折扣</td>
			</tr>
			
			<tr id="admin_list_tr2">
				<td class="admin_form1_table_tr_td1" align="center">商品详情图片</td>
				<td class="admin_form1_table_tr_td8" colspan="3" align="center">
					<img alt="商品图片"  src="${pageContext.request.contextPath }/images/merchant/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100px;" height="100px;">
					<img alt="商品图片"  src="${pageContext.request.contextPath }/images/merchant/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100px;" height="100px;">
					<img alt="商品图片"  src="${pageContext.request.contextPath }/images/merchant/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100px;" height="100px;">
					<img alt="商品图片"  src="${pageContext.request.contextPath }/images/merchant/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100px;" height="100px;">
					<img alt="商品图片"  src="${pageContext.request.contextPath }/images/merchant/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100px;" height="100px;">
					<img alt="商品图片"  src="${pageContext.request.contextPath }/images/merchant/O1CN01zkfIXV27fRJRSdEC8_!!2574467824.jpg" width="100px;" height="100px;">
				</td>
			</tr>
		</table>
		
	</form>
</body>
</html>