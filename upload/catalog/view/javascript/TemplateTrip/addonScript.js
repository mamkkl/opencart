/*! Customized Jquery from Punit Korat.  punit@templatetrip.com  : www.templatetrip.com
Authors & copyright (c) 2016: TemplateTrip - Webzeel Services(addonScript). */
/*! NOTE: This Javascript is licensed under two options: a commercial license, a commercial OEM license and Copyright by Webzeel Services - For use Only with TemplateTrip Themes for our Customers*/
/* ----------- Start Page-loader ----------- */
$(window).load(function() {
    $(".ttloading-bg").fadeOut("slow");
});
/* ----------- End Page-loader ----------- */
/* ------------ Start Content-width JS --------------- */
function contentwidth() {
	colsWidth = $('#column-right, #column-left').length;
	if($( window ).width() >= 1470) {
		$( "#content" ).addClass( "Cwidth" );
		$( "#column-left" ).addClass( "Lwidth" );
		$( "#column-right" ).addClass( "Rwidth" );
		if (colsWidth == 2) {
			$('.Cwidth').css('width', '60%');
			$('.Lwidth').css('width', '20%');
			$('.Rwidth').css('width', '20%');
		} else if (colsWidth == 1) {
			$('.Cwidth').css('width', '80%');
			$('.Lwidth').css('width', '20%');
			$('.Rwidth').css('width', '20%');
		} else {
			$('.Cwidth').css('width', '100%');
		}
	} else if($( window ).width() > 991) {
		$( "#content" ).addClass( "Cwidth" );
		$( "#column-left" ).addClass( "Lwidth" );
		$( "#column-right" ).addClass( "Rwidth" );
	if (colsWidth == 2) {
		$('.Cwidth').css('width', '50%');
		$('.Lwidth').css('width', '25%');
		$('.Rwidth').css('width', '25%');
		$("#column-left" ).addClass("Rtoggle" );
		$("#column-left h1.text-uppercase").click(function() {
			$(this).parent().toggleClass('active').find('.rightcolumn-toggle').slideToggle( "200" );
		});
	} else if (colsWidth == 1) {
		$('.Cwidth').css('width', '75%');
		$('.Lwidth').css('width', '25%');
		$('.Rwidth').css('width', '25%');
	} else {
		$('.Cwidth').css('width', '100%');
	}
	} else {
	$("#content").removeClass("Cwidth");
	$("#column-left").removeClass("Lwidth");
	$("#column-right").removeClass("Rwidth");
	$("#column-right" ).removeClass("Rtoggle" );
	$('#content').removeAttr("style");
	$('#column-left').removeAttr("style");
	$('#column-right').removeAttr("style");
	} 
}
$(document).ready(function(){contentwidth();});
$(window).resize(function() {contentwidth();});

/* ------------ End Content-width JS --------------- */

