type steps = {steps: int}
type eventSubscription = {remove: unit => unit}

@module("expo-sensors") @scope("Pedometer")
external isAvailableAsync: unit => Js.Promise.t<bool> = "isAvailableAsync"

@module("expo-sensors") @scope("Pedometer")
external getStepCountAsync: (Js.Date.t, Js.Date.t) => Js.Promise.t<steps> = "getStepCountAsync"

@module("expo-sensors") @scope("Pedometer")
external watchStepCount: (steps => unit) => eventSubscription = "watchStepCount"
