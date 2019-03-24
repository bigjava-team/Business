<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>店铺后台管理</title>
</head>

	<frameset rows="103,*,43" frameborder=0 border="0" framespacing="0">
		<frame src="${pageContext.request.contextPath}/merchant/top.jsp" name="topFrame" scrolling="no" noresize="noresize"/>
		<frameset cols="160,*" frameborder="0" border="0" framespacing="0">
			<frame src="${pageContext.request.contextPath}/merchant/left.jsp" name="leftFrame" noresize="noresize" scrolling="yes" />
			<frame src="${pageContext.request.contextPath}/merchant/right.jsp" name="mainFrame" />
		</frameset>
		<frame src="${pageContext.request.contextPath}/merchant/bottom.jsp" name="bottomFrame" scrolling="no" noresize="noresize" />
	</frameset>

</html>