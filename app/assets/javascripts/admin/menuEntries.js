$(function(){
	$(".entry-form").hide();

	$(".menu-entry").hover(setID, quitID);

	function setID(){
		$(this).attr("id", "selected-entry");

	}

	function quitID(){
		$(this).attr("id", "");
	}

	$(".menu-entry a").click(setBlink);

	function setBlink(){
		$(".menu-entry").fadeTo(1000, 125).stop();
		entry = $('#selected-entry');
		parent = entry.prev();
		setBlink(entry);
		setBlink(parent);

		function setBlink(item){
			item.fadeTo(1000, 0.25, show);

			function show(){
				$(this).fadeTo(1000, 1, hide);
			}
			function hide(){
				$(this).fadeTo(1000, 0.25, show);
			}
		}
	}
});