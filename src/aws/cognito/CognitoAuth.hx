package aws.cognito;

#if nodejs
@:jsRequire('amazon-cognito-auth-js', 'CognitoAuth')
#else
@:native('AmazonCognitoIdentity.CognitoAuth')
#end
extern class CognitoAuth {
	var userhandler:{
		onSuccess:Session->Void,
		onFailure:js.Error->Void,
	}
	function new(config:{});
	function setState(v:String):Void;
	function getSession():Void;
	function useCodeGrantFlow():Void;
	function parseCognitoWebResponse(href:String):Void;
	function getSignInUserSession():Session;
	function signOut():Void;
	function isUserSignedIn():Bool;
}
