$(document).ready(function(){
  $('.issue_list').mouseenter(function() {
    $(this).animate({paddingTop:'+=10', paddingBottom:'+=10', fontSize: '+=0.5em'},50)
  });
  $('.issue_list').mouseleave(function() {
    $(this).animate({paddingTop:'-=10', paddingBottom:'-=10', fontSize: '-=0.5em'},50)
  });
});
