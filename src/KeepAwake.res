@module("expo-keep-awake")
external useKeepAwake: Js.Nullable.t<string> => unit = "useKeepAwake"

@module("expo-keep-awake")
external activateKeepAwake: Js.Nullable.t<string> => unit = "activateKeepAwake"

@module("expo-keep-awake")
external deactivateKeepAwake: Js.Nullable.t<string> => unit = "deactivateKeepAwake"
