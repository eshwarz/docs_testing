$(document).ready(function(){
	
	$('.typeahead.dropdown-menu li').live('mousedown', function(){
		var search_string = $(this).attr('data-value')
		
		$.ajax({
			type: 'POST',
			url: '/reports/document_history',
			data: { doclink_ref_num: search_string },
			cache: false
		})
	})
	
})