---
---

jQuery(document).ready ($) ->
	$('input').focus()
	$.get 'http://ipinfo.io', ((response) ->
		$('.country').html ' ' + response.country
		return
	), 'jsonp'
	return