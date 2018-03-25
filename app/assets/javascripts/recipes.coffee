# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "turbolinks:load", ->
  $('#searchText').keyup $.debounce(500, false, ->
    sendRequest()
    return
  )

sendRequest = ->
  numberChars = $('#searchText').val().length
  if numberChars >= 3
    textValue = $('#searchText').val()

    $.post Routes.find_recipe_path(),
            textValue: textValue,
            (data) ->
              $('#autocomplete').show()
              $('#autocomplete').html(data)
  else if numberChars < 3
    $('#autocomplete').hide()
  else if numberChars == 0
    $('#autocomplete').html('')
