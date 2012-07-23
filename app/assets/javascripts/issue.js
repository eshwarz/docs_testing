$(document).ready(function() {
	new_issue()
	view_issues()
	close_form()
})

function new_issue () {
	$('#new_issue').live('click',function(){
		var version_id = $(this).attr('version-id')
		$.ajax({
			type: 'GET',
			url: '/issues/new',
			data: {version_id:version_id},
			cache: false
		})
	})
}

function view_issues () {
	$('.view_issues').live('click',function(){
		var version_id = $(this).attr('version-id')
		$.ajax({
			type: 'GET',
			url: '/issues',
			data: {version_id:version_id},
			cache: false
		})
	})
}

function close_form() {
	$('#close_issue_form').live('click', function(){
		$('#issue_form').slideUp()
	})
}