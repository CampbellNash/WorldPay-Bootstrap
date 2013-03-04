ExecuteOrDelayUntilScriptLoaded(init,"sp.js");
var currentUser;

function init(){
    this.clientContext = new SP.clientContext.get_current();
    this.oWeb = clientContext.get_web();
    currentUser = this.oWeb.get_currentUser();
    this.clientContext.load(currentUser);
    this.clientContext.executeQueryAsync(Function.createDelegate(this,this.onQuerySucceeded), Function.createDelegate(this,this.onQueryFailed));
}
function onQuerySucceeded() {
    document.getElementById("currentUser").innerHTML = currentUser.get_loginName();
}
function onQueryFailed(sender, args) {
    alert('Request failed. \nError: ' + args.get_message() + '\nStackTrace: ' + args.get_stackTrace());
}