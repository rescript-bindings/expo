@module("expo-analytics-amplitude")
external initialize: string => unit = "initialize"

@module("expo-analytics-amplitude")
external setUserId: string => unit = "setUserId"

@module("expo-analytics-amplitude")
external setUserProperties: 'a => unit = "setUserProperties"

@module("expo-analytics-amplitude")
external clearUserProperties: unit => unit = "clearUserProperties"

@module("expo-analytics-amplitude")
external logEvent: string => unit = "logEvent"

@module("expo-analytics-amplitude")
external logEventWithProperties: (string, 'a) => unit = "logEventWithProperties"

@module("expo-analytics-amplitude")
external setGroup: (string, array<string>) => unit = "setGroup"
