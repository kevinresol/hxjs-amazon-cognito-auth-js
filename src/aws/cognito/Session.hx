package aws.cognito;

typedef Session = {
	accessToken: {jwtToken:String, payload:AccessTokenPayload},
	idToken: {jwtToken:String, payload:IdTokenPayload},
	refreshToken: {refreshToken:String},
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