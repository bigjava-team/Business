<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
/* $(function(){
	$(".admin_ae_bottom_1").hover(function(){
		$(".admin_ae_bottom_1").addClass("admin_ae_bottom_2_jQ");
	}, function(){
		$(".admin_ae_bottom_1").removeClass("admin_ae_bottom_2_jQ");
	});
}); */
</script>

<style type="text/css">
	.admin_ae_bottom_2_jQ{
		font-size: 14px;
	}
</style>
</head>
<body class="admin_body">
	
	<div id="admin_add_div_top">
		添加一级分类
	</div>
	
	<form class="admin_form1" action="Category_addCategory.action" method="post">
		<div class="admin_add_div_middle">
			一级分类名称:&emsp;&emsp;&emsp;<input type="text" name="c_name">
		</div>
		
		<div id="admin_add_div_bottom">
			<input type="submit" value="确定" style="margin-right: 80px;  border-radius: 0.1%;" />
			<input type="reset" value="重置" style="margin-right: 80px; border-radius: 1%;" />
			<input type="submit" onclick="history.go(-1)" value="返回" />
		</div>
	</form>
	
</body>
</html>