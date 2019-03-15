<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>
<script language="javascript" src="${pageContext.request.contextPath}/js/public.js"></script>
<script type="text/javascript">
	function showDetail(oid){
		//获得按钮对象
		var but = document.getElementById("but1");
		//获得div对象
		var div1 = document.getElementById("div1");
		if (but.value == "订单详情") {
			//1.创建异步加载的对象
			var xhr = createXmlHttp();
			//2.设置监听
			xhr.onreadystatechange = function(){
				if (xhr.readyState == 4) {
					if (xhr.status == 200) {
						div1.innerHTML = xhr.responseText;
					}
				}
			}
			//3.打来链接
			xhr.open("GET","${pageContext.request.contextPath}/adminOrder_findOrderItem.action?time="+new Date().getTime()+"&oid="+oid,"true");
			//4.发送
			xhr.send(null);
			but.value = "关闭";
		}else{
			but.value="订单详情";
			div1.innerHTML = "";
		}
		
	}
	
	//创建异步交互对象
	function createXmlHttp(){
		   var xmlHttp;
		   try{ // Firefox, Opera 8.0+, Safari
		        xmlHttp=new XMLHttpRequest();
		    }
		    catch (e){
			   try{ // Internet Explorer
			         xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
			      }
			    catch (e){
			      try{
			         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			      }
			      catch (e){}
			      }
		    }

			return xmlHttp;
		 }
</script>
</head>
<body id="admin_list_body">
	
	<form action="" method="post">
		<div id="admin_list_div_top">
			订单列表
		</div>
		
		<table id="admin_list_table" cellspacing="0" cellpadding="0" rules="all" width="100%" border="1" bordercolor="gray">
			<tr id="admin_list_tr1">
				<td width="8%" align="center">序号</td>
				<td width="8%" align="center">编号</td>
				<td width="8%" align="center">总金额</td>
				<td width="10%" align="center">时间</td>
				<td width="8%" align="center">状态</td>
				<td width="10%" align="center">收货人姓名</td>
				<td width="10%" align="center">收货人电话</td>
				<td width="18%" align="center">收货人地址</td>
				<td width="*%" align="center">订单详情</td>
			</tr>
			<tr id="admin_list_tr2"  onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
				<td align="center">1234567890</td>
				<td align="center">1234567890</td>
				<td align="center">1234567890</td>
				<td align="center">2019-3-8 12:12:12</td>
				<td align="center">未确认收货</td>
				<td align="center">龚智猛</td>
				<td align="center">0791-12345678</td>
				<td align="center">江西省南昌市进贤县白圩乡进贤县白圩</td>
				<td align="center">
					<%-- <input id="but<s:property value="#order.oid"/>" type="button" value="订单详情" onclick="showDetail(<s:property value="#order.oid"/>)">
					<div id="div<s:property value="#order.oid"/>"></div> --%>
					
					<input id="but1" type="button" value="订单详情" onclick="showDetail(1)">
					<div id="div1"></div>
				</td>
			</tr>
		</table>
		
		<div id="admin_list_div_page">
			第<s:property value="pageBean.page"/>页/<s:property value="pageBean.totalPage"/>页&nbsp;&nbsp;&nbsp;&nbsp;
			<s:if test="pageBean.page != 1">
				<a href="${pageContext.request.contextPath }/adminCategorySecond_findAll.action?page=1">首页</a>
				<a href="${pageContext.request.contextPath }/adminCategorySecond_findAll.action?page=<s:property value="pageBean.page-1"/>">上一页</a>
			</s:if>
			<s:if test="pageBean.page != pageBean.totalPage">
				<a href="${pageContext.request.contextPath }/adminCategorySecond_findAll.action?page=<s:property value="pageBean.page+1"/>">下一页</a>
				<a href="${pageContext.request.contextPath }/adminCategorySecond_findAll.action?page=<s:property value="pageBean.totalPage"/>">尾页</a>
			</s:if>
		</div>
	</form>
</body>
</html>