console.log("I am connected");

var prepareLogout = function() {
    var logOutLink = document.getElementById("logout-link");
    var logOutSubmit = document.getElementById("logout-submit");
    logOutLink.addEventListener("click", function(e) {
        e.preventDefault();
        logOutSubmit.click();
    });
};
