type result = {
  @as("type")
  _type: string,
  token: option<string>,
  expires: option<string>,
}

type options
@obj
external options: (~permissions: array<string>, ~behavior: string) => options = ""

@module("expo-facebook")
external logInWithReadPermissionsAsync: (string, options) => Js.Promise.t<result> =
  "logInWithReadPermissionsAsync"
