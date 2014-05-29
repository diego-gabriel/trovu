$(function(){
	$(".hiddenMenu div").hide();
	$("#mainMenu a").hover(toggleMain, toggleMain);

	function toggleMain(){
		$(".hiddenMenu div").slideToggle();		
	}
});