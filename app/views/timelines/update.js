$("#timeline_<%= @timeline.id %>").replaceWith("<%= escape_javascript( render :partial => 'timeline', :locals => { :timeline => @timeline } ) %>")
$('#timeline_form').slideUp()
$('#flashes').replaceWith("<%= escape_javascript( render :partial => 'shared/notice' ) %>")
hide_alerts()