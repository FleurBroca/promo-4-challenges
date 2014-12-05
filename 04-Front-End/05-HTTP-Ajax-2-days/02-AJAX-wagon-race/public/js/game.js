$(document).ready(function(){



  //On crée la piste de course
  var trackSize = 20;
  generateTrack(trackSize);

  //On lance le jeu
  runGame();

});


function generateTrack(trackSize){
  // On crée les tds de la piste
  for (var i = 0; i < trackSize - 1; i++){
    $("#track-1").append("<td></td>");
    $("#track-2").append("<td></td>");
  }
  // On ajoute la finish line
  $("#track-1").append("<td class='finish-line'></td>");
  $("#track-2").append("<td class='finish-line'></td>");
}


function runGame(){
  //Quand un jouer tape sur une touche clavier..
  $(document).on("keyup", function(event){

    //..On fait avancer les wagons en fonction de la touche
    if (event.keyCode == 65){
      // on fait avancer wagon 1 si la touche "A" a été entrée
      $("#track-1 .here").removeClass("here").next().addClass("here");
    }
    if (event.keyCode == 80){
      // on fait avancer wagon 2 si la touche "P" a été entrée
      $("#track-2 .here").removeClass("here").next().addClass("here");
    }

    // on check si le joueur arrive sur la finish line
    if ($("#track-1 .here").hasClass("finish-line")){
      $(".here").removeClass("here");
      $("#game-box .player-1").fadeIn(1000);
    }

    if ($("#track-2 .here").hasClass("finish-line")){
      $(".here").removeClass("here");
      $("#game-box .player-2").fadeIn(1000);
    }
  })
}


var sessionId;
$.get( "http://localhost:4567/session/create", function( data ) {
  console.log("Page chargée !");
  console.log(data);
  sessionId = data.id;
});



$.post( "http://localhost:4567/session/" + session_id + "/create", function( data )
   {"players": [
      { "name": "name_player1" },
      { "name": "name_player2" }
    ]
});

// $(document).ready(function(){

//   // On crée la piste de course dynamiquement (création des td à la volée plutot que d'écrire
//     //chaque td à la main dans le html)

//   var trackSize = 25;
//   for (var i = 1; i < trackSize; i++) {
//     $("#track-1").append("<td></td>");
//     $("#track-2").append("<td></td>");
//   };

//   $("#track-1").append("<td class='finish-line'></td>");
//   $("#track-2").append("<td class='finish-line'></td>");

//   // Quand un joueur tape sur une touche du clavier: quand sur le document,il se passe un keyup,
//   //on enclenche un événement...
//   $(document).on("keyup", function(event)){
//     // on fait avancer le wagon d'un td en fonction de sa touche
//     if (event.keyCode == 65) {
//       // supprimer la classe here du td où elle se trouve et l'ajouter dans le td suivant
//       // et non supprimer ce qu'il y a à l'intérieur de la classe, ce qui modifierait sa taille
//       $("track-1 .here").removeClass("here").next().addClass("here")
//     }
//     if (event.keyCode == 80) {
//       $("track-2 .here").removeClass("here").next().addClass("here")
//     }

//       // au 1er qui arrive à la fin
//         // on affiche un message de félicitations
//           // on peut le coder en disant que quand l'un arrive au 25ème td, il a gagné. Ou quand il n'y a plus de class here.
//           // ou si on crée un finish line avec un background différent, on peut dire "quand l'un des joueurs atteint cette case"
//           // il faut alors ajouter une class "finish line" dans le code .js à la fin de chaque track
//           // Si la class here et la class finish line ont la même class
//     if ($("track-1 .here").hasClass("finish-line")){
//       //alert("player-1 has won!") //autre méthode moins propre, qui ne permet pas de créer un bouton restart
//       $(".here").removeClass("here") //permet de supprimer les wagons et d'éviter que les joueurs continuent de cliquer,
//       // ce qui continuerait d'afficher les boutons gagnants
//       //$("#game-box").append("<p>Player 1 has won!</p>") => éviter de mettre du html dans le js car ne permet pas de le designer ou le traduire.
//         //écrire le texte dns le html, dans une div et la cacher a priori en faisant dans le css display = none
//       //$("#game-box").append("<a href='/' class='btn btn-danger'>Restart</a>")
//       $("#game-box .player-1").slideDown(1000);

//     }
//     if ($("track-2 .here").hasClass("finish-line")){
//       //alert("player-2 has won!")
//       $(".here").removeClass("here")
//       // $("#game-box").append("<p>Player 2 has won!</p>")
//       // $("#game-box").append("<a href='/' class='btn btn-danger'>Restart</a>")
//       $("#game-box .player-2").slideDown(1000);
//     }
//       // on  propose aux joueurs de redémarrer
//         // quand on rafraîchit la page, le code comprend "document ready" et reload la page, du coup les wagons reviennent au début.
//         // ou créer un bouton restart dans la page
//     }
// });