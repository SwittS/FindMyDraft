// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui/datepicker
//= require materialize-sprockets
//= require materialize/extras/nouislider
//= require masonry/jquery.masonry
//= require gmaps/google
//= require underscore
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function() {
 console.log('(document).turbolinks:load');
 $(".button-collapse").sideNav();
 $(".dropdown-button").dropdown();
 $('select').material_select();
 $('.slider').slider({full_width: true});
 Waves.displayEffect();

 Materialize.updateTextFields();
 $('.datepicker').pickadate({
   selectMonths: true,
   selectYears: 3,
   min: true,
   format: 'mm-dd-yyyy'
 });

 $("#venueView").imagesLoaded(function(){
   $('#venueView').masonry({
     itemSelector: '#box',
     columnWidth: 30,
     gutterWidth: 30,
     isAnimated:true,
     animationOptions: {
         duration: 700,
         easing:'linear',
         queue :false
    }
   });
 });
});
