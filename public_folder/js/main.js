console.log("I am connected");


var prepareLogout = function() {
    var $logOutLink = $("#logout-link");
    var $logOutSubmit = $("logout-submit");
    $logOutLink.click(function(e) {
        e.preventDefault();
        $logOutSubmit.click();
    });
};
