type options
external options: (~_type: string, ~copyToCacheDirectory: bool) => options = ""

type result = {
  @as("type")
  _type: string,
  uri: option<string>,
  name: option<string>,
  size: option<int>,
}

@module("expo-document-picker")
external getDocumentAsync: options => Js.Promise.t<result> = "getDocumentAsync"
