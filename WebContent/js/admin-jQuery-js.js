/**
 * 后台的按钮样式
 */
$(function(){
	$(".button-group_button_add").hover(function(){
		$(".button-group_button_add").css("color", "#D26900").css("font-size","15px").css("font-weight","bold");
	}, function(){
		$(".button-group_button_add").css("color", "#000").css("font-size","13px").css("font-weight","normal");
	});
});