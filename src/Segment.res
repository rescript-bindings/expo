type initializeOptions
@obj
external initializeOptions: (~androidWriteKey: string, ~iosWriteKey: string) => initializeOptions =
  ""

@module("expo-analytics-segment")
external initialize: initializeOptions => unit = "initialize"

@module("expo-analytics-segment")
external identify: string => unit = "identify"

@module("expo-analytics-segment")
external identifyWithTraits: (string, 'traitsType) => unit = "identifyWithTraits"

@module("expo-analytics-segment") external reset: unit => unit = "reset"

@module("expo-analytics-segment") external track: string => unit = "track"

@module("expo-analytics-segment")
external trackWithProperties: (string, 'propertiesType) => unit = "trackWithProperties"

@module("expo-analytics-segment")
external screen: string => unit = "screen"

@module("expo-analytics-segment")
external screenWithProperties: (string, 'propertiesType) => unit = "screenWithProperties"

@module("expo-analytics-segment") external flush: unit => unit = "flush"
