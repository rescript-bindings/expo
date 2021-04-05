@module("expo-firebase-analytics")
external logEvent: (string, Js.t<'extra>) => Js.Promise.t<unit> = "logEvent"

@module("expo-firebase-analytics")
external setCurrentScreen: string => Js.Promise.t<unit> = "setCurrentScreen"

@module("expo-firebase-analytics")
external setUserId: string => Js.Promise.t<unit> = "setUserId"

@module("expo-firebase-analytics")
external setDebugModeEnabled: bool => Js.Promise.t<unit> = "setDebugModeEnabled"
