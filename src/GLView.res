@module("expo-gl") @scope("GLView")
external createContextAsync: unit => Js.Promise.t<'a> = "createContextAsync"

@module("expo-gl") @scope("GLView")
external destroyContextAsync: 'a => Js.Promise.t<bool> = "destroyContextAsync"

type rec takeSnapshotAsyncProps<'a> = {
  framebuffer: 'a,
  rect: rect,
  flip: bool,
  format: string,
  compress: float,
}
and rect = {
  x: float,
  y: float,
  height: float,
  width: float,
}

type takeSnapshotAsyncResult = {
  uri: string,
  localUri: string,
  width: float,
  height: float,
}

@module("expo-gl") @scope("GLView")
external takeSnapshotAsync: takeSnapshotAsyncProps<'a> => Js.Promise.t<takeSnapshotAsyncResult> =
  "takeSnapshotAsync"

@module("expo-gl") @react.component
external make: (
  ~onContextCreate: 'a => unit=?,
  ~msaaSamples: float=?,
  ~children: React.element=?,
) => React.element = "GLView"
