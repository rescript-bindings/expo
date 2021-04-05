@module("react-native-svg") @react.component
external make: (~height: string, ~width: string, ~children: React.element=?) => React.element =
  "default"

module Rect = {
  @module("react-native-svg") @react.component
  external make: (
    ~x: string,
    ~y: string,
    ~width: string,
    ~height: string,
    ~fill: string=?,
    ~strokeWidth: string=?,
    ~stroke: string=?,
    ~children: React.element=?,
  ) => React.element = "Rect"
}

module Circle = {
  @module("react-native-svg") @react.component
  external make: (
    ~cx: string,
    ~cy: string,
    ~r: string,
    ~fill: string=?,
    ~children: React.element=?,
  ) => React.element = "Circle"
}

module Ellipse = {
  @module("react-native-svg") @react.component
  external make: (
    ~cx: string,
    ~cy: string,
    ~rx: string,
    ~ry: string,
    ~fill: string=?,
    ~stroke: string=?,
    ~strokeWidth: string=?,
    ~children: React.element=?,
  ) => React.element = "Ellipse"
}

module Line = {
  @module("react-native-svg") @react.component
  external make: (
    ~x1: string,
    ~y1: string,
    ~x2: string,
    ~y2: string,
    ~stroke: string=?,
    ~strokeWidth: string=?,
    ~children: React.element=?,
  ) => React.element = "Line"
}

module Polygon = {
  @module("react-native-svg") @react.component
  external make: (
    ~points: string,
    ~fill: string=?,
    ~stroke: string=?,
    ~strokeWidth: string=?,
    ~children: React.element=?,
  ) => React.element = "Polygon"
}

module Polyline = {
  @module("react-native-svg") @react.component
  external make: (
    ~points: string,
    ~fill: string=?,
    ~stroke: string=?,
    ~strokeWidth: string=?,
    ~children: React.element=?,
  ) => React.element = "Polyline"
}

module Path = {
  @module("react-native-svg") @react.component
  external make: (
    ~d: string,
    ~fill: string=?,
    ~opacity: string=?,
    ~stroke: string=?,
    ~strokeWidth: string=?,
    ~fillOpacity: string=?,
    ~strokeOpacity: string=?,
    ~children: React.element=?,
  ) => React.element = "Path"
}

module Text = {
  @module("react-native-svg") @react.component
  external make: (
    ~x: string=?,
    ~y: string=?,
    ~fontSize: string=?,
    ~fontWeight: string=?,
    ~textAnchor: string=?,
    ~fill: string=?,
    ~stroke: string=?,
    ~strokeWidth: string=?,
    ~children: React.element=?,
  ) => React.element = "Text"
}

module TSpan = {
  @module("react-native-svg") @react.component
  external make: (
    ~x: string=?,
    ~y: string=?,
    ~dx: string=?,
    ~dy: string=?,
    ~fontSize: string=?,
    ~fontWeight: string=?,
    ~textAnchor: string=?,
    ~fill: string=?,
    ~stroke: string=?,
    ~strokeWidth: string=?,
    ~children: React.element=?,
  ) => React.element = "TSpan"
}

module TextPath = {
  external make: (
    ~href: string,
    ~startOffset: string=?,
    ~children: React.element=?,
  ) => React.element = "TextPath"
}

module G = {
  @module("react-native-svg") @react.component
  external make: (
    ~rotation: string=?,
    ~origin: string=?,
    ~fill: string=?,
    ~stroke: string=?,
    ~strokeWidth: string=?,
    ~transform: string=?,
    ~children: React.element=?,
  ) => React.element = "G"
}

module Use = {
  @module("react-native-svg") @react.component
  external make: (
    ~href: string,
    ~x: string=?,
    ~y: string=?,
    ~fill: string=?,
    ~children: React.element=?,
  ) => React.element = "Use"
}

module Symbol = {
  @module("react-native-svg") @react.component
  external make: (
    ~id: string,
    ~viewBox: string,
    ~width: string,
    ~height: string,
    ~children: React.element=?,
  ) => React.element = "Symbol"
}

module Defs = {
  @module("react-native-svg") @react.component
  external make: (~children: React.element=?) => React.element = "Defs"
}

module Image = {
  @module("react-native-svg") @react.component
  external make: (
    ~x: string=?,
    ~y: string=?,
    ~width: string,
    ~height: string,
    ~preserveAspectRatio: string=?,
    ~opacity: string=?,
    ~href: string,
    ~clipPath: string=?,
    ~children: React.element=?,
  ) => React.element = "Image"
}

module ClipPath = {
  @module("react-native-svg") @react.component
  external make: (~id: string, ~children: React.element=?) => React.element = "ClipPath"
}

module LinearGradient = {
  @module("react-native-svg") @react.component
  external make: (
    ~id: string,
    ~x1: string=?,
    ~y1: string=?,
    ~x2: string=?,
    ~y2: string=?,
    ~children: React.element=?,
  ) => React.element = "LinearGradient"
}

module RadialGradient = {
  @module("react-native-svg") @react.component
  external make: (
    ~id: string,
    ~cx: string=?,
    ~cy: string=?,
    ~rx: string=?,
    ~ry: string=?,
    ~fx: string=?,
    ~fy: string=?,
    ~gradientUnits: string=?,
    ~children: React.element=?,
  ) => React.element = "RadialGradient"
}

module Stop = {
  @module("react-native-svg") @react.component
  external make: (
    ~offset: string,
    ~stopColor: string=?,
    ~stopOpacity: string=?,
    ~children: React.element=?,
  ) => React.element = "Stop"
}

module Mask = {
  @module("react-native-svg") @react.component
  external make: (
    ~id: string,
    ~x: string=?,
    ~y: string=?,
    ~height: string=?,
    ~width: string=?,
    ~maskUnits: string=?,
    ~children: React.element=?,
  ) => React.element = "Mask"
}

module Pattern = {
  @module("react-native-svg") @react.component
  external make: (
    ~id: string,
    ~x: string=?,
    ~y: string=?,
    ~height: string,
    ~width: string,
    ~patternUnits: string=?,
    ~viewBox: string=?,
    ~children: React.element=?,
  ) => React.element = "Pattern"
}
