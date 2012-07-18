$(document).ready(function() {
	new_request()
})

function new_request () {
	$('#new_request').click(function(){
		var docs_id = $(this).attr('doc-id')
		$.ajax({
			type: 'GET',
			url: '/requests/new',
			data: {docs_id:docs_id},
			cache: false
		})
	})
}