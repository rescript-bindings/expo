module AdMobBanner = {
  @module("expo-ads-admob") @react.component
  external make: (
    ~bannerSize: [
      | #banner
      | #largeBanner
      | #mediumRectangle
      | #fullBanner
      | #leaderboard
      | #smartBannerPortrait
      | #smartBannerLandscape
    ]=?,
    ~onAdViewDidReceiveAd: unit => unit=?,
    ~onDidFailToReceiveAdWithError: string => unit=?,
    ~onAdViewWillPresentScreen: unit => unit=?,
    ~onAdViewWillDismissScreen: unit => unit=?,
    ~onAdViewDidDismissScreen: unit => unit=?,
    ~onAdViewWillLeaveApplication: unit => unit=?,
    ~children: React.element=?,
  ) => React.element = "AdMobBanner"
}

module AdMobInterstitial = {
  @module("expo-ads-admob") @scope("AdMobInterstitial")
  external setAdUnitID: string => unit = "setAdUnitID"
  @module("expo-ads-admob") @scope("AdMobInterstitial")
  external setTestDeviceID: string => unit = "setTestDeviceID"
  @module("expo-ads-admob") @scope("AdMobInterstitial")
  external requestAdAsync: unit => Js.Promise.t<unit> = "requestAdAsync"
  @module("expo-ads-admob") @scope("AdMobInterstitial")
  external showAdAsync: unit => Js.Promise.t<unit> = "showAdAsync"
  @module("expo-ads-admob") @scope("AdMobInterstitial")
  external getIsReadyAsync: unit => Js.Promise.t<bool> = "getIsReadyAsync"
}

module AdMobRewarded = {
  @module("expo-ads-admob") @scope("AdMobRewarded")
  external setAdUnitID: string => unit = "setAdUnitID"
  @module("expo-ads-admob") @scope("AdMobRewarded")
  external setTestDeviceID: string => unit = "setTestDeviceID"
  @module("expo-ads-admob") @scope("AdMobRewarded")
  external requestAdAsync: unit => Js.Promise.t<unit> = "requestAdAsync"
  @module("expo-ads-admob") @scope("AdMobRewarded")
  external showAdAsync: unit => Js.Promise.t<unit> = "showAdAsync"
}
