module Orientation = {
  type t

  @module("expo-print") @scope("Orientation")
  external portrait: t = "portrait"

  @module("expo-print") @scope("Orientation")
  external landscape: t = "landscape"
}

type printAsyncOptions
@obj
external printAsyncOptions: (
  ~uri: string,
  ~html: string,
  ~width: float,
  ~height: float,
  ~printerUrl: string,
  ~orientation: Orientation.t,
) => printAsyncOptions = ""

@module("expo-print")
external printAsync: printAsyncOptions => Js.Promise.t<unit> = "printAsync"

type printToFileAsyncOptions
@obj
external printToFileAsyncOptions: (
  ~html: string,
  ~width: float,
  ~height: float,
  ~base64: bool,
) => printToFileAsyncOptions = ""

type printToFileAsyncResult = {
  uri: string,
  numberOfPages: int,
  base64: option<string>,
}

@module("expo-print")
external printToFileAsync: printToFileAsyncOptions => Js.Promise.t<printToFileAsyncResult> =
  "printToFileAsync"

type selectPrinterAsyncResult = {
  name: string,
  url: string,
}

@module("expo-print")
external selectPrinterAsync: unit => Js.Promise.t<selectPrinterAsyncResult> = "selectPrinterAsync"
