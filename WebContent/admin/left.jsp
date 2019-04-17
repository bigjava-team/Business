<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
			d.add('01',-1,'光光商城管理系统');
			
			d.add('0101','01','用户管理');
			d.add('010101','0101','用户详情','${pageContext.request.contextPath}/User_showAll.action?loginUser.root=${loginUser.root }&loginUser.username=${loginUser.username }&paging.presentPage=0','','mainFrame');
			
			d.add('0102','01','店铺管理');
			d.add('010201','0102','店铺详情','Merchant_likeQueryMname?method=post&loginUser.username=${loginUser.username }&paging.presentPage=0&searchText=""&m_is_freeze=0','','mainFrame');
			
			d.add('0103','01','一级分类管理');
			d.add('010301','0103','一级分类详情','${pageContext.request.contextPath}/Category_showCategory.action','','mainFrame');
			d.add('010302','0103','添加一级分类','${pageContext.request.contextPath}/admin/category/add.jsp','','mainFrame');
			
			d.add('0104','01','二级分类管理');
			d.add('010401','0104','二级分类详情','${pageContext.request.contextPath}/CategorySecond_findAllBySearchName.action?paging.presentPage=1','','mainFrame');
			d.add('010402','0104','添加二级分类','${pageContext.request.contextPath}/CategorySecond_addPage.action','','mainFrame');
			
			d.add('0105','01','商品管理');
			d.add('010501','0105','商品详情','${pageContext.request.contextPath}/adminProduct_adminFindAll.action?paging.presentPage=0&product.p_freeze=0&merchant.m_id=0','','mainFrame');
			d.add('010502','0105','商品过滤','${pageContext.request.contextPath}/adminProduct_showToProduct.action?paging.presentPage=0&user.root=0','','mainFrame');
			
			d.add('0106','01','订单管理');
			d.add('010601','0106','订单详情','${pageContext.request.contextPath}/adminOrders_showAllOrders.action?paging.presentPage=0&loginUser.username=${loginUser.username }','','mainFrame');
			
			d.add('0107','01','公告管理');
			d.add('010701','0107','公告详情','${pageContext.request.contextPath}/indexNotice_queryIndexNotice?method=post&loginUser.username=${loginUser.username}','','mainFrame');
			d.add('010702','0107','公告发布','${pageContext.request.contextPath}/admin/notice/add.jsp','','mainFrame');
			
			document.write(d);
		</script>
	</div>
</body>
</html>