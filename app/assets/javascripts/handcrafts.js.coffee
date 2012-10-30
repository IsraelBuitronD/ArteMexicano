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
    prePopulate: $("#handcraft_techniques_tokens").data("pre")

$ ->
  $("#handcraft_materials_tokens").tokenInput "/materials.json",
    crossDomain: false
    prePopulate: $("#handcraft_materials_tokens").data("pre")

$ ->
  $("#handcraft_manufacturing_techniques_tokens").tokenInput "/manufacturing_techniques.json",
    crossDomain: false
    prePopulate: $("#handcraft_manufacturing_techniques_tokens").data("pre")
