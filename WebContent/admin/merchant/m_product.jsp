<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
	function GoBack() {
		var username = '${loginUser.username}';
		var searchText = "";
		window.location.href="Merchant_likeQueryMname?method=post&loginUser.username="+username+"&paging.presentPage=1&searchText="+searchText;
	}
</script>
</head>
<body id="admin_list_body">
	<div id="admin_list_div_top">
		店铺商品列表
	</div>
	
	<table id="admin_list_table" cellspacing="0" cellpadding="0" rules="all" width="100%" border="1" bordercolor="gray">
		<tr id="admin_list_tr1">
			<td width="10%" align="center">编号</td>
			<td width="10%" align="center">图片</td>
			<td width="20%" align="center">名称</td>
			<td width="10%" align="center">价格</td>
			<td width="10%" align="center">月销售量</td>
			<td width="10%" align="center">是否热门</td>
			<td width="10%" align="center">下架商品</td>
		</tr>
		<s:iterator value="listMerchantProduct" var="LMPs">
			<tr id="admin_list_tr2" onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
				<td align="center">${LMPs.p_id }</td>
				<td align="center">${LMPs.p_id }</td>
				<td align="center">${LMPs.p_name }</td>
				<td align="center">${LMPs.p_price }</td>
				<td align="center">${LMPs.sale_volume }</td>
				<td align="center">
					<s:if test="#LMPs.sale_volume > 100">
						是
					</s:if>
					<s:else>
						否
					</s:else>
				</td>
				<td align="center">
					<a>
						<img src="${pageContext.request.contextPath}/images/i_del.gif" width="16" height="16" border="0" style="CURSOR: hand">
					</a>
				</td>
			</tr>
		</s:iterator>
	</table>
	
	<div id="admin_list_div_page" style="float: inherit; overflow: hidden;">
		<div style="float: inherit; text-align: center;">
			第${paging.presentPage }页${paging.page }页&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath }/Merchant_mIdQueryAllProduct?method=post&m_id=${m_id }&paging.presentPage=1">首页</a>
			<a href="${pageContext.request.contextPath }/Merchant_mIdQueryAllProduct?method=post&m_id=${m_id }&paging.presentPage=${paging.presentPage-1 }">上一页</a>
			<a href="${pageContext.request.contextPath }/Merchant_mIdQueryAllProduct?method=post&m_id=${m_id }&paging.presentPage=${paging.presentPage+1 }">下一页</a>
			<a href="${pageContext.request.contextPath }/Merchant_mIdQueryAllProduct?method=post&m_id=${m_id }&paging.presentPage=${paging.page }">尾页</a>
			<div style="float: right;">
				<input type="submit" onclick="GoBack()" value="返回" />
			</div>
		</div>
		
	</div>
	
</body>
</html>