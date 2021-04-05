type eventSubscription = {remove: unit => unit}

type location = {
  x: int,
  y: int,
  z: int,
}

@module("expo-sensors") @scope("Gyroscope")
external addListener: (location => unit) => eventSubscription = "addListener"

@module("expo-sensors") @scope("Gyroscope")
external removeAllListeners: unit => unit = "removeAllListeners"

@module("expo-sensors") @scope("Gyroscope")
external setUpdateInterval: int => unit = "setUpdateInterval"
