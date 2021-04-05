type logInConfig
@obj
external logInConfig: (
  ~iosClientId: string=?,
  ~androidClientId: string=?,
  ~iosStandaloneAppClientId: string=?,
  ~androidStandaloneAppClientId: string=?,
  ~clientId: string=?,
  ~language: string=?,
  ~loginHint: string=?,
  ~scopes: array<string>=?,
  ~redirectUrl: string=?,
) => logInConfig = ""

type rec logInResult = {
  @as("type")
  _type: string,
  accessToken: string,
  idToken: string,
  refreshToken: string,
  user: googleUser,
}
and googleUser = {
  id: string,
  name: string,
  givenName: string,
  familyName: string,
  photoUrl: string,
  email: string,
}

@module("expo-google-app-auth")
external logInAsync: logInConfig => Js.Promise.t<logInResult> = "logInAsync"

@module("expo-google-app-auth")
external logOutAsync: logInConfig => Js.Promise.t<unit> = "logOutAsync"
