type t = {
  name: string,
  @as("type")
  _type: string,
  hash: string,
  uri: string,
  localUri: string,
  width: float,
  height: float,
}

@bs.send
external downloadAsync: (t, unit) => Js.Promise.t<unit> = "downloadAsync"

@module("expo-asset") @scope("Asset")
external loadAsync: array<ReactNative.Packager.required> => Js.Promise.t<unit> = "loadAsync"

@module("expo-asset") @scope("Asset")
external fromModule: ReactNative.Packager.required => t = "fromModule"
