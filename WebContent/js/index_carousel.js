$(function() {
	/* 获取li标签 */
	var carousel_ul_li = $("#carousel_ul li");
	/* 获取ul标签 */
	var carousel_ul = document.getElementById("carousel_ul");
	// 获取所有的img标签
	var imgArr = document.getElementsByName("carousel_ul_img");
	/* 设置导航按钮居住 */
	var navDiv = document.getElementById("navDiv");
	var outer = document.getElementById("carousel");
	
	/*console.log(parseInt(middle_carousel.offsetHeight));*/
	
	/* 动态生成ul宽度 */
	carousel_ul.style.width = outer.offsetWidth*imgArr.length+"px";
	
	/* 使超链接动态居中 */
	navDiv.style.left = (outer.offsetWidth - navDiv.offsetWidth)/2 + "px";
	/* 动态设定图片大小 */
	for (var i=0; i<carousel_ul_li.length; i++) {
		carousel_ul_li[i].style.width = outer.offsetWidth + "px";
	}

	//默认显示图片的索引
	 var index = 0

	var allA = document.getElementsByName("navDiv_a");
	allA[index].style.backgroundColor = "black";
	
	for (var i=0; i<allA.length; i++) {
		// 为每一个超链接添加一个Num
		allA[i].num = i;
		allA[i].onclick = function() {
			
			// 关闭自动切换定时器
			clearInterval(timer);
			
			//获取点击超链接的索引,并将其设置index
			index = this.num;
			
			// 切换图片
			setA();
			
			move(carousel_ul , "left" , -outer.offsetWidth*index , 100 , function(){
			});
		};
	}
	
	// 当鼠标移上去时关闭自动切换
	$("#carousel").hover(function() {
		clearInterval(timer);
	},function() {/* 当鼠标移上时开启自动切换 */
		// 动画执行完毕，开启自动切换
		autoChange();
	});
	
	// 自动切换图片
	autoChange();
	
	function setA() {
		
		// 判断当前索引是否是最后这一张图片
		if (index >= imgArr.length - 1) {
			index = 0;
			
			// 此时显示最后一张图片
			// 通过CSS将最后一张直接变成第一张
			carousel_ul.style.left = 0;
		}
		
		for (var i=0; i<allA.length; i++) {
			allA[i].style.backgroundColor = "";
		}
		
		allA[index].style.backgroundColor = "black";
	};
	
	// 定位一个自动切换定时器的标识
	var timer;
	
	// 开启自动切换图片
	function autoChange() {
		
		
		// 开启定时器
		timer = setInterval(function(){
			
			// 使索引自增
			index++;
			
			index %= imgArr.length;
			
			// 切换图片
			move(carousel_ul , "left" , -outer.offsetWidth*index , 100 , function() {
				setA();
			});
			
		},5000) 
	}
});