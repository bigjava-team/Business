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
<body class="admin_body">
	
	<div id="admin_add_div_top">
		编辑二级分类
	</div>
	
	<form class="admin_form1" action="CategorySecond_editCategorySecond.action?cs_id=${model.cs_id }" method="post">
		<div class="admin_add_div_middle">
			二级分类名称:&emsp;&emsp;&emsp;<input type="text" name="cs_name" value='<s:property value="model.cs_name" />'/>
		</div>
		
		<div class="admin_add_div_middle">
			所属的一级分类:&emsp;&emsp;&emsp;
			<select name="category.c_id">
				<s:iterator var="c" value="c_List">
					<option value="<s:property value="#c.c_id"/>" <s:if test="model.category.c_id==#c.c_id">selected</s:if> ><s:property value="#c.c_name"/></option>
				</s:iterator>
			</select>
		</div>
		
		<div id="admin_add_div_bottom">
			<input type="submit" value="确定" style="margin-right: 80px;" />
			<input type="reset" value="重置" style="margin-right: 80px;" />
			<input type="button" onclick="history.go(-1)" value="返回" />
		</div>
	</form>
	
</body>
</html>