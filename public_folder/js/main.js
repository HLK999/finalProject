console.log("I am connected");


var prepareLogout = function() {
    var $logOutLink = $("#logout-link");
    var $logOutSubmit = $("#logout-submit");
    $logOutLink.click(function(e) {
        e.preventDefault();
        $logOutSubmit.click();
    });
    var $deleteLink = $("#delete-link");
    var $deleteSubmit = $("#delete-submit");
    $deleteLink.click(function(e) {
        e.preventDefault();
        setTimeout(function() {
            console.log("$deleteSubmit:", $deleteSubmit);
            $deleteSubmit.click();
        }, 25);
        logOutSubmit.click();
    });
};
