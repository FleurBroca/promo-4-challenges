/*
  *
  * TODO: add your code here!
  *
*/

$(function() {
$('#message').slideDown(500, function(e) {
  $(this).on('click', function() {
    $(this).slideUp(500);
    });
  });
  $(function() {
  $('#message-wrapper').mouseenter(function(e) {
    $('#message').slideDown(500)
  });
    $('#message').mouseleave(function() {
        $(this).slideUp(500)
      ;}
  });
  });
});

// $("tr").mouseover(function(){ $(".neparan", this).show(); });
// $(".neparan").mouseleave(function(){ $(this).hide(); });

