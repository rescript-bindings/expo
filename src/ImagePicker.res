module MediaType = {
  type t

  @module("expo-image-picker") @scope("MediaTypeOptions")
  external images: t = "Images"
  @module("expo-image-picker") @scope("MediaTypeOptions")
  external videos: t = "Videos"
  @module("expo-image-picker") @scope("MediaTypeOptions")
  external all: t = "all"
}

type launchImageLibraryAsyncOptions
@obj
external launchImageLibraryAsyncOptions: (
  ~mediaTypes: MediaType.t,
  ~allowsEditing: bool,
  ~aspect: array<int>,
  ~quality: float,
  ~base64: bool,
  ~exif: bool,
) => launchImageLibraryAsyncOptions = ""

type launchImageLibraryAsyncResult = {
  cancelled: bool,
  uri: option<string>,
  width: option<float>,
  height: option<float>,
  @as("type")
  _type: option<string>,
  duration: option<float>,
  base64: option<string>,
  exif: option<string>,
}

@module("expo-image-picker")
external launchImageLibraryAsync: launchImageLibraryAsyncOptions => Js.Promise.t<
  launchImageLibraryAsyncResult,
> = "launchImageLibraryAsync"

type launchCameraAsyncOptions
@obj
external launchCameraAsyncOptions: (
  ~allowsEditing: bool,
  ~aspect: array<int>,
  ~quality: float,
  ~base64: bool,
  ~exif: bool,
) => launchCameraAsyncOptions = ""

type launchCameraAsyncResult = {
  cancelled: bool,
  uri: option<string>,
  width: option<float>,
  height: option<float>,
  duration: option<float>,
  base64: option<string>,
  exif: option<string>,
}

@module("expo-image-picker")
external launchCameraAsync: launchCameraAsyncOptions => Js.Promise.t<launchCameraAsyncResult> =
  "launchCameraAsync"
