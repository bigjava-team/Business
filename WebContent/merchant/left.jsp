<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/left.css" rel="stylesheet" type="text/css"/>
<link rel="StyleSheet" href="${pageContext.request.contextPath}/css/dtree.css" type="text/css" />
</head>
<body>
	<div class="dtree" style="margin-top:10px;">
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/dtree.js"></script>
		<script type="text/javascript">
			d = new dTree('d');
			d.add('01',-1,'光光商城店铺管理');
			
			d.add('0101','01','店铺管理');
			d.add('010101','0101','店铺信息','${pageContext.request.contextPath}/merchant/merchants/list.jsp','','mainFrame');
			
			d.add('0102','01','商品管理');
			d.add('010201','0102','商品信息','${pageContext.request.contextPath}/MerchantProduct_findAll.action?paging.presentPage=0','','mainFrame');
			d.add('010202','0102','添加商品','${pageContext.request.contextPath}/MerchantProduct_addPage.action','','mainFrame');
			
			document.write(d);
		</script>
	</div>
</body>
</html>