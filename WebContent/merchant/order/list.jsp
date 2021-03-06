<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	function searchText() {
		var searchText = $("#input").val();
		var m_id = '${merchant.m_id}';
		window.location.href="Merchant_merchantLikeUsernameLimitQueryOrders?method=post&paging.presentPage=1&m_id="+m_id+"&searchText="+searchText;
	}
</script>
</head>
<body id="admin_list_body">
	<form action="javascript:;" method="post">
		<div id="admin_list_div_top">
			订单列表
		</div>
		
		<div class="admin_list_div_moddle2">
			<!-- 根据查询值，若不输入，则查询全部 -->
			<div class="input-group2">
				<!-- 搜索框 -->
				<input type="text" id="input" class="input-group_input2" placeholder="通过用户名查询" onfocus="this.placeholder=' ' " onblur=" this.placeholder='请输入代理人姓名进行查询' " value="${searchCategorySecond}">
				<!-- placeholder的点击消失及为空时点击其他继续显示提示  -->
				<button id="button" onclick="searchText()" class="input-group_button2" >搜索</button>
			</div>
		</div>
		
		<table id="admin_list_table" cellspacing="0" cellpadding="0" rules="all" width="100%" border="1" bordercolor="gray">
			<tr id="admin_list_tr1">
				<td width="18%" align="center">编号</td>
				<td width="11.5%" align="center">订单金额</td>
				<td width="11.5%" align="center">订单时间</td>
				<td width="11.5%" align="center">收货人姓名</td>
				<td width="11.5%" align="center">收货人电话</td>
				<td width="17.5%" align="center">收货人地址</td>
				<td width="7%" align="center">用户名</td>
				<!-- <td width="18.5%" align="center">订单内容</td> -->
				<td width="11.5%" align="center">状态</td>
			</tr>
			<s:iterator value="listOrders" var="Los">
				<tr id="admin_list_tr2"  onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
					<td align="center">${Los.orderNumber }</td>
					<td align="center">¥${Los.total }</td>
					<td align="center">${Los.ordertime }</td>
					<td align="center">${Los.addr.a_name }</td>
					<td align="center">${Los.addr.a_phone }</td>
					<td align="center">${Los.addr.address }</td>
					<td align="center">${Los.user.username }</td>
					<td align="center">
						<s:if test="#Los.state == 2">
							<a href="Merchant_updateMerchantOrdersState?method=post&orders.o_id=${Los.o_id }&m_id=${merchant.m_id }" >发货</a>
						</s:if>
						<s:elseif test="#Los.state == 3">
							待收货
						</s:elseif>
						<s:elseif test="#Los.state == 4">
							交易完成
						</s:elseif>
					</td>
				</tr>
			</s:iterator>
		</table>
		
		<div id="admin_list_div_page">
				第${paging.presentPage }页/${paging.page }页&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="Merchant_queryMerchantOrders?method=post&m_id=${merchant.m_id}&paging.presentPage=1">首页</a>
					<a href="Merchant_queryMerchantOrders?method=post&m_id=${merchant.m_id}&paging.presentPage=${paging.presentPage-1 }">上一页</a>
					<a href="Merchant_queryMerchantOrders?method=post&m_id=${merchant.m_id}&paging.presentPage=${paging.presentPage+1 }">下一页</a>
					<a href="Merchant_queryMerchantOrders?method=post&m_id=${merchant.m_id}&paging.presentPage=${paging.page }">尾页</a>
			&nbsp;共${paging.totalNumber }条
		</div>
	</form>
</body>
</html>