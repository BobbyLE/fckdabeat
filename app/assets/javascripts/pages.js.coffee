# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

_delay = 200
$ ->
  #Hover on post items
  $(".post-item").on "mouseenter", ->
    $(this).find(".post-hover-top").stop().animate
      top: "0px"
    , _delay
    $(this).find(".post-hover-bottom").stop().animate
      bottom: "0px"
    , _delay

  $(".post-item").on "mouseleave", ->
    $(this).find(".post-hover-top").stop().animate
      top: "-160px"
    , _delay
    $(this).find(".post-hover-bottom").stop().animate
      bottom: "-160px"
    , _delay
  
  #modal scrollbar
  $('.scroll-pane').jScrollPane autoReinitialise: true;
  $('.modal-body').height($(window).height()*0.7);
  
  #links on images
  $("a .hover-move").mousedown ->
    $(this).css bottom: "0px"
  $("a .hover-move").mouseup ->
    $(this).css bottom: "3px"

