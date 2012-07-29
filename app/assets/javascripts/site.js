$(document).ready(function(){
	$(window).resize(function(){
		$(".twitter-anywhere-tweet-box").width($(".hero-unit:last").width())
	});
	
	var adjustWidth = setInterval(function(){
		if($(".twitter-anywhere-tweet-box").width() != null){
			$(".twitter-anywhere-tweet-box").width($(".hero-unit:last").width());
			clearInterval(adjustWidth);
		}
	}, 1);
});