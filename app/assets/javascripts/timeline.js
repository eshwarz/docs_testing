$(document).ready(function() {
	new_timeline()
	view_timelines()
	close_timeline_form()
})

function new_timeline () {
	$('#new_timeline').live('click',function(){
		var version_id = $(this).attr('version-id')
		$.ajax({
			type: 'GET',
			url: '/timelines/new',
			data: {version_id:version_id},
			cache: false
		})
	})
}

function view_timelines () {
	$('.view_timelines').live('click',function(){
		var version_id = $(this).attr('version-id')
		$.ajax({
			type: 'GET',
			url: '/timelines',
			data: {version_id:version_id},
			cache: false
		})
	})
}

function close_timeline_form() {
	$('#close_timeline_form').live('click', function(){
		$('#timeline_form').slideUp()
	})
}