$(document).ready(function() {
	
		$(".user-info a.dropdown-toggle").click(function(){
			$( ".account-link-toggle" ).slideToggle( "2000" );
			$(".header-cart-toggle").slideUp("slow");
			$(".header_style2 #form-language ul").slideUp("slow");
			$(".header_style2 #form-currency ul").slideUp("slow");
			$("body").removeClass("language-open");
			$("body").removeClass("currency-open");
			$("body").removeClass("cart-open");
			$("body").toggleClass("user-open");
	  	});
			
		$("#cart button.dropdown-toggle").click(function(){
			$( ".header-cart-toggle" ).slideToggle( "2000" );														 
		   	$(".account-link-toggle").slideUp("slow");
			$(".header_style2 #form-language ul").slideUp("slow");
			$(".header_style2 #form-currency ul").slideUp("slow");
			$("body").removeClass("language-open");
			$("body").removeClass("currency-open");
			$("body").removeClass("user-open");
			$("body").toggleClass("cart-open");
   	    });
		
		$(".header_style2 #form-currency button.dropdown-toggle").click(function(){
			$( ".header_style2 #form-currency ul" ).slideToggle( "2000" );	
			$(".header_style2 #form-language ul").slideUp("slow");
			$(".account-link-toggle").slideUp("slow");
			$(".header-cart-toggle").slideUp("slow");
			$("body").removeClass("language-open");
			$("body").removeClass("user-open");
			$("body").removeClass("cart-open");
			$("body").toggleClass("currency-open");
    	});
		
        $(".header_style2 #form-language button.dropdown-toggle").click(function(){
			$( ".header_style2 #form-language ul" ).slideToggle( "2000" );																  
			$(".header_style2 #form-currency ul").slideUp("fast");
			$(".account-link-toggle").slideUp("slow");
			$(".header-cart-toggle").slideUp("slow");
			$("body").removeClass("currency-open");
			$("body").removeClass("cart-open");
			$("body").removeClass("user-open");
			$("body").toggleClass("language-open");
       	});
		
	$(".option-filter .list-group-items a").click(function() {
		$(this).toggleClass('collapsed').next('.list-group-item').slideToggle();
	});

	$(".filter_toggle .option-filter .list-group-items a").unbind("click");
	
	$( "#content" ).addClass( "left-column" );
	
	$("#column-left .products-list .product-thumb, #column-right .products-list .product-thumb").unwrap();
	$("#column-left .list-products .product-thumb, #column-right .list-products .product-thumb").unwrap();

	$("#content > h1, .account-wishlist #content > h2, .account-address #content > h2, .account-download #content > h2").first().addClass("page-title");
	
	$("#content > .page-title").wrap("<div class='page-title-wrapper'><div class='container'></div></div>");
	$(".page-title-wrapper .container").append($("ul.breadcrumb"));
	$(".page-title-wrapper").appendTo(".header-content-title");
	
	$("#account-order #content > h2").wrap("<div class='page-title-wrapper'><div class='container'><div class='breadcrub'></div></div></div>");
	$("#account-address #content > h2").wrap("<div class='page-title-wrapper'><div class='container'><div class='breadcrub'></div></div></div>");
	$(".page-title-wrapper .container .breadcrub").append($("ul.breadcrumb"));
	$("#content > .page-title-wrapper").appendTo($("#page > .header-content-title"));
	
	$('#column-left .product-thumb .image, #column-right .product-thumb .image').attr('class', 'image col-xs-5 col-sm-4 col-md-4');
	$('#column-left .product-thumb .thumb-description, #column-right .product-thumb .thumb-description').attr('class', 'thumb-description col-xs-7 col-sm-8 col-md-8');
	
		$('#content .row > .product-sort .product-thumb .image').attr('class', 'image col-xs-3 col-sm-3 col-md-2');
		$('#content .row > .product-sort .product-thumb .thumb-description').attr('class', 'thumb-description col-xs-9 col-sm-9 col-md-10');
		$('#content .row > .product-list .product-thumb .image').attr('class', 'image col-xs-5 col-sm-4 col-md-3');
		$('#content .row > .product-list .product-thumb .thumb-description').attr('class', 'thumb-description col-xs-7 col-sm-8 col-md-9');
		$('#content .row > .product-grid .product-thumb .image').attr('class', 'image col-xs-12');
		$('#content .row > .product-grid .product-thumb .thumb-description').attr('class', 'thumb-description col-xs-12');

		$('select.form-control').wrap("<div class='select-wrapper'></div>");
		$('input[type="checkbox"]').wrap("<span class='checkbox-wrapper'></span>");
		$('input[type="checkbox"]').attr('class','checkboxid');
		$('input[type="radio"]').wrap("<span class='radio-wrapper'></span>");
		$('input[type="radio"]').attr('class','radioid');
		
		$('#column-left .products-list .btn-cart').removeAttr('data-original-title');
		
		$('.slideshow-panel, #ttcmsrightbanner').wrapAll("<div class='slider-banner'><div class='row'></div></div>");
		$(".footer_style2 #ttcmsbottombanner").prependTo(".footer-top #footer-top");
		$(".ttfootertop-link").appendTo(".bottom-footer");

/*-------start go to top---------*/		
	$( "body" ).append( "<div class='backtotop-img'><div class='goToTop ttbox'></div></div>" );
	$( "body" ).append( "<div id='goToTop' title='Top' class='goToTop ttbox-img'></div>" );
	$("#goToTop").hide();
/*-------end go to top---------*/		
/*---------------------- Inputtype Js Start -----------------------------*/
$('.checkboxid').change(function(){
if($(this).is(":checked")) {
$(this).addClass("chkactive");
$(this).parent().addClass('active');
} else {
$(this).removeClass("chkactive");
$(this).parent().removeClass('active');
}
});

$(function() {
var $radioButtons = $('input[type="radio"]');
$radioButtons.click(function() {
$radioButtons.each(function() {
$(this).parent().toggleClass('active', this.checked);
});
});
});
/*---------------------- Inputtype Js End -----------------------------*/

/*------------- Slider -Loader Js Strat ---------------*/
$(window).load(function() 
{ 
$(".ttloading-bg").fadeOut("slow");
})
/*------------- Slider -Loader Js End ---------------*/
/* Slider Load Spinner */
$(window).load(function() { 
	$(".slideshow-panel .ttloading-bg").removeClass("ttloader");
});

/* --------------- Start Sticky-header JS ---------------*/	
function menuClass() {
	if($( window ).width() > 991) {
		$( ".main-category-list" ).addClass( "left-menu" );
	}
	else {
		$(".main-category-list").removeClass('left-menu');
		
	}
}
$(document).ready(function(){menuClass();});
$(window).resize(function() {menuClass();});
	
	function header() {	
	 if (jQuery(window).width() > 1199){
		 if (jQuery(this).scrollTop() > 500)
			{    
				jQuery('.header_sticky_on .full-header').addClass("fixed");
				$( ".content-top .left-menu" ).prependTo( ".header_default .full-header .full-bottom .container" );
				 
			}else{
			 jQuery('.header_sticky_on .full-header').removeClass("fixed");
			 $( ".header_default .full-header .full-bottom .container .left-menu" ).insertBefore( ".header_default .content-top .slider-banner" );
			}
		} else {
		  jQuery('.header_sticky_on .full-header').removeClass("fixed");
		  $( ".header_default .full-header .full-bottom .container .left-menu" ).insertBefore( ".header_default .content-top .slider-banner" );
		  }
	}
	 
	$(document).ready(function(){header();});
	jQuery(window).resize(function() {header();});
	jQuery(window).scroll(function() {header();});

/* --------------- End Sticky-header JS ---------------*/
/* --------------- Start Carousel Counter JS ---------------*/
		colsblogCarousel = $('#column-right, #column-left').length;
			if (colsblogCarousel == 2) {
				cBi=2;
			} else if (colsblogCarousel == 1) {
				cBi=3;
			} else {
				cBi=3;
		}

		colscategoryCarousel = $('#column-right, #column-left').length;
			if (colscategoryCarousel == 2) {
				cwi=3;
			} else if (colscategoryCarousel == 1) {
				cwi=3;
			} else {
				cwi=4;
		}

		colsbestsellerCarousel = $('#column-right, #column-left').length;
			if (colsbestsellerCarousel == 2) {
				cbi=2;
			} else if (colsbestsellerCarousel == 1) {
				cbi=2;
			} else {
				cbi=4;
		}

		colsCarousel = $('#column-right, #column-left').length;
			if (colsCarousel == 2) {
				ci=4;
			} else if (colsCarousel == 1) {
				ci=5;
			} else {
				ci=5;
		}

		colsrelatedCarousel = $('#column-right, #column-left').length;
			if (colsrelatedCarousel == 2) {
				cRi=4;
			} else if (colsrelatedCarousel == 1) {
				cRi=5;
			} else {
				cRi=6;
		}

/* --------------- End Carousel Counter JS ---------------*/
/* ----------- SmartBlog Js Start ----------- */
	if (!$( "#blog_latest_new_home" ).is('.blog_style1, .blog_style2, .blog_style3')) {
	var ttblog = $('#ttsmartblog-carousel').owlCarousel({
		items : cBi, //1 items above 1000px browser width
		nav : false,
		dots : false,
		loop: false,
		autoplay:false,	
		rtl:false,
		responsive: {
			0:{
				items:1
			},
			320:{
				items:1
			},
			544:{
				items:2
			},
			992:{
				items:1
			},
			1200:{
				items:2
			},
			1450:{
				items:cBi
			}
		}
	});

      // Custom Navigation Events
      $(".ttblog_next").click(function(){
			ttblog.trigger('next.owl.carousel',[700]);
	  })
	  $(".ttblog_prev").click(function(){
		 	ttblog.trigger('prev.owl.carousel',[700]);
	  })
	}
	var ttblog1 = $('.blog_style1 #ttsmartblog-carousel').owlCarousel({
		items : cBi, //1 items above 1000px browser width
		nav : false,
		dots : false,
		loop: false,
		autoplay:false,	
		rtl:false,
		responsive: {
			0:{
				items:1
			},
			320:{
				items:1
			},
			544:{
				items:2
			},
			992:{
				items:1
			},
			1200:{
				items:2
			},
			1651:{
				items:3
			}
		}
	});

// Custom Navigation Events
$(".blog_style1 .ttblog_next").click(function(){
	ttblog1.trigger('next.owl.carousel',[700]);
})
$(".blog_style1 .ttblog_prev").click(function(){
	ttblog1.trigger('prev.owl.carousel',[700]);
})

var ttblog2 = $('.blog_style2 #ttsmartblog-carousel').owlCarousel({
	items : cBi, //1 items above 1000px browser width
	nav : false,
	dots : false,
	loop: false,
	autoplay:false,	
	rtl:false,
	responsive: {
		0:{
			items:1
		},
		320:{
			items:1
		},
		544:{
			items:2
		},
		768:{
			items:1
		},
		992:{
			items:1
		},
		1651:{
			items:2
		}
	}
});

// Custom Navigation Events
$(".blog_style2 .ttblog_next").click(function(){
ttblog2.trigger('next.owl.carousel',[700]);
})
$(".blog_style2 .ttblog_prev").click(function(){
ttblog2.trigger('prev.owl.carousel',[700]);
})

var ttblog3 = $('.blog_style3 #ttsmartblog-carousel').owlCarousel({
	items : cBi, //1 items above 1000px browser width
	nav : false,
	dots : false,
	loop: false,
	autoplay:false,	
	rtl:false,
	responsive: {
		0:{
			items:1
		},
		320:{
			items:1
		},
		544:{
			items:2
		},
		992:{
			items:1
		},
		1300:{
			items:2
		},
		1651:{
			items:2
		}
	}
});

// Custom Navigation Events
$(".blog_style3 .ttblog_next").click(function(){
ttblog3.trigger('next.owl.carousel',[700]);
})
$(".blog_style3 .ttblog_prev").click(function(){
ttblog3.trigger('prev.owl.carousel',[700]);
})
 /* ----------- SmartBlog Js End ----------- */
       /* var ttserivce = $('#ttcmsservices .ttcmsservices').owlCarousel({
				items : 4, //1 items above 1000px browser width
				nav : false,
				dots : false,
				loop: false,
				autoplay:false,	
				pagination:false,
				rtl:false,
				responsive: {
					0:{
						items:1
					},
					481:{
						items:2
					},
					544:{
						items:2
					},
					992:{
						items:3
					},
					1200:{
						items:4
					}
				}
			});*/

        var ttfooterserivce = $('#ttcmstopfooterservice .ttcmsservices').owlCarousel({
				items : 5, //1 items above 1000px browser width
				nav : false,
				dots : false,
				loop: false,
				autoplay:true,	
				autoplaySpeed: 700,
				smartSpeed:450,
				pagination:true,
				rtl:false,
				responsive: {
					0:{
						items:1
					},
					320:{
						items:1
					},
					544:{
						items:3
					},
					992:{
						items:3
					},
					1250:{
						items:4
					},
					1450:{
						items:5
					}
				}
			});

		/* -----------Start carousel For TT- Top offer ----------- */
			var ttoffer = $('#ttcmsoffer .offerdesc').owlCarousel({
					items : 1, //1 items above 1000px browser width
					nav : false,
					dots : false,
					loop: true,
					autoplay:true,	
					rtl:false,
					autoplaySpeed: 1000,
					autoplayHoverPause:true,
					smartSpeed:450,
					animateIn: 'fadeIn',
					animateOut: 'fadeOut',
					navigation: true,
					responsive: {
						0:{
							items:1
						},
						580:{
							items:1
						},
						768:{
							items:1
						},
						992:{
							items:1
						},
						1680:{
							items:1
						}
					}
				});
	
	$("#ttcmsoffer .offer-desc").css('display', 'inline-block');

	var tttopoffer = $('.ttcmstopoffer').owlCarousel({
		items : 4, //1 items above 1000px browser width
		nav : false,
		dots : false,
		loop: false,
		autoplay:true,	
		rtl:false,
		autoplaySpeed: 1000,
		autoplayHoverPause:true,
		smartSpeed:450,
		animateIn: 'fadeIn',
		animateOut: 'fadeOut',
		navigation: true,
		responsive: {
			0:{
				items:1
			},
			480:{
				items:1
			},
			679:{
				items:2
			},
			992:{
				items:2
			},
			1301:{
				items:3
			},
			1700:{
				items:4
			}
		}
	});

/* -----------Start carousel For Testimonial ----------- */

		var tttestimonial = $('#tttestimonial-carousel').owlCarousel({
				items : 1, //1 items above 1000px browser width
				pagination: true,
				dots : true,
				nav : false,
				loop: true,
				autoplay:true,
				autoplaySpeed: 1000,
				autoplayHoverPause:true,
				smartSpeed:450,
				rtl:false,
				responsive: {
					0:{
						items:1
					},
					768:{
						items:1
					},
					992:{
						items:1
					},
					1200:{
						items:1
					}
				}
			});

/* ----------- End carousel For Testimonial ----------- */
/*-------------------------- Countdown js start ------------------------------ */
$('.tt-special-countdown .product-thumb').each(function(){
var $desc = jQuery(this).find('.thumb-description .progress');
var $qty = jQuery(this).find('.quantity');
var $pbar = jQuery(this).find('.progress-bar');
var $progress = $desc;
var $progressBar = $pbar;
var $quantity = $qty.html();
var currentWidth = parseInt($progressBar.css('width'));
var allowedWidth = parseInt($progress.css('width'));
var addedWidth = currentWidth + parseInt($quantity);
if (addedWidth > allowedWidth) {
addedWidth = allowedWidth;
}
var progress = (addedWidth / allowedWidth) * 100;
$progressBar.animate({width: progress + '%' }, 100);
});

$('.special-carousel.products-list .product-thumb').each(function(){
var $desc = jQuery(this).find('.thumb-description .progress');
var $qty = jQuery(this).find('.quantity');
var $pbar = jQuery(this).find('.progress-bar');
var $progress = $desc;
var $progressBar = $pbar;
var $quantity = $qty.html();
var currentWidth = parseInt($progressBar.css('width'));
var allowedWidth = parseInt($progress.css('width'));
var addedWidth = currentWidth + parseInt($quantity);
if (addedWidth > allowedWidth) {
addedWidth = allowedWidth;
}
var progress = (addedWidth / allowedWidth) * 100;
$progressBar.animate({width: progress + '%' }, 100);
});


$('#content .image-additional img').on('click',function(event) {
    var img_wrap = $(this).closest( ".countdown-images" );
    $(img_wrap).find('.special-image img').attr('src',$(event.target).data('image-large-src'));
    $('.selected').removeClass('selected');
    $(event.target).addClass('selected');
    $(img_wrap).find('.product-image img').prop('src', $(event.currentTarget).data('image-large-src'));
});

	  	var ttspecialcountdown = $('#content .tt-special-countdown .special-countdown.products-carousel').owlCarousel({
				items : 3, //1 items above 1000px browser width
				nav : true,
				dots : false,
				loop: false,
				autoplay:false,	
				rtl:false,
				responsive: {
					0:{
						items:1
					},
					320:{
						items:1
					},
					544:{
						items:2
					},
					992:{
						items:1
					},
					1200:{
						items:2
					},
					1651:{
						items:3
					}
				}
		});
		

$('#column-right .tt-special-countdown .special-countdown.products-carousel').owlCarousel({
	items:1,
	itemsDesktop: [1199,1],
	itemsDesktopSmall: [991,1],
	itemsTablet: [767,1],
	itemsMobile: [480,1],
	navigation: true,
	autoPlay: true,
	stopOnHover  : true,
	pagination: false
});
$('#column-left .tt-special-countdown .special-countdown.products-carousel').owlCarousel({
	items:1,
	itemsDesktop: [1199,1],
	itemsDesktopSmall: [991,1],
	itemsTablet: [767,1],
	itemsMobile: [480,1],
	navigation: true,
	autoPlay: true,
	stopOnHover  : true,
	pagination: false
});

$('#column-left .products-list .products-carousel, #column-left .list-products .products-carousel').owlCarousel({
	items:1,
	itemsDesktop: [1199,1],
	itemsDesktopSmall: [991,1],
	itemsTablet: [767,1],
	itemsMobile: [480,1],
	navigation: true,
	dots : false,
	autoPlay: true,
	stopOnHover  : true,
	pagination: false
});

$('#column-right .products-list .products-carousel, #column-right .list-products .products-carousel').owlCarousel({
	items:1,
	itemsDesktop: [1199,1],
	itemsDesktopSmall: [991,1],
	itemsTablet: [767,1],
	itemsMobile: [480,1],
	navigation: true,
	dots : false,
	autoPlay: true,
	stopOnHover  : true,
	pagination: false
});

	  	var ttspecialadditional = $('#content .special-additional-images').owlCarousel({
				items : 3, //1 items above 1000px browser width
				nav : true,
				dots : false,
				loop: false,
				autoplay:false,	
				rtl:false,
				responsive: {
					0:{
						items:1
					},
					320:{
						items:2
					},
					480:{
						items:2
					},
					544:{
						items:2
					},
					768:{
						items:2
					},
					992:{
						items:2
					},
					1200:{
						items:3
					}
				}
		});

// Custom Navigation Events
$(".additional-next").click(function(){
	$(".additional-images").trigger('owl.next');
})
$(".additional-prev").click(function(){
	$(".additional-images").trigger('owl.prev');
})
$(".additional-images-container .customNavigation").addClass('owl-navigation');

$("#column-left .tt-special-countdown .item-countdown, #column-right .tt-special-countdown .item-countdown").each(function() {
    $(this).insertAfter($(this).parent().parent().parent().find(".button-group"));
});
/*-------------------------- Countdown js End ------------------------------ */
/*-------------------------- latest js Start ------------------------------ */
$('.bestseller-carousel .product-thumb').each(function(){
var $desc = jQuery(this).find('.thumb-description .progress');
var $qty = jQuery(this).find('.quantity');
var $pbar = jQuery(this).find('.progress-bar');
var $progress = $desc;
var $progressBar = $pbar;
var $quantity = $qty.html();
var currentWidth = parseInt($progressBar.css('width'));
var allowedWidth = parseInt($progress.css('width'));
var addedWidth = currentWidth + parseInt($quantity);
if (addedWidth > allowedWidth) {
addedWidth = allowedWidth;
}
var progress = (addedWidth / allowedWidth) * 100;
$progressBar.animate({width: progress + '%' }, 100);
});


	  	var ttbestsellerproduct = $('#content .bestseller-carousel .bestseller-items.products-carousel').owlCarousel({
				items : cbi, //1 items above 1000px browser width
				nav : true,
				dots : false,
				loop: false,
				autoplay:false,	
				rtl:false,
				responsive: {
					0:{
						items:1
					},
					544:{
						items:1
					},
					545:{
						items:2
					},
					992:{
						items:1
					},
					1651:{
						items:cbi
					}
				}
		});
		
	  	var ttlatestproduct = $('#content .tt-latest-product .latest-carousel .latest-items.products-carousel').owlCarousel({
				items : 1, //1 items above 1000px browser width
				nav : true,
				dots : false,
				loop: false,
				autoplay:false,	
				rtl:false,
				responsive: {
					0:{
						items:1
					},
					481:{
						items:2
					},
					768:{
						items:3
					},
					1200:{
						items:1
					},
					1310:{
						items:1
					}
				}
		});

		
	  	var ttfeatureproduct = $('.common-home #content .featured-carousel .featured-items.products-carousel').owlCarousel({
				items : 5, //1 items above 1000px browser width
				nav : true,
				dots : false,
				loop: false,
				autoplay:false,	
				rtl:false,
				responsive: {
					0:{
						items:1
					},
					360:{
						items:2
					},
					768:{
						items:3
					},
					1250:{
						items:4
					},
					1550:{
						items:5
					}
				}
		});


	  	var ttspecialtab = $('.special-carousel.products-list .special-items.products-carousel').owlCarousel({
				items : 1, //1 items above 1000px browser width
				nav : true,
				dots : false,
				loop: false,
				autoplay:false,	
				rtl:false,
				responsive: {
					0:{
						items:1
					},
					544:{
						items:1
					},
					768:{
						items:2
					},
					992:{
						items:1
					},
					1500:{
						items:1
					}
				}
			});

		if (!$( "body" ).hasClass( "responsive_style2" )){	
	  	var ttcategorytab = $('#content .TT-cat-carousel .TTcategory-tab.products-carousel').owlCarousel({
				items : cwi, //1 items above 1000px browser width
				nav : true,
				dots : false,
				loop: false,
				autoplay:false,	
				rtl:false,
				responsive: {
					0:{
						items:1
					},
					480:{
						items:1
					},
					481:{
						items:2
					},
					992:{
						items:1
					},
					1650:{
						items:2
					},
					1651:{
						items:cwi
					}
				}
			});
		}

			if ($( "body" ).hasClass( "responsive_style2" )){
				var ttcategorytab = $('#content .TT-cat-carousel .TTcategory-tab.products-carousel').owlCarousel({
					items : cwi, //1 items above 1000px browser width
					nav : true,
					dots : false,
					loop: false,
					autoplay:false,	
					rtl:false,
					responsive: {
						0:{
							items:2
						},
						320:{
							items:2
						},
						768:{
							items:2
						},
						992:{
							items:1
						},
						1650:{
							items:2
						},
						1651:{
							items:cwi
						}
					}
				});
			}

	  	var cat_feature = $('.category-feature.tt-carousel').owlCarousel({
				items : 3, //1 items above 1000px browser width
				nav : true,
				dots : false,
				loop: false,
				autoplay:false,	
				rtl:false,
				responsive: {
					0:{
						items:1
					},
					320:{
						items:1
					},
					544:{
						items:2
					},
					992:{
						items:1
					},
					1200:{
						items:2
					},
					1651:{
						items:3
					}
				}
			});

      // Custom Navigation Events
	  $(".ttfcat_prev").click(function(){
        cat_feature.trigger('owl.prev');
      })
      $(".ttfcat_next").click(function(){
        cat_feature.trigger('owl.next');
      })
	  
	jQuery('.tt-category-featured .ttfcat-items .category-feature .item').on('click', 'content', function() {
        jQuery('.tt-category-featured .ttfcat-items .category-feature .item.active').removeClass('active');
        jQuery(this).addClass('active');
    });

	if (!$( "body" ).hasClass( "responsive_style2" )){
	var ttrelatedproduct = $('.related-carousel .related-items.products-carousel').owlCarousel({
				items : cRi, //1 items above 1000px browser width
				nav : false,
				dots : false,
				loop: true,
				autoplay:false,	
				rtl:false,
				responsive: {
					0:{
						items:1
					},
					360:{
						items:2
					},
					768:{
						items:3
					},
					1301:{
						items:4
					},
					1600:{
						items:cRi
					}
				}
			});
		}

		if ($( "body" ).hasClass( "responsive_style2" )){
			var ttrelatedproduct = $('.related-carousel .related-items.products-carousel').owlCarousel({
						items : cRi, //1 items above 1000px browser width
						nav : false,
						dots : false,
						loop: false,
						autoplay:false,	
						rtl:false,
						responsive: {
							0:{
								items:1
							},
							320:{
								items:2
							},
							768:{
								items:3
							},
							1301:{
								items:4
							},
							1600:{
								items:cRi
							}
						}
					});
				}

/*-------------------------- latest js End ------------------------------ */
if ($( "body" ).hasClass( "responsive_style2" )){
$("#content .products-list .products-carousel").owlCarousel({
	items : 4, //1 items above 1000px browser width
	nav : true,
	dots : true,
	addClassActive: true,
	loop: false,
	autoplay:false,	
	autoplayHoverPause:true,
	responsive: {
		1650: {
			items: 3
		},
		992: {
			items: 2
		},
		768: {
			items: 3
		},
		320: {
			items: 2
		},
		0:   {
			items:1
		}
	}
});
} 



	$(".ttpopupclose").click(function() {
        $("#dialog").removeClass("in");
        $("#dialog").css('display', 'none');
        $(".b-modal.__b-popup1__").remove();
        $(".newletter-popup").css('display', 'none');
    });

// product Carousel

		initialize_owl($('#owl1'));
	
		$('a[href="#tab-latest-0"]').on('shown.bs.tab', function () {
			initialize_owl($('#owl1'));
		}).on('hide.bs.tab', function () {
			destroy_owl($('#owl1'));
		});

		$('a[href="#tab-featured-0"]').on('shown.bs.tab', function () {
			initialize_owl($('#owl2'));
		}).on('hide.bs.tab', function () {
			destroy_owl($('#owl2'));
		});
	
		$('a[href="#tab-bestseller-0"]').on('shown.bs.tab', function () {
			initialize_owl($('#owl3'));
		}).on('hide.bs.tab', function () {
			destroy_owl($('#owl3'));
		});

		$('a[href="#tab-special-0"]').on('shown.bs.tab', function () {
			initialize_owl($('#owl4'));
		}).on('hide.bs.tab', function () {
			destroy_owl($('#owl4'));
		});



/* ---------------- start ontheme sub cat more menu ----------------------*/
 	$('.tt-category-featured .content > .caption .cat-sub > ul').each(function(){		
		var subcat = $(this).find('li');	
		var max_link = 4;	
		if ( subcat.length > max_link ) {
		$(this).append('<li class="more"><div class="more-menu"><span class="categories">More</span></div></li>');
		}
			subcat.each(function(j) {
			if ( j >= max_link ) { 
				$(this).css('display', 'none');
				$(this).addClass('disable');
			}
			});
		});
		
 		$('.tt-category-featured .content > .caption .cat-sub > ul .more-menu').each(function() {
		var subcatd = $(this).parent().parent().find('li.disable');
		var max_link = 2;
		var subcat = $(this).parent().parent().find('li');
		$(this).click(function() {
		if ($(this).hasClass('active')) {
		subcat.each(function(j) {
		if ( j >= max_link ) {
			if(subcat.hasClass('disable')){
			subcatd.slideUp(200);
			}
		}
		});
		$(this).removeClass('active');
		$(this).html('<span class="categories">More</span>');
		} else {
		subcat.each(function(j) {
		if ( j >= max_link  ) {
			subcat.slideDown(200);
		}
		});
		$(this).addClass('active');
		$(this).html('<span class="categories">Less</span>');
		}
		});				
		});
/* ---------------- End ontheme sub cat more menu ----------------------*/

/* Go to Top JS START */
	$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 150) {
				$('.goToTop').fadeIn();
			} else {
				$('.goToTop').fadeOut();
			}
		});
	
		// scroll body to 0px on click
		$('.goToTop').click(function () {
			$('body,html').animate({
				scrollTop: 0
			}, 1000);
			return false;
		});
	});
	/* Go to Top JS END */

	/* Active class in Product List Grid START */
