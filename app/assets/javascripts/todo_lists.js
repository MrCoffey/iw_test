var main = function() {
	$('.list-group-item').click(function(){
		$('.description').toggle();
	});
};
$(document).ready(main);
