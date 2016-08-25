---
---

jQuery(document).ready ($) ->
	$('input').focus()
	$.get 'http://ipinfo.io', ((response) ->

		if response.country = 'GB'
			$('.country').html ' UK'
			$('form').attr 'action', 'https://www.google.co.uk/search'
		
		else if response.country = 'FR'
			$('.country').html ' France'
			$('form').attr 'action', 'https://www.google.fr/search'
			$('label').html 'Tapez et appuyez sur la touche ENTRER pour rechercher'

		else if response.country = 'ES'
			$('.country').html ' España'
			$('form').attr 'action', 'https://www.google.es/search'
			$('label').html 'Escribe and presiona intro para buscar'

		else if response.country = 'DE'
			$('.country').html ' Deutschland'
			$('form').attr 'action', 'https://www.google.de/search'
			$('label').html 'Geben Sie und drücken Sie die ENTER-Taste zur Suche'

		else if response.country = 'IT'
			$('.country').html ' Italia'
			$('form').attr 'action', 'https://www.google.it/search'
			$('label').html 'Tipo e premere il tasto INVIO per la ricerca'

		else if response.country = 'PT'
			$('.country').html ' Portugal'
			$('form').attr 'action', 'https://www.google.pt/search'
			$('label').html 'Escreva e pressione a tecla ENTER para pesquisa'

		else if response.country = 'US'

		else
			$('.country').html ' ' + response.country
			$('form').attr 'action', 'https://www.google.com/search'

		return
	), 'jsonp'
	return