$(".product-layout.product-list .product-thumb .image .rating").each(function(){
	$(this).insertAfter($(this).parent().parent().parent().find(".thumb-description .caption .product-description > h4"));
});
$(".product-layout.product-grid .product-thumb .thumb-description .caption .product-description > .rating").each(function(){
  $(this).appendTo($(this).parent().parent().parent().parent().parent().find(".image"));
});
$(".product-layout.product-sort .product-thumb .image .rating").each(function(){
	$(this).insertAfter($(this).parent().parent().parent().find(".thumb-description .caption .product-description > h4"));
});

$(".product-layout.product-list .product-thumb .image .ttproducthover").each(function(){
  $(this).appendTo($(this).parent().parent().find(".thumb-description .caption"));
});
$(".product-layout.product-grid .product-thumb .thumb-description .caption .ttproducthover").each(function(){
  $(this).appendTo($(this).parent().parent().parent().parent().find(".image"));
});
$(".product-layout.product-sort .product-thumb .image .ttproducthover").each(function(){
	$(this).appendTo($(this).parent().parent().find(".thumb-description .caption"));
});

	$('#list-view').click(function() {
		$('#grid-view').removeClass('active');
		$('#list-view').addClass('active');
		$('#content .row > .product-list .product-thumb .image').attr('class', 'image col-xs-5 col-sm-4 col-md-3');
		$('#content .row > .product-list .product-thumb .thumb-description').attr('class', 'thumb-description col-xs-7 col-sm-8 col-md-9');
		//$(".product-layout.product-list .product-thumb .button-group .btn-cart").removeAttr('data-original-title'); /* for remove tooltrip */
		$(".product-layout.product-list .product-thumb .image .rating").each(function(){
			$(this).insertAfter($(this).parent().parent().parent().find(".thumb-description .caption .product-description > h4"));
		});
		$(".product-layout.product-list .product-thumb .image .ttproducthover").each(function(){
		    $(this).appendTo($(this).parent().parent().find(".thumb-description .caption"));
		});

	});
	$('#grid-view').click(function() {
		$('#list-view').removeClass('active');
		$('#grid-view').addClass('active');
		$('#content .row > .product-grid .product-thumb .image').attr('class', 'image col-xs-12');
		$('#content .row > .product-grid .product-thumb .thumb-description').attr('class', 'thumb-description col-xs-12');
		//$(".product-layout.product-grid .product-thumb .button-group .btn-cart").attr('data-original-title','Add to cart');/* for add tooltrip */	
		$(".product-layout.product-grid .product-thumb .thumb-description .caption .product-description > .rating").each(function(){
		  $(this).appendTo($(this).parent().parent().parent().parent().parent().find(".image"));
		});
		$(".product-layout.product-grid .product-thumb .thumb-description .caption .ttproducthover").each(function(){
		  $(this).appendTo($(this).parent().parent().parent().parent().find(".image"));
		});
	});

	$('#short-view').click(function() {
		$('#list-view').removeClass('active');
		$('#grid-view').removeClass('active');
		$('#short-view').addClass('active');
		$('#content .row > .product-sort .product-thumb .image').attr('class', 'image col-xs-3 col-sm-3 col-md-2');
		$('#content .row > .product-sort .product-thumb .thumb-description').attr('class', 'thumb-description col-xs-9 col-sm-9 col-md-10');
		//$(".product-layout.product-sort .product-thumb .button-group .btn-cart").attr('data-original-title','Add to cart');/* for add tooltrip */	
		$(".product-layout.product-sort .product-thumb .image .rating").each(function(){
			$(this).insertAfter($(this).parent().parent().parent().find(".thumb-description .caption .product-description > h4"));
		});
		$(".product-layout.product-sort .product-thumb .image .ttproducthover").each(function(){
			$(this).appendTo($(this).parent().parent().find(".thumb-description .caption"));
		});
	});

		 if (localStorage.getItem('display') == 'grid') {
			jQuery('#grid-view').trigger('click');
		  } else if (localStorage.getItem('display') == 'list'){
			jQuery('#list-view').trigger('click');
		  }
		  else if (localStorage.getItem('display') == 'sort'){
			jQuery('#short-view').trigger('click');
		  }
		  else{
			jQuery('#grid-view').trigger('click');
		  }  
	/* Active class in Product List Grid END */

});


