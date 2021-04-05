@module("expo")
external registerRootComponent: ('a => React.element) => unit = "registerRootComponent"

type takeSnapshotAsyncOptions
@obj
external takeSnapshotAsyncOptions: (
  ~format: string,
  ~quality: float,
  ~result: string,
  ~height: int,
  ~width: int,
) => takeSnapshotAsyncOptions = ""

@module("expo")
external takeSnapshotAsync: (React.ref<React.element>, takeSnapshotAsyncOptions) => unit =
  "takeSnapshotAsync"
