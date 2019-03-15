<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>我的订单页面</title>
	<link href="css/cart.css" rel="stylesheet" type="text/css">
	<link href="css/common.css" rel="stylesheet" type="text/css">
</head>
<body>

	<div class="container header">
		<div class="span5">
			<div class="logo">
				<img src="images/logo.jpg" alt="光光商城">
			</div>
		</div>
		
		<div class="span9">
			<div class="headerAd">
				<img src="images/header.jpg" width="320" height="50" alt="正品保障" title="正品保障">
			</div>	
		</div>
		
		<%@ include file="menu_top.jsp" %>
		
	</div>

	<div class="container cart">

		<div class="span24">
		
			<div class="step step1">
				<ul>
					<li  class="current"></li>
					<li>我的订单的显示</li>
				</ul>
			</div>
		
			<table>
				<tbody>
					<s:iterator var="order" value="pageBean.list">
						<tr>
							<th colspan="5">订单编号:<s:property value="#order.oid" />&nbsp;&nbsp;&nbsp;&nbsp;
								订单状态:
								<s:if test="#order.state == 1">
									<a href="${pageContext.request.contextPath }/order_findByOid.action?oid=<s:property value="#order.oid" />"><font color="red">付款</font></a>
								</s:if>
								<s:if test="#order.state == 2">
									已经付款
								</s:if>
								<s:if test="#order.state == 3">
									<a href="${pageContext.request.contextPath }/order_updateState.action?oid=<s:property value="#order.oid" />"><font color="red">确认收货</font></a>
								</s:if>
								<s:if test="#order.state == 4">
									交易完成
								</s:if>
							</th>
						</tr>
						
						<tr>
							<th>图片</th>
							<th>商品</th>
							<th>价格</th>
							<th>数量</th>
							<th>小计</th>
						</tr>
						
						<s:iterator var="orderItem" value="#order.orderItems">
							<tr>
								<td width="60">
									<input type="hidden" name="id" value="22"/>
									<img src="商品图片"/>
								</td>
								<td>
									<a target="_blank">女装</a>
								</td>
								<td>
									50
								</td>
								<td class="quantity" width="60">
									2
								</td>
								<td width="140">
									<span class="subtotal">￥100</span>
								</td>
							</tr>
						</s:iterator>
					</s:iterator>
					<tr>
						<th colspan="5">
							<div class="pagination">
									<span>第<s:property value="pageBean.page"/>/<s:property value="pageBean.totalPage"/>页</span>
								
									<!-- 判断如果不是第一页就显示  否则就隐藏 -->
									<s:if test="pageBean.page != 1">
										<a href="#" class="firstPage">&nbsp;</a>
										<a href="#" class="previousPage">&nbsp;</a>
									</s:if>
									
									<s:iterator var="i" begin="1" end="pageBean.totalPage">
										<s:if test="pageBean.page != #i"><!-- 不是当前页  能点 -->
											<a href="#">1</a>
										</s:if>
										<s:else><!-- 是当前页  不能点 -->
											<span class="currentPage">2</span>
										</s:else>
									</s:iterator>
									
									<!-- 判断如果不是最后一页就显示  否则就隐藏 -->
									<s:if test="pageBean.page != pageBean.totalPage">
										<a class="nextPage" href="${pageContext.request.contextPath}/order_findByUid.action?page=<s:property value="pageBean.page+1" />">&nbsp;</a>
										<a class="lastPage" href="${pageContext.request.contextPath}/order_findByUid.action?page=<s:property value="pageBean.totalPage" />">&nbsp;</a>
									</s:if>
								
							</div>
						</th>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	
	<%@ include file="menu_bottom.jsp" %>
		
</body>
</html>