// Documnet.ready() over....
function initialize_owl(el) {
    el.owlCarousel({
        items : ci, //1 items above 1000px browser width
		nav : true,
		dots : false,
		loop: false,
		autoplay:false,	
		autoplayHoverPause:true,
		responsive: {
			1651: {
				items: ci
			},
			1650: {
				items: 3
			},
			992: {
				items: 2
			},
			768: {
				items: 3
			},
			370: {
				items: 2
			},
			0:   {
				items:1
			}
		}
    });

	// Custom Navigation Events

$(".customNavigation .next").click(function(){
	$(this).parent().parent().find(".products-carousel").trigger('next.owl.carousel',[700]);
})
$(".customNavigation .prev").click(function(){
	$(this).parent().parent().find(".products-carousel").trigger('prev.owl.carousel',[700]);
})
$(".products-list .customNavigation").addClass('owl-navigation');

}

function destroy_owl(el) {
    if(typeof el.data('owlCarousel') != 'undefined') {
		el.data('owlCarousel').destroy();
		el.removeClass('owl-carousel');
	}
}

/*--------- Start sameheight JS -------------*/

	function sameHeight(){
	if ($(document).width() >= 992){	
		var specialHeight = $(".tt-special-countdown .ttspecial-products-innner").height();
		var latestHeight = $(".tt-latest-product .ttlatest-products-innner").height();
		if(specialHeight > latestHeight) {
		$(".tt-latest-product .ttlatest-products-innner").height(specialHeight);
		} else {
		$(".tt-special-countdown .ttspecial-products-innner").height(latestHeight);
		}
	}
	}
	
	$(window).resize(function(){sameHeight();});
	$(window).load(function(){sameHeight();});

