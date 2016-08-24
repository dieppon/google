---
---

jQuery(document).ready ($) ->
	$('input').focus()
	$.get 'http://ipinfo.io', ((response) ->
		if response.country = 'GB'
			$('.country').html ' UK'
			$('form').data 'action', 'https://www.google.co.uk/search'
		else
			$('.country').html ' ' + response.country
			$('form').data 'action', 'https://www.google.com/search'
		return
	), 'jsonp'
	return