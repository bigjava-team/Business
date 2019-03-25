<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css"/>
</head>
<body class="admin_body">
	
	<div id="admin_add_div_top">
		编辑商品
	</div>
	
	<form class="admin_form1" action="" method="post">
		<div class="admin_add_div_middle">
			<div class="admin_merchant_d1">
				商品名称：
			</div>
			<div class="admin_merchant_d2">
				<input type="text" name="pname" />
			</div>
		</div>
		
		<div class="admin_add_div_middle">
			<div class="admin_merchant_d1">
				所属的二级分类：
			</div>
			<div class="admin_merchant_d2">
				<select name="categorySecond.csid">
					<option value="男装">男装</option>
					<option value="女装">女装</option>
					<option value="青春手机">青春手机</option>
					<option value="小霸王">小霸王</option>
				</select>
			</div>
		</div>
		
		<div class="admin_add_div_middle">
			<div class="admin_merchant_d1">
				商品市场价格：
			</div>
			<div class="admin_merchant_d2">
				<input type="text" name="cname">
			</div>
		</div>
		
		<div class="admin_add_div_middle">
			<div class="admin_merchant_d1">
				商品商场价格：
			</div>
			<div class="admin_merchant_d2">
				<input type="text" name="shop_price" value="" class="bg"/>
			</div>
		</div>
		
		<div class="admin_add_div_middle admin_merchant_pd_a_e_d1">
			<div class="admin_merchant_d3">
				商品图片：
			</div>
			<div class="admin_merchant_d2">
				<input type="file" name="myFile">
			</div>
		</div>
		
		<div class="admin_add_div_middle admin_merchant_pd_a_e_d2">
			<div class="admin_merchant_d3">
				商品描述：
			</div>
			<div class="admin_merchant_d2">
				<textarea rows="5" cols="30" name="pdesc"></textarea>
			</div>
		</div>
		
		<div id="admin_add_div_bottom">
			<input type="submit" value="确定" style="margin-right: 80px;" />
			<input type="reset" value="重置" style="margin-right: 80px;" />
			<input type="button" onclick="history.go(-1)" value="返回" />
		</div>
	</form>
	
</body>
</html>