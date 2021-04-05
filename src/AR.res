module HitTestResultTypes = {
  type t

  @module("expo") @scope(("AR", "HitTestResultTypes"))
  external featurePoint: t = "FeaturePoint"

  @module("expo") @scope(("AR", "HitTestResultTypes"))
  external horizontalPlane: t = "HorizontalPlane"

  @module("expo") @scope(("AR", "HitTestResultTypes"))
  external verticalPlane: t = "VerticalPlane"

  @module("expo") @scope(("AR", "HitTestResultTypes"))
  external existingPlane: t = "ExistingPlane"

  @module("expo") @scope(("AR", "HitTestResultTypes"))
  external existingPlaneUsingExtent: t = "ExistingPlaneUsingExtent"

  @module("expo") @scope(("AR", "HitTestResultTypes"))
  external existingPlaneUsingGeometry: t = "ExistingPlaneUsingGeometry"
}

module TrackingConfiguration = {
  type t

  @module("expo") @scope(("AR", "TrackingConfiguration"))
  external world: t = "World"

  @module("expo") @scope(("AR", "TrackingConfiguration"))
  external orientation: t = "Orientation"

  @module("expo") @scope(("AR", "TrackingConfiguration"))
  external face: t = "Face"
}

module DepthDataQuality = {
  type t

  @module("expo") @scope(("AR", "DepthDataQuality"))
  external low: t = "Low"

  @module("expo") @scope(("AR", "DepthDataQuality"))
  external high: t = "High"
}

module DepthDataAccuracy = {
  type t

  @module("expo") @scope(("AR", "DepthDataAccuracy"))
  external absolute: t = "Absolute"

  @module("expo") @scope(("AR", "DepthDataAccuracy"))
  external relative: t = "Relative"
}

module BlendShape = {
  type t

  @module("expo") @scope(("AR", "BlendShape"))
  external browDownL: t = "BrowDownL"

  @module("expo") @scope(("AR", "BlendShape"))
  external browDownR: t = "BrowDownR"

  @module("expo") @scope(("AR", "BlendShape"))
  external browInnerUp: t = "BrowInnerUp"

  @module("expo") @scope(("AR", "BlendShape"))
  external browOuterUpL: t = "BrowOuterUpL"

  @module("expo") @scope(("AR", "BlendShape"))
  external browOuterUpR: t = "BrowOuterUpR"

  @module("expo") @scope(("AR", "BlendShape"))
  external cheekPuff: t = "CheekPuff"

  @module("expo") @scope(("AR", "BlendShape"))
  external cheekSquintL: t = "CheekSquintL"

  @module("expo") @scope(("AR", "BlendShape"))
  external cheekSquintR: t = "CheekSquintR"

  @module("expo") @scope(("AR", "BlendShape"))
  external eyeBlinkL: t = "EyeBlinkL"

  @module("expo") @scope(("AR", "BlendShape"))
  external eyeBlinkR: t = "EyeBlinkR"

  @module("expo") @scope(("AR", "BlendShape"))
  external eyeLookDownL: t = "EyeLookDownL"

  @module("expo") @scope(("AR", "BlendShape"))
  external eyeLookDownR: t = "EyeLookDownR"

  @module("expo") @scope(("AR", "BlendShape"))
  external eyeLookInL: t = "EyeLookInL"

  @module("expo") @scope(("AR", "BlendShape"))
  external eyeLookInR: t = "EyeLookInR"

  @module("expo") @scope(("AR", "BlendShape"))
  external eyeLookOutL: t = "EyeLookOutL"

  @module("expo") @scope(("AR", "BlendShape"))
  external eyeLookOutR: t = "EyeLookOutR"

  @module("expo") @scope(("AR", "BlendShape"))
  external eyeLookUpL: t = "EyeLookUpL"

  @module("expo") @scope(("AR", "BlendShape"))
  external eyeLookUpR: t = "EyeLookUpR"

  @module("expo") @scope(("AR", "BlendShape"))
  external eyeSquintL: t = "EyeSquintL"

  @module("expo") @scope(("AR", "BlendShape"))
  external eyeSquintR: t = "EyeSquintR"

  @module("expo") @scope(("AR", "BlendShape"))
  external eyeWideL: t = "EyeWideL"

  @module("expo") @scope(("AR", "BlendShape"))
  external eyeWideR: t = "EyeWideR"

  @module("expo") @scope(("AR", "BlendShape"))
  external jawForward: t = "JawForward"

  @module("expo") @scope(("AR", "BlendShape"))
  external jawLeft: t = "JawLeft"

