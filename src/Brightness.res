@module("expo-brightness")
external setBrightness: float => unit = "setBrightness"

@module("expo-brightness")
external getBrightnessAsync: unit => Js.Promise.t<float> = "getBrightnessAsync"

@module("expo-brightness")
external setSystemBrightnessAsync: float => unit = "setSystemBrightnessAsync"

@module("expo-brightness")
external getSystemBrightnessAsync: unit => Js.Promise.t<float> = "getSystemBrightnessAsync"
