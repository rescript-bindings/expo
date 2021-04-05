type eventSubscription = {remove: unit => unit}

@module("expo-location")
external hasServicesEnabledAsync: unit => Js.Promise.t<bool> = "hasServicesEnabledAsync"

type requestPermissionResult = {status: [#granted | #denied | #undetermined]}

@module("expo-location")
external requestPermissionsAsync: unit => Js.Promise.t<requestPermissionResult> =
  "requestPermissionsAsync"

module Accuracy = {
  type t

  @module("expo-location") @scope("Accuracy")
  external lowest: t = "Lowest"
  @module("expo-location") @scope("Accuracy") external low: t = "Low"
  @module("expo-location") @scope("Accuracy")
  external balanced: t = "Balanced"
  @module("expo-location") @scope("Accuracy")
  external high: t = "High"
  @module("expo-location") @scope("Accuracy")
  external highest: t = "Highest"
  @module("expo-location") @scope("Accuracy")
  external bestForNavigation: t = "BestForNavigation"
}

module GeofencingEventType = {
  type t

  @module("expo-location") @scope("GeofencingEventType")
  external enter: t = "Enter"
  @module("expo-location") @scope("GeofencingEventType")
  external exit: t = "Exit"
}

module GeofencingRegionState = {
  type t

  @module("expo-location") @scope("GeofencingRegionState")
  external inside: t = "Inside"
  @module("expo-location") @scope("GeofencingRegionState")
  external outside: t = "Outside"
}

type region = {
  identifier: string,
  latitude: float,
  longitude: float,
  radius: float,
  state: GeofencingRegionState.t,
}

type coords = {
  latitude: float,
  longitude: float,
  altitude: float,
  accuracy: float,
  altitudeAccuracy: float,
  heading: float,
  speed: float,
}

type location = {
  coords: coords,
  timestamp: int,
}

type getCurrentPositionAsyncOptions
@obj
external getCurrentPositionAsyncOptions: (
  ~maximumAge: int=?,
  ~accuracy: Accuracy.t=?,
) => getCurrentPositionAsyncOptions = ""

@module("expo-location")
external getCurrentPositionAsync: getCurrentPositionAsyncOptions => Js.Promise.t<location> =
  "getCurrentPositionAsync"

type watchPositionAsyncOptions
@obj
external watchPositionAsyncOptions: (
  ~accuracy: Accuracy.t,
  ~timeInterval: int,
  ~distanceInterval: float,
  ~mayShowUserSettingsDialog: bool=?,
) => watchPositionAsyncOptions = ""

@module("expo-location")
external watchPositionAsync: (
  watchPositionAsyncOptions,
  location => unit,
) => Js.Promise.t<eventSubscription> = "watchPositionAsync"

type getProviderStatusAsyncResult = {
  locationServicesEnabled: bool,
  gpsAvailable: bool,
  networkAvailable: bool,
  passiveAvailable: bool,
}

@module("expo-location")
external getProviderStatusAsync: unit => Js.Promise.t<getProviderStatusAsyncResult> =
  "getProviderStatusAsync"

type getHeadingAsyncResult = {
  magHeading: float,
  trueHeading: float,
  accuracy: int,
}

@module("expo-location")
external getHeadingAsync: unit => Js.Promise.t<getHeadingAsyncResult> = "getHeadingAsync"

type watchHeadingAsyncResult = {
  magHeading: float,
  trueHeading: float,
  accuracy: int,
}

@module("expo-location")
external watchHeadingAsync: (watchHeadingAsyncResult => unit) => Js.Promise.t<eventSubscription> =
  "watchHeadingAsync"

type geocodeAsyncResult = {
  latitude: float,
  longitude: float,
  altitude: float,
  accuracy: float,
}

@module("expo-location")
external geocodeAsync: string => Js.Promise.t<geocodeAsyncResult> = "geocodeAsync"

type reverseGeocodeAsyncOptions
@obj
external reverseGeocodeAsyncOptions: (
  ~latitude: float,
  ~longitude: float,
) => reverseGeocodeAsyncOptions = ""

type reverseGeocodeAsyncResult = {
  city: string,
  street: string,
  region: string,
  postalCode: string,
  country: string,
  name: string,
}

@module("expo-location")
external reverseGeocodeAsync: reverseGeocodeAsyncOptions => Js.Promise.t<
  array<reverseGeocodeAsyncResult>,
> = "reverseGeocodeAsync"

@module("expo-location") external setApiKey: string => unit = "setApiKey"

@module("expo-location")
external installWebGeolocationPolyfill: unit => unit = "installWebGeolocationPolyfill"

type startLocationUpdatesAsyncOptions
@obj
external startLocationUpdatesAsyncOptions: (
  ~accuracy: Accuracy.t,
  ~timeInterval: int,
  ~distanceInterval: float,
  ~showsBackgroundLocationIndicator: bool,
) => startLocationUpdatesAsyncOptions = ""

@module("expo-location")
external startLocationUpdatesAsync: (
  string,
  startLocationUpdatesAsyncOptions,
) => Js.Promise.t<unit> = "startLocationUpdatesAsync"

@module("expo-location")
external stopLocationUpdatesAsync: string => Js.Promise.t<unit> = "stopLocationUpdatesAsync"

@module("expo-location")
external hasStartedLocationUpdatesAsync: string => Js.Promise.t<bool> =
  "hasStartedLocationUpdatesAsync"

type geofencingRegion = {
  identifier: string,
  latitude: float,
  longitude: float,
  radius: float,
  notifyOnEnter: bool,
  notifyOnExit: bool,
}

@module("expo-location")
external startGeofencingAsync: (string, array<geofencingRegion>) => Js.Promise.t<unit> =
  "startGeofencingAsync"

@module("expo-location")
external stopGeofencingAsync: string => Js.Promise.t<unit> = "stopGeofencingAsync"
@module("expo-location")
external hasStartedGeofencingAsync: string => Js.Promise.t<bool> = "hasStartedGeofencingAsync"
