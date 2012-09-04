$(document).ready(function(){
	
	$('#search_document_versions').keyup(function(){
		$('.typeahead.dropdown-menu').attr('query', 'document_history')
	})
	$('#search_document_hierarchy').keyup(function(){
		$('.typeahead.dropdown-menu').attr('query', 'document_hierarchy')
	})
	
	$('.typeahead.dropdown-menu li').live('mousedown', function(){
		var search_string = $(this).attr('data-value')
		var query = $(this).closest('.typeahead').attr('query')

		// custom js for document history
		if (query == 'document_history') {
			$.ajax({
				type: 'POST',
				url: '/reports/document_history',
				data: { doclink_ref_num: search_string },
				cache: false
			})
		}

		// custom js for document hierarchy
		else if (query == 'document_hierarchy') {
			$.ajax({
				type: 'POST',
				url: '/reports/document_hierarchy',
				data: { parent: search_string },
				cache: false
			})
		}
		
	})

})