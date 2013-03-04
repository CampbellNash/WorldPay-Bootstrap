(function ($) {



    $(document).ready(function () {
        // Ensure that the SP.UserProfiles.js file is loaded before the custom code runs.
        //SP.SOD.executeOrDelayUntilScriptLoaded(loadUserData, 'sp.userprofiles.js');
        SP.SOD.executeFunc('sp.userprofiles.js', 'SP.ClientContext', loadUserData);

    });



    var userProfileProperty;

    function loadUserData() {

        //Get Current Context	
        var clientContext = new SP.ClientContext.get_current();
        this.oWeb = clientContext.get_web();
        currentUser = this.oWeb.get_currentUser();
        this.clientContext.load(currentUser);

        //Get Instance of People Manager Class
        var peopleManager = new SP.UserProfiles.PeopleManager(clientContext);

        //Property to fetch from the User Profile
        var propertyName = "PreferredName";
        var firstName = "FirstName";

        //Domain\Username of the user (If you are on SharePoint Online) 
        var targetUser = currentUser;

        //Lets make it dynamic
        //this.oWeb = clientContext.get_web();
        //var targetUser = this.oWeb.get_currentUser();
       

        //Create new instance of UserProfileProperty
        userProfileProperty = peopleManager.getUserProfilePropertyFor(targetUser, propertyName)

        //Execute the Query. (No load method necessary)
        clientContext.executeQueryAsync(onSuccess, onFail);

    }

    function onSuccess() {

        document.getElementById("currentUser").innerHTML = userProfileProperty.get_value();
        var messageText = "\"Preferred Name\" property is " + userProfileProperty.get_value();

        alert(messageText);
        

    }

    function onFail(sender, args) {
        alert("Error: " + args.get_message());
    }

})(jQuery);