# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#handcraft_artist_name').autocomplete
    source: $('#handcraft_artist_name').data('autocomplete-source')
    minLength: 3

$ ->
  $("#handcraft_techniques_tokens").tokenInput "/techniques.json",
    crossDomain: false
    minLength: 3
    prePopulate: $("#handcraft_techniques_tokens").data("pre")

$ ->
  $("#handcraft_materials_tokens").tokenInput "/materials.json",
    crossDomain: false
    minLength: 3
    prePopulate: $("#handcraft_materials_tokens").data("pre")

$ ->
  $("#handcraft_manufacturing_techniques_tokens").tokenInput "/manufacturing_techniques.json",
    crossDomain: false
    minLength: 3
    prePopulate: $("#handcraft_manufacturing_techniques_tokens").data("pre")

$('form').on 'click', '.add_fields', (event) ->
  time = new Date().getTime()
  regexp = new RegExp($(this).data('id'), 'g')
  $(this).before($(this).data('fields').replace(regexp, time))
  event.preventDefault()

jQuery ->
  $('form').on 'click', '.remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('fieldset').hide()
    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()

jQuery ->
  $('.show').on 'click', '.thumb', (event) ->
    $('#MainImage img').attr('src', $(this).data('src'))