  @module("expo") @scope(("AR", "BlendShape"))
  external jawOpen: t = "JawOpen"

  @module("expo") @scope(("AR", "BlendShape"))
  external jawRight: t = "JawRight"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthClose: t = "MouthClose"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthDimpleL: t = "MouthDimpleL"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthDimpleR: t = "MouthDimpleR"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthFrownL: t = "MouthFrownL"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthFrownR: t = "MouthFrownR"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthFunnel: t = "MouthFunnel"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthLeft: t = "MouthLeft"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthLowerDownL: t = "MouthLowerDownL"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthLowerDownR: t = "MouthLowerDownR"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthPressL: t = "MouthPressL"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthPressR: t = "MouthPressR"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthPucker: t = "MouthPucker"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthRight: t = "MouthRight"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthRollLower: t = "MouthRollLower"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthRollUpper: t = "MouthRollUpper"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthShrugLower: t = "MouthShrugLower"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthShrugUpper: t = "MouthShrugUpper"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthSmileL: t = "MouthSmileL"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthSmileR: t = "MouthSmileR"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthStretchL: t = "MouthStretchL"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthStretchR: t = "MouthStretchR"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthUpperUpL: t = "MouthUpperUpL"

  @module("expo") @scope(("AR", "BlendShape"))
  external mouthUpperUpR: t = "MouthUpperUpR"

  @module("expo") @scope(("AR", "BlendShape"))
  external noseSneerL: t = "NoseSneerL"

  @module("expo") @scope(("AR", "BlendShape"))
  external noseSneerR: t = "NoseSneerR"
}

module FaceAnchorProp = {
  type t

  @module("expo") @scope(("AR", "FaceAnchorProp"))
  external geometry: t = "Geometry"

  @module("expo") @scope(("AR", "FaceAnchorProp"))
  external blendShapes: t = "BlendShapes"
}

module PlaneDetection = {
  type t

  @module("expo") @scope(("AR", "PlaneDetection"))
  external none: t = "None"

  @module("expo") @scope(("AR", "PlaneDetection"))
  external horizontal: t = "Horizontal"

  @module("expo") @scope(("AR", "PlaneDetection"))
  external vertical: t = "Vertical"
}

module WorldAlignment = {
  type t

  @module("expo") @scope(("AR", "WorldAlignment"))
  external gravity: t = "Gravity"

  @module("expo") @scope(("AR", "WorldAlignment"))
  external gravityAndHeading: t = "GravityAndHeading"

  @module("expo") @scope(("AR", "WorldAlignment"))
  external alignmentCamera: t = "AlignmentCamera"
}

module EventType = {
  type t

  @module("expo") @scope(("AR", "EventType"))
  external frameDidUpdate: t = "FrameDidUpdate"

  @module("expo") @scope(("AR", "EventType"))
  external didFailWithError: t = "DidFailWithError"

  @module("expo") @scope(("AR", "EventType"))
  external anchorsDidUpdate: t = "AnchorsDidUpdate"

  @module("expo") @scope(("AR", "EventType"))
  external cameraDidChangeTrackingState: t = "CameraDidChangeTrackingState"

  @module("expo") @scope(("AR", "EventType"))
  external sessionWasInterrupted: t = "SessionWasInterrupted"

  @module("expo") @scope(("AR", "EventType"))
  external sessionInterruptionEnded: t = "SessionInterruptionEnded"
}

module AnchorType = {
  type t

  @module("expo") @scope(("AR", "AnchorType"))
  external face: t = "Face"

  @module("expo") @scope(("AR", "AnchorType"))
  external image: t = "Image"

  @module("expo") @scope(("AR", "AnchorType"))
  external plane: t = "Plane"

  @module("expo") @scope(("AR", "AnchorType"))
  external anchor: t = "Anchor"
}

module AnchorEventType = {
  type t

  @module("expo") @scope(("AR", "AnchorEventType"))
  external add: t = "Add"

  @module("expo") @scope(("AR", "AnchorEventType"))
  external update: t = "Update"

  @module("expo") @scope(("AR", "AnchorEventType"))
  external remove: t = "Remove"
}

module FrameAttribute = {
  type t

  @module("expo") @scope(("AR", "FrameAttribute"))
  external anchors: t = "Anchors"

  @module("expo") @scope(("AR", "FrameAttribute"))
  external rawFeaturePoints: t = "RawFeaturePoints"

  @module("expo") @scope(("AR", "FrameAttribute"))
  external lightEstimation: t = "LightEstimation"

