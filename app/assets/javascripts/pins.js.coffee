# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$("#pins").nested({
  selector: ".box"
  minWidth: 25,
  gutter: 1,
  animate: true,
  animationOptions: {
    speed: 10,
    duration: 20,
  }
});
