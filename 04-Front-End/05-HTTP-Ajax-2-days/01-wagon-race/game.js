$(function() {
 $(document).on('keyup', function(e) {
   if(e.keyCode == 80) {
     $('#player1_race td.active').removeClass().next().addClass('active');
   };
   if(e.keyCode == 81) {
     $('#player2_race td.active').removeClass().next().addClass('active');
   };
   });
});
