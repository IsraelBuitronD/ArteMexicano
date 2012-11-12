// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require tinymce-jquery
//= require bootstrap/bootstrap.min
//= require token-input/jquery.tokeninput
//= require_tree .

$(function(){
  $('textarea.tinymce').tinymce({
  	"mode":"specific_textareas",
  	"editor_selector":"tinymce",
  	"theme":"advanced",
  	"theme_advanced_toolbar_location":"top",
  	"theme_advanced_toolbar_align":"left",
  	"theme_advanced_statusbar_location":"bottom",
  	"theme_advanced_buttons3_add":"tablecontrols,fullscreen",
  	"plugins":"table,fullscreen",
  	"language":"en"
  });
  $("[data-autocomplete-source]").each(function(){
  	var $this = $(this), data = $this.data();
  	$this.tokenInput(data.autocompleteSource, {tokenLimit: data.autocompleteLimit || false});
  });
})