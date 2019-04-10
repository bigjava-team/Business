<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin-jQuery-js.js"></script>
<script type="text/javascript">
	function addNotice(){
		window.location.href = "${pageContext.request.contextPath}/admin/notice/add.jsp";
	}

	$(document).ready(function() {
		$("#button").click(function() {
			var searchText = $("#input").val();// 获取搜索文本框的值
			alert(searchText);
			window.location.href="MerchantProduct_findAll?method=post&searchText="+searchText+"&paging.presentPage=0";
		});
	});
</script>

</head>
<body id="admin_list_body">

	<div id="admin_list_div_top">
		公告列表
	</div>
	<!-- 根据查询值，若不输入，则查询全部 -->
	
	<div class="admin_merchant_pd_l_d1">
		<div class="input-group5d1">
			<button type="button" id="add" name="add" value="添加" class="button_add button-group_button_add" onclick="addNotice()">
				 发布
			</button>
		</div>
	</div>
	
	<table id="admin_list_table" cellspacing="0" cellpadding="0" rules="all" width="100%" border="1" bordercolor="gray">
		<tr id="admin_list_tr1">
			<td width="8%" align="center">编号</td>
			<td width="18%" align="center">标题</td>
			<td width="45%" align="center">详情</td>
			<td width="13%" align="center">发布时间</td>
			<td width="8%" align="center">编辑</td>
			<td width="8%" align="center">删除</td>
		</tr>
		<tr id="admin_list_tr2" onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
			<td align="center">1</td>
			<td align="center">新闻联播</td>
			<td align="center" style="text-align: left; padding-left: 1%; padding-right: 1%;">公告详情公告详情公告详情公告详情公告详情公告详情公告详情公告详情</td>
			<td align="center">2019-24-24 24:24:24</td>
			
			<td align="center">
				<a href="${pageContext.request.contextPath}/admin/notice/edit.jsp">
					<img class="admin_merchant_pd_immg1" src="${pageContext.request.contextPath}/images/i_edit.gif" border="0">
				</a>
			</td>
			<td align="center">
				<a>
					<img class="admin_merchant_pd_immg1" src="${pageContext.request.contextPath}/images/i_del.gif" width="16" height="16" border="0">
				</a>
			</td>
		</tr>
	</table>
	
	<div id="admin_list_div_page">
		第<s:property value="#session.paging.presentPage"/>页/<s:property value="#session.paging.page"/>页&nbsp;&nbsp;&nbsp;&nbsp;
		<s:if test="#session.paging.presentPage != 1">
			<a href="${pageContext.request.contextPath }/MerchantProduct_findAll.action?paging.presentPage=1&searchText=${session.searchText}&merchant.m_id=${merchant.m_id}">首页</a>
			<a href="${pageContext.request.contextPath }/MerchantProduct_findAll.action?paging.presentPage=<s:property value="#session.paging.presentPage-1"/>&searchText=${session.searchText}&merchant.m_id=${merchant.m_id}">上一页</a>
		</s:if>
		<s:if test="#session.paging.presentPage != #session.paging.page">
			<a href="${pageContext.request.contextPath }/MerchantProduct_findAll.action?paging.presentPage=<s:property value="#session.paging.presentPage+1"/>&searchText=${session.searchText}&merchant.m_id=${merchant.m_id}">下一页</a>
			<a href="${pageContext.request.contextPath }/MerchantProduct_findAll.action?paging.presentPage=<s:property value="#session.paging.page"/>&searchText=${session.searchText}&merchant.m_id=${merchant.m_id}">尾页</a>
		</s:if>
	</div>
	
</body>
</html>