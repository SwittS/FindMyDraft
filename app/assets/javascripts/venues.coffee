# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#venueView').imagesLoaded ->
    $('#venueView').masonry
      itemSelector: '#box'
      columnWidth: 30
      gutterWidth: 30
