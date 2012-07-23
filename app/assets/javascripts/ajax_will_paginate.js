$(document).ready(function(){
	ajax_paginate()
})

function ajax_paginate() {
	$(".pagination[remote='true'] ul li a").each(function(){
		$(this).attr('data-remote', 'true')
	})
}