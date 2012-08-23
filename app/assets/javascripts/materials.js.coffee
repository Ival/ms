# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
	$(".table .icon").click ->
		$(this).toggleClass("icon-tags")
		$(this).closest("tr").next().toggleClass("hide")
		# if $(this).hasclass("icon-tag") 
		# 	$(this).removeClass('icon-tag').addClass("icon-tags")
		# 	$(this).closest("tr").next().removeClass("hide")
		# else 
		# 	$(this).removeClass('icon-tags').addClass("icon-tag")
		# 	$(this).closest("tr").next().addClass("hide")
	$('form').on 'click', '.remove_fields', (event) ->
    $(this).closest('.field').remove()
    event.preventDefault()
    
  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()
  $('remove-condition').popover()
