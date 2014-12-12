//Hace un toggle en la lista de los items

var main = function() {
	$('i').click(function(){
		$(this).toggleClass('fa-chevron-up');	
			$('.description').toggle();
	});
};
$(document).ready(main);

