$(document).ready(function() {
	new_mapping()
})

function new_mapping () {
	$('#new_mapping').click(function(){
		var docs_id = $(this).attr('doc-id')
		$.ajax({
			type: 'GET',
			url: '/mappings/new',
			data: {docs_id:docs_id},
			cache: false
		})
	})
}