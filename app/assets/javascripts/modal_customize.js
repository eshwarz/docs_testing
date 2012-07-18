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

	modal_box_sizer()

})

function clearModalBox() {
	$('#modal_header').html('Loading')
	$('#modal_content').html("<div class='modal-body'><p>Please Wait</p></div>")
}

function modal_box_sizer() {
	// deciding large or normal modal box
	var modal_box = $('#docsModal')
	
	$("a[data-toggle='modal']").click(function(){
		var size = $(this).attr('size')
		if (size == 'large')
			modal_box.addClass('large')
		else
			modal_box.removeClass('large')
	})
}