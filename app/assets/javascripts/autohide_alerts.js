$(document).ready(function(){
	hide_alerts()
});
function hide_alerts() {
	$('.notice, .alert').delay(3000).fadeOut('slow');
}