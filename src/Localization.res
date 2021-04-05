@module("expo-localization") external locale: string = "locale"

@module("expo-localization") external locales: array<string> = "locales"

@module("expo-localization")
external country: Js.Nullable.t<string> = "country"

@module("expo-localization")
external isoCurrencyCodes: Js.Nullable.t<array<string>> = "isoCurrencyCodes"

@module("expo-localization") external timezone: string = "timezone"

@module("expo-localization") external isRTL: bool = "isRTL"

type localization = {
  locale: string,
  locales: array<string>,
  timezone: string,
  isoCurrencyCodes: Js.Nullable.t<array<string>>,
  country: Js.Nullable.t<string>,
  isRTL: bool,
}

@module("expo-localization")
external getLocalizationAsync: unit => Js.Promise.t<localization> = "getLocalizationAsync"
