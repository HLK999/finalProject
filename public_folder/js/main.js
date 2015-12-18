// If someone clicks the 'Log Out' link, this function stops the link from going where it would normally go, instead making the secret 'log out' html form get clicked.  Same for the 'Delete Profile' link as well as the secret 'delete profile' html form.
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
            document.addEventListener("DOMContentLoaded", prepareLogout);
            $deleteSubmit.click();
        }, 25);
        document.removeEventListener("DOMContentLoaded", prepareLogout);
        $logOutSubmit.click();
    });
};
