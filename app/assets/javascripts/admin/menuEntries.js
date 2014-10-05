$(function(){
	$(".menu-entry").hover(setID, quitID);

	function setID(){
		$(this).attr("id", "selected-entry");

	}

	function quitID(){
		$(this).attr("id", "");
	}
});