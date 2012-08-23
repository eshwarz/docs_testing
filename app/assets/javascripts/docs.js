$(document).ready(function(){
	
	$('#search_documents').live('keyup', function(){
		var search_string = $(this).val()
		
		$.ajax({
			type: 'POST',
			url: '/docs/search_docs',
			data: { doclink_ref_num: search_string },
			cache: false
		})
	})
	
})