/* ------------ End sameheight JS --------------*/
/* FilterBox - Responsive Content*/
function optionFilter(){
	if ($(window).width() <= 991) {
		$('#column-left .option-filter-box').appendTo('.row #content .category-description');
		$('#column-right .option-filter-box').appendTo('.row #content .category-description');
	} else {
		$('.row #content .category-description .option-filter-box').appendTo('#column-left .option-filter');
		$('.row #content .category-description .option-filter-box').appendTo('#column-right .option-filter');
	}
}
$(document).ready(function(){ optionFilter(); });
$(window).resize(function(){ optionFilter(); });
/*category filter js*/

function footerToggle() {
	
	if($( window ).width() < 992) {
		$("footer .footer-column h5").addClass( "toggle" );
		$("footer .footer-column ul").css( 'display', 'none' );
		$("footer .footer-column.active ul").css( 'display', 'block' );
		$("footer .footer-column h5.toggle").unbind("click");
		$("footer .footer-column h5.toggle").click(function() {
			$(this).parent().toggleClass('active').find('ul.list-unstyled').slideToggle( "fast" );
		});
		
		$("#ttcmsfooter .title_block").addClass( "toggle" );
		$("#ttcmsfooter #ttfooter").css( 'display', 'none' );
		$("#ttcmsfooter #ttfooter.active").css( 'display', 'block' );
		$("#ttcmsfooter .title_block.toggle").unbind("click");
		$("#ttcmsfooter .title_block.toggle").click(function() {
		$(this).parent().toggleClass('active').find('#ttfooter').slideToggle( "fast" );
			
		});

		$("#ttcmspaymentlogo .title_block").addClass( "toggle" );
		$("#ttcmspaymentlogo .payment-list").css( 'display', 'none' );
		$("#ttcmspaymentlogo .payment-list.active").css( 'display', 'block' );
		$("#ttcmspaymentlogo .title_block.toggle").unbind("click");
		$("#ttcmspaymentlogo .title_block.toggle").click(function() {
		$(this).parent().toggleClass('active').find('.payment-list').slideToggle( "fast" );
			
		});
		
		$("#column-left .panel-heading").addClass( "toggle" );
		$("#column-left .list-group").css( 'display', 'none' );
		$("#column-left .panel-default.active .list-group").css( 'display', 'block' );
		$("#column-left .panel-heading.toggle").unbind("click");
		$("#column-left .panel-heading.toggle").click(function() {
		$(this).parent().toggleClass('active').find('.list-group').slideToggle( "fast" );
		});
		
		$("#column-left .box-heading").addClass( "toggle" );
		$("#column-left .products-carousel").css( 'display', 'none' );
		$("#column-left .products-list.active .products-carousel").css( 'display', 'block' );
		$("#column-left .box-heading.toggle").unbind("click");
		$("#column-left .box-heading.toggle").click(function() {
		$(this).parent().toggleClass('active').find('.products-carousel').slideToggle( "fast" );
		});
		
		$("#column-right .panel-heading").addClass( "toggle" );
		$("#column-right .list-group").css( 'display', 'none' );
		$("#column-right .panel-default.active .list-group").css( 'display', 'block' );
		$("#column-right .panel-heading.toggle").unbind("click");
		$("#column-right .panel-heading.toggle").click(function() {
		$(this).parent().toggleClass('active').find('.list-group').slideToggle( "fast" );
		});
		
		
		$("#ttcmstestimonial .title_block").addClass( "toggle" );
		$("#ttcmstestimonial #tttestimonial-carousel").css( 'display', 'none' );
		$("#ttcmstestimonial .tttestimonial-inner.active tttestimonial-carousel").css( 'display', 'block' );
		$("#ttcmstestimonial .title_block.toggle").unbind("click");
		$("#ttcmstestimonial .title_block.toggle").click(function() {
		$(this).parent().toggleClass('active').find('#tttestimonial-carousel').slideToggle( "fast" );
		});

		$("#ttcmsservices .title_block").addClass( "toggle" );
		$("#ttcmsservices .ttcmsservices").css( 'display', 'none' );
		$("#ttcmsservices .mianservice.active .ttcmsservices").css( 'display', 'block' );
		$("#ttcmsservices .title_block.toggle").unbind("click");
		$("#ttcmsservices .title_block.toggle").click(function() {
		$(this).parent().toggleClass('active').find('.ttcmsservices').slideToggle( "fast" );
		});
		
		$("#column-right .box-heading").addClass( "toggle" );
		$("#column-right .products-carousel").css( 'display', 'none' );
		$("#column-right .products-list.active .products-carousel").css( 'display', 'block' );
		$("#column-right .box-heading.toggle").unbind("click");
		$("#column-right .box-heading.toggle").click(function() {
		$(this).parent().toggleClass('active').find('.products-carousel').slideToggle( "fast" );
		});

		$('.footer_style1 .footer-left-cms .newletter-subscribe').prependTo('.footer-container > .container');
		$('.footer_style1 .bottom-footer #ttcmsfooterlogo').prependTo('.footer-container > .container');

		$('.footer_style2 .footer-top #ttcmspaymentlogo').prependTo('.footer-container > .container .footer-right-cms #footer-right');
		$('.footer_style2 .footer-top #ttcmsfooter').prependTo('.footer-container > .container .footer-right-cms #footer-right');
		
	} else {
		$("#ttcmsfooter .title_block.toggle").unbind("click");
		$("#ttcmsfooter .title_block").removeClass( "toggle" );
		$("#ttcmsfooter #ttfooter").css( 'display', 'block' );

		$("#ttcmspaymentlogo .title_block.toggle").unbind("click");
		$("#ttcmspaymentlogo .title_block").removeClass( "toggle" );
		$("#ttcmspaymentlogo .payment-list").css( 'display', 'block' );
		
		$("footer .footer-column h5.toggle").unbind("click");
		$("footer .footer-column h5").removeClass('toggle');
		$("footer .footer-column ul.list-unstyled").css('display', 'block');
		
		$("#column-left .panel-heading").unbind("click");
		$("#column-left .panel-heading").removeClass( "toggle" );
		$("#column-left .list-group").css( 'display', 'block' );

		$("#column-left .box-heading").unbind("click");
		$("#column-left .box-heading").removeClass( "toggle" );
		$("#column-left .products-carousel").css( 'display', 'block' );
		
		$("#column-right .panel-heading").unbind("click");
		$("#column-right .panel-heading").removeClass( "toggle" );
		$("#column-right .list-group").css( 'display', 'block' );

		$("#ttcmstestimonial .title_block").unbind("click");
		$("#ttcmstestimonial .title_block").removeClass( "toggle" );
		$("#ttcmstestimonial #tttestimonial-carousel").css( 'display', 'block' );

		$("#ttcmsservices .title_block").unbind("click");
		$("#ttcmsservices .title_block").removeClass( "toggle" );
		$("#ttcmsservices .ttcmsservices").css( 'display', 'block' );
		
		$("#column-right .box-heading").unbind("click");
		$("#column-right .box-heading").removeClass( "toggle" );
		$("#column-right .products-carousel").css( 'display', 'block' );

		$('.footer_style1 .footer-container > .container .newletter-subscribe').appendTo('.footer-left-cms #footer-left');
		$('.footer_style1 .footer-container > .container #ttcmsfooterlogo').prependTo('.bottom-footer #footer-bottom');

		$('.footer_style2 .footer-container > .container .footer-right-cms #footer-right #ttcmspaymentlogo').appendTo('.footer-top .container .row');
		$('.footer_style2 .footer-container > .container .footer-right-cms #footer-right #ttcmsfooter').appendTo('.footer-top .container .row');
		
	}
}

