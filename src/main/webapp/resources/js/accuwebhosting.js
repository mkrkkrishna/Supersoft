$(document).ready(function(){jQuery(function(){jQuery(".pull-right").click(function(){jQuery(".mobilemenu-content").slideToggle();});});$('.mobilemenu-content span.opener').click(function(){if($(this).hasClass("plus")){$(this).parent().find('ul').slideDown();$(this).removeClass('plus');$(this).addClass('minus');}else{$(this).parent().find('ul').slideUp();$(this).removeClass('minus');$(this).addClass('plus');}});$('.form-control-feedback').click(function(){$('#searchForm').submit();});$(window).scroll(function(){if($(this).scrollTop()>1){$('.nav_sec').addClass("fixed_position_menu");}else{$('.nav_sec').removeClass("fixed_position_menu");}if($(this).scrollTop()>98){$('.header-fixed').addClass("header-scroll");$('.search-form').addClass("search-form-fixed");}else{$('.header-fixed').removeClass("header-scroll");$('.search-form').removeClass("search-form-fixed");}if($(this).scrollTop()>490){$('.parallex-menu').addClass("fixed_position_parallex_menu");$('.chooseplan').fadeIn(500);}else{$('.parallex-menu').removeClass("fixed_position_parallex_menu");$('.chooseplan').fadeOut(100);}});$('.footer-part span.opener').click(function(){if($(this).hasClass("plus")){$(this).parent().find('ul').slideDown();$(this).removeClass('plus');$(this).addClass('minus');}else{$(this).parent().find('ul').slideUp();$(this).removeClass('minus');$(this).addClass('plus');}});$('.second-menu .sub-menu a').click(function(e){e.preventDefault();var hrefdata=$(this).attr('href');var scrolltopdata=(hrefdata=="#")?0:$(hrefdata).offset().top-75;$("html, body").animate({scrollTop:scrolltopdata},600);$('.second-menu .sub-menu ul li').removeClass('active');$(this).parent('li').addClass('active');return false;});$(".second-menu .sub-menu ul li").each(function(index,element){var liid=$(this).attr('id');if(liid!=undefined){liid_replaced=liid.replace('li-','');$('#'+liid_replaced).waypoint(function(){$('.second-menu .sub-menu ul li').removeClass('active');$('#'+liid).addClass('active');},{offset:80});}});$('#plans').waypoint(function(){$('.second-menu .sub-menu ul li').removeClass('active');},{offset:-500});$('#wli .menu-icon').mouseover(function(){$('#Lsub-detail').addClass("n-opecity");$('#Wsub-detail').removeClass('n-opecity');$('.windows-icon').addClass("S-opecity");$('.linux-icon').removeClass('S-opecity');}).mouseout(function(){$('#Lsub-detail').addClass("n-opecity");$('#Wsub-detail').removeClass('n-opecity');$('.windows-icon').addClass("S-opecity");$('.linux-icon').removeClass('S-opecity');});$('#lli').mouseover(function(){$('#Wsub-detail').addClass("n-opecity");$('#Lsub-detail').removeClass('n-opecity');$('.linux-icon').addClass("S-opecity");$('.windows-icon').removeClass('S-opecity');}).mouseout(function(){$('#Wsub-detail').removeClass("n-opecity");$('#Lsub-detail').addClass('n-opecity');$('.linux-icon').removeClass("S-opecity");$('.windows-icon').addClass('S-opecity');});$('#wli2 .menu-icon').mouseover(function(){$('#Lsub-detail2').addClass("n-opecity");$('#Wsub-detail2').removeClass('n-opecity');$('#wli2 .windows-icon').addClass("S-opecity");$('#lli2 .linux-icon').removeClass('S-opecity');}).mouseout(function(){$('#Lsub-detail2').addClass("n-opecity");$('#Wsub-detail2').removeClass('n-opecity');$('#wli2 .windows-icon').addClass("S-opecity");$('#lli2 .linux-icon').removeClass('S-opecity');});$('#lli2').mouseover(function(){$('#Wsub-detail2').addClass("n-opecity");$('#Lsub-detail2').removeClass('n-opecity');$('#lli2 .linux-icon').addClass("S-opecity");$('#wli2 .windows-icon').removeClass('S-opecity');}).mouseout(function(){$('#Wsub-detail2').removeClass("n-opecity");$('#Lsub-detail2').addClass('n-opecity');$('#lli2 .linux-icon').removeClass("S-opecity");$('#wli2 .windows-icon').addClass('S-opecity');});var pgurl=window.location.href.split('/');$('.nav > ul:first > li > a').each(function(){if(pgurl[3]!=''){if(this.href.indexOf('/'+pgurl[3])>=0)$(this).addClass("activepage");}else{if($(this).attr('href').split('/')[1]=='')$(this).addClass("activepage");}});

$('#plans a[href^="https://manage.accuwebhosting.com/cart.php"]').each( function () {
			   $(this).click(function(){
				var selopt = $(this).parent().prev().find("select option:selected").text();
					if (selopt.toLowerCase().indexOf("2 years") >= 0)
					{
						$(this).attr("href", $(this).attr("href") + '&billingcycle=biennially');
					}else if(selopt.toLowerCase().indexOf("1 year") >= 0)
					{
						$(this).attr("href", $(this).attr("href") + '&billingcycle=annually');
					}else if(selopt.toLowerCase().indexOf("6 months") >= 0)
					{
						$(this).attr("href", $(this).attr("href") + '&billingcycle=semiannually');
					}else if(selopt.toLowerCase().indexOf("3 months") >= 0)
					{
						$(this).attr("href", $(this).attr("href") + '&billingcycle=quarterly');
					}else if(selopt.toLowerCase().indexOf("1 month") >= 0)
					{
						$(this).attr("href", $(this).attr("href") + '&billingcycle=monthly');
					}
				});
            });

});

function addtocartbcycle(lnk,event)
{
	$(lnk).attr("href", $(lnk).attr("href") + '&billingcycle=' + $(lnk).parent().prev().find("select option:selected").val());
}