type statusBarAnimation = [#none | #fade | #slide]
type statusBarStyle = [#auto | #inverted | #light | #dark]

@module("expo-status-bar") @react.component
external make: (
  ~style: statusBarStyle=?,
  ~animated: bool=?,
  ~hidden: bool=?,
  ~networkActivityIndicatorVisible: bool=?,
  ~hideTransitionAnimation: statusBarAnimation=?,
  ~backgroundColor: string=?,
  ~translucent: bool=?,
) => React.element = "StatusBar"

@module("expo-status-bar")
external setBackgroundColor: (~color: string, ~animation: bool=?, unit) => unit =
  "setStatusBarBackgroundColor"

@module("expo-status-bar")
external setBarStyle: (~style: statusBarStyle, ~animated: bool=?, unit) => unit =
  "setStatusBarStyle"

@module("expo-status-bar")
external setHidden: (~hidden: bool, ~animation: statusBarAnimation=?, unit) => unit =
  "setStatusBarHidden"

@module("expo-status-bar")
external setNetworkActivityIndicatorVisible: bool => unit =
  "setStatusBarNetworkActivityIndicatorVisible"

@module("expo-status-bar") external setTranslucent: bool => unit = "setStatusBarTranslucent"
