/*! Customized Jquery from Punit Korat.  punit@templatetrip.com  : www.templatetrip.com
Authors & copyright (c) 2016: TemplateTrip - Webzeel Services(addonScript). */
/*! NOTE: This Javascript is licensed under two options: a commercial license, a commercial OEM license and Copyright by Webzeel Services - For use Only with TemplateTrip Themes for our Customers*/

$(document).ready(function() {
	/* start cart dropdown js*/
	 jQuery('body.header_style1,body.header_style2').on('click',function(e){
		jQuery('#cart').removeClass('open');
		jQuery(".header-cart-toggle").on('click',function(e){
			$(".header-cart-toggle").slideUp("slow"); 	   	
		});
	});
	/* end cart dropdown js*/
	
	/* start cart dropdown js*/
	 jQuery('.header_style2 .user-info').on('click',function(e){
		jQuery(".account-link-toggle").on('click',function(e){
			$(".account-link-toggle").slideUp("slow"); 	   	
		});
	});
	/* end cart dropdown js*/
	
	/* start cart dropdown js*/
	 jQuery('body.header_style2').on('click',function(e){
		jQuery('#search').removeClass('active');
		//jQuery('.search').addClass('active');
		jQuery(".ttsearchtoggle").on('click',function(e){
			$(".ttsearchtoggle").slideUp("slow"); 
			jQuery('.right-block').removeClass('active');
		});
	});
	 
	/* end cart dropdown js*/
						   
	/* start leftmenu js*/
			$(".header_style1 .leftmenu").on("click" , function(){
				$(this).toggleClass("active");
				$("body").toggleClass("nav-open");
				$(".tt-menu").toggleClass("active");
				
			});
	
	/* start leftmenu js*/
	$(".header_style2 .leftmenu").on("click" , function(){
		$(this).toggleClass("active");
		$("body").toggleClass("nav-open");
		$(".tt-menu").toggleClass("active");
	});
	$(".header_style2 .menu-close").on("click" , function(){
		$(this).removeClass("active");
		$("body").removeClass("nav-open");
		$(".tt-menu").removeClass("active");
	});													
	/* end leftmenu js*/
	
	/* --------------- Start Sticky-header JS ---------------*/	
	function header() {	
	 if (jQuery(window).width() > 1199){
		 if (jQuery(this).scrollTop() > 500)
			{    
				jQuery('.header_sticky_on .full-header').addClass("fixed");
				 
			}else{
			 jQuery('.header_sticky_on .full-header').removeClass("fixed");
			}
		} else {
		  jQuery('.header_sticky_on .full-header').removeClass("fixed");
		  }
	}
	 
	$(document).ready(function(){header();});
	jQuery(window).resize(function() {header();});
	jQuery(window).scroll(function() {header();});
	
	/* --------------- End Sticky-header JS ---------------*/
});		