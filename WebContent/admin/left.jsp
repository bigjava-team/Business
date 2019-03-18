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
			d.add('01',-1,'光光商城管理系统');
			
			d.add('0101','01','用户管理');
			d.add('010101','0101','用户管理','${pageContext.request.contextPath}/admin/user/list.jsp','','mainFrame');
			
			d.add('0102','01','店铺管理');
			d.add('010201','0102','店铺管理','${pageContext.request.contextPath}/admin/merchant/list.jsp','','mainFrame');
			
			d.add('0103','01','一级分类管理');
			d.add('010301','0103','一级分类管理','${pageContext.request.contextPath}/Category_showCategory.action','','mainFrame');
			
			d.add('0104','01','二级分类管理');
			d.add('010401','0104','二级分类管理','${pageContext.request.contextPath}/admin/categorysecond/list.jsp','','mainFrame');
			
			d.add('0105','01','商品管理');
			d.add('010501','0105','商品管理','${pageContext.request.contextPath}/admin/product/list.jsp','','mainFrame');
			
			d.add('0106','01','订单管理');
			d.add('010601','0106','订单管理','${pageContext.request.contextPath}/admin/order/list.jsp','','mainFrame');
			document.write(d);
		</script>
	</div>
</body>
</html>