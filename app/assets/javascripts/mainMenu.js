$(function(){
	$(".hiddenMenu").hide();
	$("#mainMenu li").hover(toggleMain, toggleMain);

	function toggleMain(){
		$(this).find("div").stop().slideToggle();
		$(this).find("strong a").toggleClass("hovered");		
	}
});