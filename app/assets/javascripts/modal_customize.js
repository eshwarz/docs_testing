$(document).ready(function() {

	$('.modal a, button.close').live('click',function(){
		var val = $(this).attr('data-dismiss')
		if (val == 'modal') {
			clearModalBox()
		}
	})

	$('.modal-backdrop').live('click',function(){
		clearModalBox()
	})

	
})

function clearModalBox() {
	$('#modal_header').html('Loading')
	$('#modal_content').html("<div class='modal-body'><p>Please Wait</p></div>")
}