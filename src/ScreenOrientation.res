module Orientation = {
  type t

  @module("expo") @scope(("ScreenOrientation", "Orientation"))
  external unknown: t = "UNKNOWN"

  @module("expo") @scope(("ScreenOrientation", "Orientation"))
  external portrait: t = "PORTRAIT"

  @module("expo") @scope(("ScreenOrientation", "Orientation"))
  external portraitUp: t = "PORTRAIT_UP"

  @module("expo") @scope(("ScreenOrientation", "Orientation"))
  external portraitDown: t = "PORTRAIT_DOWN"

  @module("expo") @scope(("ScreenOrientation", "Orientation"))
  external landscape: t = "LANDSCAPE"

  @module("expo") @scope(("ScreenOrientation", "Orientation"))
  external landscapeLeft: t = "LANDSCAPE_LEFT"

  @module("expo") @scope(("ScreenOrientation", "Orientation"))
  external landscapeRight: t = "LANDSCAPE_RIGHT"
}

module OrientationLock = {
  type t

  @module("expo") @scope(("ScreenOrientation", "OrientationLock"))
  external default: t = "DEFAULT"

  @module("expo") @scope(("ScreenOrientation", "OrientationLock"))
  external all: t = "ALL"

  @module("expo") @scope(("ScreenOrientation", "OrientationLock"))
  external portrait: t = "PORTRAIT"

  @module("expo") @scope(("ScreenOrientation", "OrientationLock"))
  external portraitUp: t = "PORTRAIT_UP"

  @module("expo") @scope(("ScreenOrientation", "OrientationLock"))
  external portraitDown: t = "PORTRAIT_DOWN"

  @module("expo") @scope(("ScreenOrientation", "OrientationLock"))
  external landscape: t = "LANDSCAPE"

  @module("expo") @scope(("ScreenOrientation", "OrientationLock"))
  external landscapeLeft: t = "LANDSCAPE_LEFT"

  @module("expo") @scope(("ScreenOrientation", "OrientationLock"))
  external landscapeRight: t = "LANDSCAPE_RIGHT"

  @module("expo") @scope(("ScreenOrientation", "OrientationLock"))
  external other: t = "OTHER"

  @module("expo") @scope(("ScreenOrientation", "OrientationLock"))
  external unknown: t = "UNKNOWN"
}

module SizeClassIOS = {
  type t

  @module("expo") @scope(("ScreenOrientation", "SizeClassIOS"))
  external regular: t = "REGULAR"

  @module("expo") @scope(("ScreenOrientation", "SizeClassIOS"))
  external compact: t = "COMPACT"

  @module("expo") @scope(("ScreenOrientation", "SizeClassIOS"))
  external unknown: t = "UNKNOWN"
}

module WebOrientationLock = {
  type t

  @module("expo") @scope(("ScreenOrientation", "WebOrientationLock"))
  external portraitPrimary: t = "PORTRAIT_PRIMARY"

  @module("expo") @scope(("ScreenOrientation", "WebOrientationLock"))
  external portraitSecondary: t = "PORTRAIT_SECONDARY"

  @module("expo") @scope(("ScreenOrientation", "WebOrientationLock"))
  external portrait: t = "PORTRAIT"

  @module("expo") @scope(("ScreenOrientation", "WebOrientationLock"))
  external landscapePrimary: t = "LANDSCAPE_PRIMARY"

  @module("expo") @scope(("ScreenOrientation", "WebOrientationLock"))
  external landscapeSecondary: t = "LANDSCAPE_SECONDARY"

  @module("expo") @scope(("ScreenOrientation", "WebOrientationLock"))
  external landscape: t = "LANDSCAPE"

  @module("expo") @scope(("ScreenOrientation", "WebOrientationLock"))
  external any: t = "ANY"

  @module("expo") @scope(("ScreenOrientation", "WebOrientationLock"))
  external unknown: t = "UNKNOWN"
}

type platformOrientationInfo = {
  screenOrientationConstantAndroid: int,
  screenOrientationArrayIOS: array<Orientation.t>,
  screenOrientationLockWebOrientation: WebOrientationLock.t,
}

type orientationInfo = {
  orientation: Orientation.t,
  verticalSizeClass: SizeClassIOS.t,
  horizontalSizeClass: SizeClassIOS.t,
}

type orientationChangeEvent = {
  orientationLock: OrientationLock.t,
  orientationInfo: orientationInfo,
}

type eventSubscription = {remove: unit => unit}

@module("expo") @scope("ScreenOrientation")
external allowAsync: OrientationLock.t => Js.Promise.t<unit> = "allowAsync"

@module("expo") @scope("ScreenOrientation")
external lockAsync: OrientationLock.t => Js.Promise.t<unit> = "lockAsync"

@module("expo") @scope("ScreenOrientation")
external lockPlatformAsync: platformOrientationInfo => Js.Promise.t<unit> = "lockPlatformAsync"

@module("expo") @scope("ScreenOrientation")
external unlockAsync: unit => Js.Promise.t<unit> = "unlockAsync"

@module("expo") @scope("ScreenOrientation")
external getOrientationLockAsync: unit => Js.Promise.t<OrientationLock.t> =
  "getOrientationLockAsync"

@module("expo") @scope("ScreenOrientation")
external getPlatformOrientationLockAsync: unit => Js.Promise.t<platformOrientationInfo> =
  "getPlatformOrientationLockAsync"

@module("expo") @scope("ScreenOrientation")
external supportsOrientationLockAsync: OrientationLock.t => Js.Promise.t<bool> =
  "supportsOrientationLockAsync"

@module("expo") @scope("ScreenOrientation")
external addOrientationChangeListener: (orientationChangeEvent => unit) => eventSubscription =
  "addOrientationChangeListener"

@module("expo") @scope("ScreenOrientation")
external removeOrientationChangeListeners: unit => unit = "removeOrientationChangeListeners"

@module("expo") @scope("ScreenOrientation")
external removeOrientationChangeListener: eventSubscription => unit =
  "removeOrientationChangeListener"
