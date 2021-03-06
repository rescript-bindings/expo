@module("expo-av") @scope("Audio")
external setIsEnabledAsync: bool => Js.Promise.t<unit> = "setIsEnabledAsync"

module InterruptionMode = {
  module IOS = {
    type t

    @module("expo-av") @scope("Audio")
    external mixWithOthers: t = "INTERRUPTION_MODE_IOS_MIX_WITH_OTHERS"

    @module("expo-av") @scope("Audio")
    external doNotMix: t = "INTERRUPTION_MODE_IOS_DO_NOT_MIX"

    @module("expo-av") @scope("Audio")
    external duckOthers: t = "INTERRUPTION_MODE_IOS_DUCK_OTHERS"
  }

  module Android = {
    type t

    @module("expo-av") @scope("Audio")
    external doNotMix: t = "INTERRUPTION_MODE_ANDROID_DO_NOT_MIX"

    @module("expo-av") @scope("Audio")
    external duckOthers: t = "INTERRUPTION_MODE_ANDROID_DUCK_OTHERS"
  }
}

type audioMode = {
  playsInSilentModeIOS: bool,
  allowsRecordingIOS: bool,
  interruptionModeIOS: InterruptionMode.IOS.t,
  shouldDuckAndroid: bool,
  interruptionModeAndroid: InterruptionMode.Android.t,
  playThroughEarpieceAndroid: bool,
}

@module("expo-av") @scope("Audio")
external setAudioModeAsync: audioMode => Js.Promise.t<unit> = "setAudioModeAsync"

module Source = {
  type t = [
    | #URI(string)
    | #Required(ReactNative.Packager.required)
    | #Asset(Asset.t)
    | #NullSource
  ]

  type rawSourceJS
  external rawSourceJS: 'a => rawSourceJS = "%identity"

  let encodeSource = (src: t) =>
    switch src {
    | #URI(uri) => rawSourceJS({"uri": uri})
    | #Required(package) => rawSourceJS(package)
    | #Asset(asset) => rawSourceJS(asset)
    | #NullSource => rawSourceJS(Js.null)
    }
}

module Sound = {
  // TODO: need type
  type t

  @new @module("expo-av") @scope("Audio")
  external make: unit => t = "Sound"

  @module("expo-av") @scope(("Audio", "Sound"))
  external _createAsync: (Source.rawSourceJS, 'a, 'a => unit, bool) => Js.Promise.t<t> =
    "createAsync"

  let createAsync = (source, initialStatus, onPlaybackStatusUpdate, downloadFirst) =>
    _createAsync(Source.encodeSource(source), initialStatus, onPlaybackStatusUpdate, downloadFirst)
}

module Recording = {
  type status = {
    canRecord: bool,
    isDoneRecording: bool,
    durationMillis: int,
  }

  // TODO: need type
  type t

  @new @module("expo-av") @scope("Audio")
  external make: unit => t = "Recording"
}
