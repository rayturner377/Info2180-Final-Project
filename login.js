$(document).ready(function() {
  console.log("The submit");
    var loginButton = $("#login100-form-btn");
    var result = $("#result");
    var css = $("#css");
    var js = $("#js");

    loginButton.on("click", function(element) {
      console.log("The submit");
        element.preventDefault();
        console.log("The submit");

        $.ajax({
            method: 'POST',
            url: "login.php",
            data: { uname: $("#username").val(), pass: $("#password").val() }
        }).done(function(response) {
            $(result).html(response);
        }).fail(function() {
            $(result).html("There was a problem with the request.");
        });
    });
});
