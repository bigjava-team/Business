<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	
	<div id="admin_add_div_top">
		编辑二级分类
	</div>
	
	<form action="" method="post">
		<div class="admin_add_div_middle">
			二级分类名称:&emsp;&emsp;&emsp;<input type="text" name="cname">
		</div>
		
		<div class="admin_add_div_middle">
			所属的一级分类:&emsp;&emsp;&emsp;
			<select>
				<option value="男装">男装</option>
				<option value="女装">女装</option>
				<option value="手机">手机</option>
			</select>
		</div>
		
		<div id="admin_add_div_bottom">
			<input type="button" value="确定" style="margin-right: 80px;" />
			<input type="reset" value="重置" style="margin-right: 80px;" />
			<input type="button" onclick="history.go(-1)" value="返回" />
		</div>
	</form>
	
</body>
</html>