$('#accordion').ready(function(){
	var viewed = new Array();
	$('#accordion form').click(function(){
		formID = $(this).attr("counter");
		if (viewed[formID] == null){
			$(this).submit();
			viewed[formID] = true;
		}
		$(this).next().stop().toggle(500);
	});
});