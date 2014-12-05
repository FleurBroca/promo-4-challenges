
var accessToken = "CAACEdEose0cBAC0aHwv6AOyoUvqyx2Ibhke8NqTtPnHajDwuUYwCVTFI2fgZAmhs2RQfeeZCmb6WUF5WZB317w5MhSZB0fdxKfZCQDxqdpXZAc26xLDUf8YxF3CZCEXtSvIpyjC4UR7bmLs6FN51ElaTaT5NYAwv07QgzbBDEi9swodshjDLUkWhSADyAVT7Nq3NudRZBLljZBphNyvpFAcIx368RmPJFia0ZD";


$(function() {

  //listen click from button
  $("#btn-info-from-facebook").on("click", function(e) {
    e.preventDefault();

    //get data from facebook
    $.get("https://graph.facebook.com/me?fields=id,name,birthday",
      { access_token: accessToken },
      function(data) {
        var name = data.name;
        // var last_name = data.last_name;
        var birthday = data.birthday;
        var id = data.id;
        var picture = "http://graph.facebook.com/" + id + "/picture?type=large";

        $("#my_name").val(name);
        $("#my_birth_date").val(birthday);
        //"http://graph.facebook.com/'" picture "'/picture?type=large"
        $("#my-picture").append("<img src='" + picture + "' />");
      });

  });

});

// first_name + " " + last_name
















// var accessToken = "CAACEdEose0cBACjMCfuWbWrhb69TqyaTwGoAXSEPZBKZC0YFyuRZAhcuffARZCLHjKgKFDYq2TRDV7OmxdkIFghhoZAThOSTw8Bf6szg7PlXxvSZBSyiMZBjvYZAguTO06dwz6jjDACMtsMRUGpUZCoaFZCpP3JFF6SNuDuvqvjDnWtH7ZBa12ZBA5sKLJ0R0Sgn6ejw48xtXrybexlLYKHE2jgC";



// function myInfoFromFacebook() {
//   return $.get("https://graph.facebook.com/me",
//     {
//       access_token:  accessToken
//     }
//   );
// }


// $(function() {
//   $("#test").on("click", function() {
//     $.get("https://graph.facebook.com/me",
//     {
//       access_token:  accessToken
//     }, function(result) {
//       $("#infos").text(result.first_name);
//     });
//   });

// });


