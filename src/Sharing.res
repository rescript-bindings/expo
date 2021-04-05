type shareAsyncOptions = {
  mimeType: string,
  dialogTitle: string,
  @as("UTI")
  uti: string,
}

@module("expo-sharing")
external shareAsync: (string, shareAsyncOptions) => Js.Promise.t<unit> = "shareAsync"
