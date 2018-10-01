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

typedef Session = {
	accessToken: {jwtToken:String, payload:AccessTokenPayload},
	idToken: {jwtToken:String, payload:IdTokenPayload},
	refresToken: {refresToken:String},
	state:String,
	tokenScopes: {tokenScopes:Array<String>},
}

typedef AccessTokenPayload = {
	auth_time:Int,
	exp:Int,
	iat:Int,
	// "cognito:groups":Array<String>,
	client_id:String,
	iss:String,
	jti:String,
	scope:String,
	sub:String,
	token_use:String,
	username:String,
	version:Int,
}

typedef IdTokenPayload = {
	auth_time:Int,
	exp:Int,
	iat:Int,
	updated_at:Int,
	email_verified:Bool,
	identities:Array<{
		dateCreated:String,
		issuer:String,
		primary:String,
		providerName:String,
		providerType:String,
		userId:String,
	}>,
	// "cognito:groups": String
	// "cognito:username": String
	at_hash:String,
	aud:String,
	email:String,
	iss:String,
	name:String,
	picture:String,
	profile:String,
	sub:String,
	token_use:String,
	website:String,
}