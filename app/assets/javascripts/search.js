$('#accordion').ready(function(){
	$('#accordion h3').click(function(){
		$(this).next().stop().toggle(500);
	});
});