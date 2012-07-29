twttr.anywhere(function (T) {

  T("#tbox").tweetBox({
    height: 100,
		label: 'Why Do You Think The Chicken Crossed The Road?',
    defaultContent: "",


   complete : function (tweetBox) {
					
				$(window).resize(function(){
					tweetBox.$editor.css({
						width: $(".hero-unit:last").width()*0.97
					})
				});
				
				tweetBox.$editor.focus(function(){
					if($(this).val() == ""){
						$(this).val("@whydidthechickn because ")
					}
					
					// $(this).css("backgroundColor", )
				});
				
         tweetBox.$editor.css({
						width: $(".hero-unit:last").width()*0.97,
            resize : 'none', 
						outline: '0',
            color : '#9B9B9B',
            'font-family': 'Arial', 
            'font-size': '14px',
            border : 'none'
         });

         tweetBox.$button.css( {
            cursor : 'hand', 
            cursor : 'pointer'
         }); 
      // } catch (e) {
      // }
   }, 

   onTweet : function () {
		$('#thanks').modal();
   }
  });

});