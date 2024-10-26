/**
 * 배너 슬라이드
 */
$(document).ready(function () {
	let index = 0;
	const imgLength = $(".banner-img").length;
	setInterval(function(){
		index++
		let count = (index%imgLength) == 0 ? 4 : index%imgLength;
		$(".banner").animate(
			{
				left:-600+"px"
			}
		,2000,function(){
			$(this).append($(".banner-img:first-of-type()").clone())
			if($(".banner-img").length > 4) {
				$(this).children(".banner-img:first-of-type()").remove()
				$(this).css({
					left:0	
				})
			}
		})
		
	}
	,5000)
});
