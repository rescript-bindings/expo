module NativeAdsManager = {
  // TODO: Need type
  type t

  @new @module("expo-ads-facebook")
  external make: (string, int) => t = "NativeAdsManager"
}

module InterstitialAdManager = {
  @module("expo-ads-facebook") @scope("InterstitialAdManager")
  external showAd: string => Js.Promise.t<unit> = "showAd"
}

module AdSettings = {
  @module("expo-ads-facebook") @scope("AdSettings")
  external currentDeviceHash: string = "currentDeviceHash"

  @module("expo-ads-facebook") @scope("AdSettings")
  external addTestDevice: string => unit = "addTestDevice"

  @module("expo-ads-facebook") @scope("AdSettings")
  external clearTestDevices: unit => unit = "clearTestDevices"

  @module("expo-ads-facebook") @scope("AdSettings")
  external setLogLevel: string => unit = "setLogLevel"

  @module("expo-ads-facebook") @scope("AdSettings")
  external setIsChildDirected: bool => unit = "setIsChildDirected"

  @module("expo-ads-facebook") @scope("AdSettings")
  external setMediationService: string => unit = "setMediationService"

  @module("expo-ads-facebook") @scope("AdSettings")
  external setUrlPrefix: string => unit = "setUrlPrefix"
}

@module("expo-ads-facebook")
external withNativeAd: React.element => React.element = "withNativeAd"

module AdMediaView = {
  @module("expo-ads-facebook") @react.component
  external make: (~children: React.element=?, ~key: string=?) => React.element = "AdMediaView"
}

module AdIconView = {
  @module("expo-ads-facebook") @react.component
  external make: (~children: React.element=?, ~key: string=?) => React.element = "AdIconView"
}

module AdTriggerView = {
  @module("expo-ads-facebook") @react.component
  external make: (
    ~renderInteractiveComponent: 'a => React.element=?,
    ~onPress: unit => unit=?,
    ~children: React.element=?,
    ~key: string=?,
  ) => React.element = "AdTriggerView"
}

module BannerAd = {
  @module("expo-ads-facebook") @react.component
  external make: (
    ~placementId: string,
    ~type_: string,
    ~onPress: unit => unit=?,
    ~onError: Js.Exn.t => unit=?,
    ~style: ReactNative.Style.t=?,
    ~children: React.element=?,
  ) => React.element = "BannerAd"
}