  @module("expo") @scope(("AR", "FrameAttribute"))
  external capturedDepthData: t = "CapturedDepthData"
}

module TrackingState = {
  type t

  @module("expo") @scope(("AR", "TrackingState"))
  external notAvailable: t = "NotAvailable"

  @module("expo") @scope(("AR", "TrackingState"))
  external limited: t = "Limited"

  @module("expo") @scope(("AR", "TrackingState"))
  external normal: t = "Normal"
}

module TrackingStateReason = {
  type t

  @module("expo") @scope(("AR", "TrackingStateReason"))
  external none: t = "None"

  @module("expo") @scope(("AR", "TrackingStateReason"))
  external initializing: t = "Initializing"

  @module("expo") @scope(("AR", "TrackingStateReason"))
  external excessiveMotion: t = "ExcessiveMotion"

  @module("expo") @scope(("AR", "TrackingStateReason"))
  external insufficientFeatures: t = "InsufficientFeatures"

  @module("expo") @scope(("AR", "TrackingStateReason"))
  external relocalizing: t = "Relocalizing"
}

type size = {
  width: float,
  height: float,
}

type vector3 = {
  x: float,
  y: float,
  z: float,
}

type vector2 = {
  x: float,
  y: float,
}

type textureCoordinate = {
  u: float,
  v: float,
}

type matrix = array<float>

type faceGeometry = {
  vertexCount: float,
  textureCoordinateCount: float,
  triangleCount: float,
  vertices: array<vector3>,
  textureCoordinates: array<textureCoordinate>,
  triangleIndices: array<float>,
}

type rec anchor = {
  @as("type")
  type_: AnchorType.t,
  transform: matrix,
  id: string,
  center: option<vector3>,
  extent: option<extent>,
  image: option<image>,
  geometry: option<faceGeometry>,
  blendShapes: option<Js.Dict.t<float>>,
}
and image = {
  name: string,
  size: size,
}
and extent = {
  width: float,
  length: float,
}

type hitTest = {
  @as("type")
  type_: float,
  distance: float,
  localTransform: array<float>,
  worldTransform: array<float>,
  anchor: anchor,
}

type hitTestResults = {hitTest: hitTest}

type detectionImage = {
  uri: string,
  width: float,
  name: option<string>,
}

type rec arFrameAnchorRequest = {
  @as("ARFaceTrackingConfiguration")
  arFaceTrackingConfiguration: option<arFaceTrackingConfiguration>,
}
and arFaceTrackingConfiguration = {
  geometry: bool,
  blendShapes: array<BlendShape.t>,
}

type arFrameRequest = {
  anchors: option<arFrameAnchorRequest>,
  rawFeaturePoints: option<bool>,
  lightEstimation: option<bool>,
  capturedDepthData: option<bool>,
}

type lightEstimation = {
  ambientIntensity: float,
  ambientColorTemperature: float,
  primaryLightDirection: option<vector3>,
  primaryLightIntensity: option<float>,
}

type rawFeaturePoint = {
  x: float,
  y: float,
  z: float,
  id: string,
}

type cameraCalibrationData<'lensDistortionLookupTable, 'inverseLensDistortionLookupTable> = {
  intrinsicMatrix: matrix,
  intrinsicMatrixReferenceDimensions: size,
  extrinsicMatrix: matrix,
  pixelSize: float,
  lensDistortionLookupTable: 'lensDistortionLookupTable,
  inverseLensDistortionLookupTable: 'inverseLensDistortionLookupTable,
  lensDistortionCenter: vector3,
}

type capturedDepthData = {
  timestamp: float,
  depthDataQuality: DepthDataQuality.t,
  depthDataAccuracy: DepthDataAccuracy.t,
  depthDataFiltered: bool,
  cameraCalibrationData: cameraCalibrationData<string, string>,
}

type arFrame = {
  timestamp: float,
  anchors: option<array<anchor>>,
  rawFeaturePoints: option<array<rawFeaturePoint>>,
  lightEstimation: option<lightEstimation>,
  capturedDepthData: option<capturedDepthData>,
}

type arMatrices = {
  transform: matrix,
  viewMatrix: matrix,
  projectionMatrix: matrix,
}

type arStartResult = {capturedImageTexture: float}

type imageResolution = {
  width: float,
  height: float,
}

type videoFormat = {
  @as("type")
  type_: string,
  imageResolution: imageResolution,
  framesPerSecond: float,
}

@module("expo") @scope("AR")
external isAvailable: unit => bool = "isAvailable"

