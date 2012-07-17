$(document).ready(function() {
	new_version()
})

function new_version () {
	$('#new_version').click(function(){
		var docs_id = $(this).attr('doc-id')
		$.ajax({
			type: 'GET',
			url: '/versions/new',
			data: {docs_id:docs_id},
			cache: false
		})
	})
}