<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags" %>
<html>
  <head>
             <title>页面布局</title>      
        <!--css文件的引用-->
  </head>
  <!--搜素栏 -->
<link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"> --%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/zp1/css/xuanxiangxiahua.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/zp1/css/menu_bottom.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.3.1.1-min.js"></script>
<script type="text/javascript">
	function queryProduct(id) {
		var username = '${loginUser.username }';
		window.open("Product_idQueryProduct?method=post&loginUser.username="+username+"&product.p_id="+id+"&paging.presentPage=0");
	}
</script>

<style type="text/css">
 a {text-decoration: none}
/*索搜*/
* {box-sizing: border-box;}
#container {width: 500px;height: 820px; margin: 0 auto;}
#d div.search {padding: 15px 0;}
#d form {position: relative;width: 300px;margin: 0 auto;}
#d input, button {border: none;outline: none;}
#d input {width: 100%;height: 42px; padding-left: 13px;}
#d button {height: 42px;width: 42px; cursor: pointer;position: absolute;}
/*搜索框7*/
#d .bar7 form {height:53px;}
#d .bar7 input {width:400px;border-radius: 42px;border: -2px solid #324B4E;background: #F9F0DA;transition: .3s linear;float: right;}
#d .bar7 input:focus {width: 550px;}
#d .bar7 button {background: none;top: 1px;right: 0;}
#d .bar7 button:before{content: "\f002";font-family: FontAwesome;color: #324b4e;}

/*收藏特效*/
#a section button {font-size: 0.5rem;
padding: 0.5rem 0.5rem;background-color: #009ac9;border: 1px solid transparent;color: #ffffff;
font-weight:300;-webkit-border-radius: 3px;
border-radius: 3px;-webkit-transition: all 0.3s ease-in-out;-moz-transition: all 0.3s ease-in-out;transition: all 0.3s ease-in-out;}
#a section button:hover {background-color: #ffffff;color: #009ac9;border-color: #009ac9;}

/*导航栏目z的文字*/
.wenziz{float:left; text-align:left; color:#666; font-size:15px; margin:0 10 0 30 ;word-spacing:33px;}
.wenziz2{ text-align:right; color:#666; font-size:15px; margin:0 50 0 10 ;word-spacing:33px;}
.wenziz3{ text-align:right; color:#666; font-size:15px; margin:-60 220 0 0 ;word-spacing:45px;}
.wenziz4{ text-align:left; color:#666; font-size:15px; margin:80 10 0 30  ;word-spacing:45px;}
/*表格*/
#table{border: 2px solid black;width:100%;  height:100%;  }

/*第一版块*/
.contentone{ background-color: rgba(0,0,0,0.1);; width:100%; height:29px;  border:2px solid #F0F0F0; margin:0 auto}
/*第二版块*/
.contenttwo{ background:#ffffff; width:90%; height:81px; border:2px solid #ffffff; margin:0 auto}
/*第三版块*/
.contentthree{ background:#ffffff; width:80%; height:35px; border:2px solid #ffffff; margin:0 auto}
/*第四版块*/
.contentfour{ background:#ffffff; width:80%; height:1000px; border:2px solid #ffffff; margin:0 auto}
/*节目1*/
.lanmusi{ background:#fff; width:16%; height:230px; float:left;border:2px solid #ffffff; margin:2 3 0 3}
/*节目2*/
.lanmuwu{ background:#fff; width:100%; height:25%; float:left;border:2px solid #ffffff; margin:0 auto}

</style>
  <body>
	<!--板块1-->
	<div class="contentone">
		<div class=wenziz>
			中国大陆 
			<s:if test='loginUser.username == null || loginUser.username.equals("")'>
				亲，请登录免费注册我的光光
			</s:if>
			<s:else>
				欢迎您：${loginUser.username };
			</s:else>
		</div>
		<div id="d" class=wenziz2>
			<ul class="nav">
				<li><a href="#">网站导航</a>
					<ul class="drop-down-content">
						<li><a href="#">下架商品</a></li>
					</ul></li>
				<li class="drop-down"><a href="#">收藏夹</a>
					<ul class="drop-down-content">
						<li><a href="shouchang.jsp">宝贝收藏</a></li>
						<li><a href="dianpu.jsp">店铺收藏</a></li>
					</ul></li>
				<li><a href="#">商品分类</a>
					<ul class="drop-down-content">
						<li><a href="#">下架商品</a></li>
					</ul></li>

				<li class="drop-down"><a href="#">卖家中心</a>
					<ul class="drop-down-content">
						<li><a href="#">已卖商品</a></li>
						<li><a href="#">下架商品</a></li>
					</ul></li>
				<li><a href="#">联系客服</a>
					<ul class="drop-down-content">
						<li><a href="#">已卖商品</a></li>
					</ul></li>
				<li><a href="#">购物车</a>
					<ul class="drop-down-content">
						<li><a href="#">已卖商品</a></li>
					</ul></li>
			</ul>
		</div>
	</div>

	<!--板块2-->
	<div id="d" class="contenttwo">
		<img src="${pageContext.request.contextPath }/zp1/images/logo.png" height="100%" width="13%" align="left">
		<div class="search bar7 ">
			<form>
				<input type="text" placeholder="欢迎来到光光网...">
				<button type="submit"></button>
			</form>
		</div>
		<div id="a" class="wenziz3">
			<section>
			<button type="button">
				<a href="zp1/dianpu.jsp">店铺收藏</a>
			</button>
			</section>
		</div>

	</div>

	<!--板块3-->
	<div class="contentthree" >
		<span class="wenziz4"> 全部宝贝 降价 失效 同店宝贝 </span>
	</div>
	
	<div style="height:5%;border-top:1px solid #d0d0d0;"></div>
	<!--板块4-->
	<div class="contentfour" >
		<s:iterator value="listCollectProducts" var="LCPs">
			<div class="lanmusi" onclick="queryProduct(${LCPs.product.p_id})">
				<div class="空的div">
					<img src="${fileImageAction.urlImage }${LCPs.product.p_image }" height="60%" width="100%" />${LCPs.product.p_name }
				</div>
			</div>
		</s:iterator>
	</div>


	<!-- 尾部 -->
<%-- <%@include file="menu_bottom.jsp"%> --%>
</body>
</html>