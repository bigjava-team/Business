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
			d.add('010101','0101','店铺信息','${pageContext.request.contextPath}/Merchant_getMerchantById?method=post&m_id=${sessionScope.merchant.m_id}','','mainFrame');
			
			d.add('0102','01','商品管理');
			d.add('010201','0102','商品信息','${pageContext.request.contextPath}/MerchantProduct_findAll.action?method=post&paging.presentPage=0&merchant.m_id=${sessionScope.merchant.m_id }','','mainFrame');
			d.add('010202','0102','添加商品','${pageContext.request.contextPath}/MerchantProduct_addPage.action','','mainFrame');

			d.add('0103','01','订单管理');
			d.add('010301','0103','订单信息','${pageContext.request.contextPath}/Merchant_queryMerchantOrders?method=post&m_id=${sessionScope.merchant.m_id}&paging.presentPage=1','','mainFrame');
			
			d.add('0104','01','公告管理');
			d.add('010401','0104','公告信息','${pageContext.request.contextPath}/Merchant_getMerchantNotice?method=post&m_id=${sessionScope.merchant.m_id}','','mainFrame');
			d.add('010402','0104','发布公告','${pageContext.request.contextPath}/merchant/notice/add.jsp','','mainFrame');
			
			document.write(d);
		</script>
	</div>
</body>
</html>