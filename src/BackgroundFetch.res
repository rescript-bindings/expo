module Status = {
  type t

  @module("expo-background-fetch") @scope("Status")
  external restricted: t = "Restricted"

  @module("expo-background-fetch") @scope("Status")
  external denied: t = "Denied"

  @module("expo-background-fetch") @scope("Status")
  external available: t = "Available"
}

module Result = {
  type t

  @module("expo-background-fetch") @scope("Result")
  external noData: t = "NoData"

  @module("expo-background-fetch") @scope("Result")
  external newData: t = "NewData"

  @module("expo-background-fetch") @scope("Result")
  external failed: t = "Failed"
}

@module("expo-background-fetch")
external getStatusAsync: unit => Js.Promise.t<Status.t> = "getStatusAsync"

@module("expo-background-fetch")
external registerTaskAsync: string => Js.Promise.t<unit> = "registerTaskAsync"

@module("expo-background-fetch")
external unregisterTaskAsync: string => Js.Promise.t<unit> = "unregisterTaskAsync"

@module("expo-background-fetch")
external setMinimumIntervalAsync: float => Js.Promise.t<unit> = "setMinimumIntervalAsync"
