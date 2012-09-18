$(document).ready(function() {
	// new_version()
	timeline_caller()
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


function timeline_caller() {
	$('#version_group_num').change(function(){
		value = $(this).attr('value')
		if (value == "Special") {
			$('.special_timelines').removeClass('hide')
			$('.normal_timelines').addClass('hide')
		}
		else {
			$('.special_timelines').addClass('hide')
			$('.normal_timelines').removeClass('hide')
			$.ajax({
				type: 'GET',
				url: '/get_timelines',
				data: {group_num:value},
				cache: false
			})
		}
	})
}