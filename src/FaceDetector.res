module Constants = {
  module Mode = {
    type t

    @module("expo-face-detector") @scope(("Constants", "Mode"))
    external fast: t = "fast"

    @module("expo-face-detector") @scope(("Constants", "Mode"))
    external accurate: t = "accurate"
  }

  module Landmarks = {
    type t

    @module("expo-face-detector") @scope(("Constants", "Landmarks"))
    external all: t = "all"

    @module("expo-face-detector") @scope(("Constants", "Landmarks"))
    external none: t = "none"
  }

  module Classifications = {
    type t

    @module("expo-face-detector") @scope(("Constants", "Classifications"))
    external all: t = "all"

    @module("expo-face-detector") @scope(("Constants", "Classifications"))
    external none: t = "none"
  }
}

type point = {
  x: int,
  y: int,
}

type rec faceFeature = {
  bounds: bounds,
  smilingProbability: Js.Nullable.t<float>,
  leftEarPosition: Js.Nullable.t<point>,
  rightEarPosition: Js.Nullable.t<point>,
  leftEyePosition: Js.Nullable.t<point>,
  leftEyeOpenProbability: Js.Nullable.t<float>,
  rightEyePosition: Js.Nullable.t<point>,
  rightEyeOpenProbability: Js.Nullable.t<float>,
  leftCheekPosition: Js.Nullable.t<point>,
  rightCheekPosition: Js.Nullable.t<point>,
  leftMouthPosition: Js.Nullable.t<point>,
  mouthPosition: Js.Nullable.t<point>,
  rightMouthPosition: Js.Nullable.t<point>,
  bottomMouthPosition: Js.Nullable.t<point>,
  noseBasePosition: Js.Nullable.t<point>,
  yawAngle: Js.Nullable.t<float>,
  rollAngle: Js.Nullable.t<float>,
}
and bounds = {
  size: size,
  origin: point,
}
and size = {
  width: int,
  height: int,
}

type detectionOptions = {
  mode: Js.Nullable.t<Constants.Mode.t>,
  detectLandmarks: Js.Nullable.t<Constants.Landmarks.t>,
  runClassifications: Js.Nullable.t<Constants.Classifications.t>,
}

type rec detectFacesAsyncResponse = {
  faces: array<faceFeature>,
  image: image,
}
and image = {
  uri: string,
  width: float,
  height: float,
  orientation: int,
}

@module("expo-face-detector")
external detectFacesAsync: (string, detectionOptions) => Js.Promise.t<detectFacesAsyncResponse> =
  "detectFacesAsync"
