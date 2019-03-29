<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet" />
<style>

.page4 h2{
margin:auto !important;
position:absolute !important;
top:0 !important;left:0;bottom:0;right:0;
height:100px;
transform:none;
transition:all 3s;
}
.ani{
transform:scale(3) rotate(360deg) !important;
}</style>

<script src='js/jquery.min.js'></script>

</head>
<body>

<div id="cubeTransition">
<div class="page1"></div>
<div class="page2"></div>
<div class="page3"></div>
<div class="page4"></div>
<div class="page5"></div>
</div>

<ul id="bullets"></ul>


<script>
function animationIn(i){
console.log(i,'i\'m in')
switch(i) {
    case 1:
        $('.page2 h2').fadeIn();
        break;
    case 2:
        $('.page3 h2').animate({top:'40%',left:'30%'},1000);
        break;
	case 3:
			   setTimeout(function(){
		 $('.page4 h2').addClass('ani')
		 console.log('hhh')
		},0)
        break;
    default:
        ;
}
}

function animationOut(i){
console.log(i,'i\'m out')
switch(i) {
    case 1:
        $('.page2 h2').fadeOut();
        break;
    case 2:
        $('.page3 h2').animate({top:0,left:0},1000);
        break;
	case 3:
        $('.page4 h2').removeClass('ani')
        break;
    default:
        ;
}
}
</script>
<script src='js/mousewheel.js'></script>
<script src="js/jquery.touchSwipe.js"></script>
<script src="js/cubeTransition.js"></script>


</body>
</html>