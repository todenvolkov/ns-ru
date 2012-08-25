$(document).ready(function (){
            /*
=================================================
                 SLIDER
=================================================*/    
    $('#slides').slides({
        preload:true,
        preloadImage: '/themes/nsystems/css/images/loading.gif',
        prev:'prev',
        next:'next',
        play:5000,
        pause:1500,
        slideSpeed:600
    });
    $('#slides .previous-tooltip').hide();
    $('#slides a.prev').hover(function(){
        $('#slides .previous-tooltip').show()
        },function(){
            $('#slides .previous-tooltip').hide();
        });
    $('#slides .next-tooltip').hide();
    $('#slides a.next').hover(function(){
        $('#slides .next-tooltip').show()
        },function(){
            $('#slides .next-tooltip').hide();
        });
        
    /*
=================================================
                 POST-CONTENT
=================================================*/    
        $('#portfolio .posts li:nth-child(3n+3)')
        .css('margin-right','0px');
      
	$('.fancybox').fancybox({
    	openEffect : 'fade',
    	closeEffect	: 'fade',
    	helpers : {
    		title : {
    			type : 'outside'
    		}
    	},
		
    });
});