@module("expo") @scope("AR")
external getVersion: unit => string = "getVersion"

@module("expo") @scope("AR")
external removeAllListeners: EventType.t => unit = "removeAllListeners"

@module("expo") @scope("AR")
external onFrameDidUpdate: (unit => unit) => unit = "onFrameDidUpdate"

@module("expo") @scope("AR")
external onDidFailWithError: ({"error": string} => unit) => unit = "onDidFailWithError"

type onAnchorsDidUpdateResult = {
  anchors: array<anchor>,
  eventType: AnchorEventType.t,
}

@module("expo") @scope("AR")
external onAnchorsDidUpdate: (onAnchorsDidUpdateResult => unit) => unit = "onAnchorsDidUpdate"

type onCameraDidChangeTrackingStateResult = {
  trackingState: TrackingState.t,
  trackingStateReason: TrackingStateReason.t,
}

@module("expo") @scope("AR")
external onCameraDidChangeTrackingState: (onCameraDidChangeTrackingStateResult => unit) => unit =
  "onCameraDidChangeTrackingState"

@module("expo") @scope("AR")
external onSessionWasInterrupted: (unit => unit) => unit = "onSessionWasInterrupted"

@module("expo") @scope("AR")
external onSessionInterruptionEnded: (unit => unit) => unit = "onSessionInterruptionEnded"

type performHitTestPoint = {
  x: float,
  y: float,
}

@module("expo") @scope("AR")
external performHitTest: (performHitTestPoint, HitTestResultTypes.t) => hitTestResults =
  "performHitTest"

@module("expo") @scope("AR")
external setDetectionImagesAsync: Js.Dict.t<detectionImage> => Js.Promise.t<unit> =
  "setDetectionImagesAsync"

@module("expo") @scope("AR")
external getCurrentFrame: arFrameRequest => Js.Nullable.t<arFrame> = "getCurrentFrame"

@module("expo") @scope("AR")
external getARMatrices: (float, float) => array<arMatrices> = "getARMatrices"

@module("expo") @scope("AR")
external startAsync: (React.ref<React.element>, TrackingConfiguration.t) => Js.Promise.t<unit> =
  "startAsync"

@module("expo") @scope("AR")
external stopAsync: unit => Js.Promise.t<unit> = "stopAsync"

@module("expo") @scope("AR") external reset: unit => unit = "reset"

@module("expo") @scope("AR") external pause: unit => unit = "pause"

@module("expo") @scope("AR") external resume: unit => unit = "resume"

@module("expo") @scope("AR")
external isConfigurationAvailable: TrackingConfiguration.t => bool = "isConfigurationAvailable"

@module("expo") @scope("AR")
external setConfigurationAsync: TrackingConfiguration.t => Js.Promise.t<unit> =
  "setConfigurationAsync"

@module("expo") @scope("AR")
external isFrontCameraAvailable: unit => bool = "isFrontCameraAvailable"

@module("expo") @scope("AR")
external isRearCameraAvailable: unit => bool = "isRearCameraAvailable"

@module("expo") @scope("AR")
external planeDetection: unit => PlaneDetection.t = "planeDetection"

@module("expo") @scope("AR")
external setPlaneDetection: PlaneDetection.t => unit = "setPlaneDetection"

@module("expo") @scope("AR")
external setWorldOriginAsync: matrix => unit = "setWorldOriginAsync"

@module("expo") @scope("AR")
external setLightEstimationEnabled: bool => unit = "setLightEstimationEnabled"

@module("expo") @scope("AR")
external getLightEstimationEnabled: unit => bool = "getLightEstimationEnabled"

@module("expo") @scope("AR")
external setProvidesAudioData: bool => unit = "setProvidesAudioData"

@module("expo") @scope("AR")
external getProvidesAudioData: unit => bool = "getProvidesAudioData"

@module("expo") @scope("AR")
external setAutoFocusEnabled: bool => unit = "setAutoFocusEnabled"

@module("expo") @scope("AR")
external getAutoFocusEnabled: unit => bool = "getAutoFocusEnabled"

@module("expo") @scope("AR")
external setWorldAlignment: WorldAlignment.t => unit = "setWorldAlignment"

@module("expo") @scope("AR")
external getWorldAlignment: unit => WorldAlignment.t = "getWorldAlignment"

@module("expo") @scope("AR")
external getCameraTexture: unit => float = "getCameraTexture"

@module("expo") @scope("AR")
external getSupportedVideoFormats: TrackingConfiguration.t => array<videoFormat> =
  "getSupportedVideoFormats"
