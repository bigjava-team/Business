<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
	function save() {
		var merchantNotice = '${sessionScope.merchant.notice}';
		if (merchantNotice != null || merchantNotice != "") {
			alert("已有公告，无法添加");
			return false;
		}
		var notice = document.getElementById("noticeId").text;
		if (notice == null || notice == "") {
			alert("添加的公告不能为空");
			return false;
		}
		return true;
	}
</script>
</head>
<body class="admin_body" style="margin: 1% 1%;">
	
	<div id="admin_add_div_top">
		发布公告
	</div>
	
	<form class="admin_form1" onsubmit="return save()" action="Merchant_addNotice.action" method="post">
		
		<div class="admin_add_div_middle admin_merchant_pd_a_e_d2" style="height: auto;">
			<div class="admin_merchant_d3">
				公告详情：
			</div>
			<div class="admin_merchant_d2">
				<input type="hidden" name="m_id" value="${sessionScope.merchant.m_id }" />
				<textarea rows="5" cols="30" name="notice" id="noticeId"></textarea>
			</div>
		</div>
		
		<div id="admin_add_div_bottom">
			<input type="submit" value="发布" style="margin-right: 80px;" />
			<input type="reset" value="重置" style="margin-right: 80px;" />
			<input type="button" onclick="history.go(-1)" value="返回" />
		</div>
	</form>
	
</body>
</html>