$(document).ready(function() {footerToggle();});
$(window).resize(function() {footerToggle();});

/* Category List - Tree View */
function categoryListTreeView() {
	$(".category-treeview li.category-li").find("ul").parent().prepend("<div class='list-tree'></div>").find("ul").css('display','none');

	$(".category-treeview li.category-li.category-active").find("ul").css('display','block');
	$(".category-treeview li.category-li.category-active").toggleClass('active');
}
$(document).ready(function() {categoryListTreeView();});


/* Category List - TreeView Toggle */
function categoryListTreeViewToggle() {
	$(".category-treeview li.category-li .list-tree").click(function() {
		$(this).parent().toggleClass('active').find('ul').slideToggle();
	});
}
$(document).ready(function() {categoryListTreeViewToggle();});

/* Animate effect on Review Links - Product Page */
$(".product-total-review, .product-write-review").click(function() {
    $('html, body').animate({ scrollTop: $(".product-tabs").offset().top }, 1000);
});

function responsivecolumn()
{
	if ($(window).width() <= 991)
	{
		$('#page > .container > .row > #column-left').appendTo('#page > .container > .row');
		$('#page > .container > .row > #column-right').appendTo('#page > .container > .row');
		
		$('#page > .container-fluid > .row > #column-left').appendTo('#page > .container-fluid > .row');
		$('#page > .container-fluid > .row > #column-right').appendTo('#page > .container-fluid > .row');
		
		$('#page > .content-bottom > .container > .row >  #column-left').appendTo('#page > .content-bottom > .container > .row');
		$('#page > .content-bottom > .container > .row > #column-right').appendTo('#page > .content-bottom > .container > .row');
	}
	else if($(window).width() >= 992)
	{
		$('#page > .container > .row > #column-left').prependTo('#page > .container > .row');
		$('#page > .container > .row > #column-right').appendTo('#page > .container > .row');
		
		$('#page > .container-fluid > .row > #column-left').prependTo('#page > .container-fluid > .row');
		$('#page > .container-fluid > .row > #column-right').appendTo('#page > .container-fluid > .row');
		
		$('#page > .content-bottom > .container > .row > #column-left').prependTo('#page > .content-bottom > .container > .row');
		$('#page > .content-bottom > .container > .row > #column-right').appendTo('#page > .content-bottom > .container > .row');
	}
}
$(window).resize(function(){responsivecolumn();});
$(window).ready(function(){responsivecolumn();});
/*category filter js end*/
