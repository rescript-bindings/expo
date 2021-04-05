@module("expo-file-system")
external documentDirectory: string = "documentDirectory"

@module("expo-file-system")
external cacheDirectory: string = "cacheDirectory"

module EncodingTypes = {
  type t

  @module("expo-file-system") @scope("EncodingTypes")
  external utf8: t = "UTF8"

  @module("expo-file-system") @scope("EncodingTypes")
  external base64: t = "Base64"
}

type fileInfo = {
  exists: bool,
  isDirectory: option<bool>,
  modificationTime: option<int>,
  size: option<int>,
  uri: option<string>,
  md5: option<string>,
}

type getInfoAsyncOptions
@obj
external getInfoAsyncOptions: (~md5: bool=?, ~size: bool=?) => getInfoAsyncOptions = ""

@module("expo-file-system")
external getInfoAsync: (string, getInfoAsyncOptions) => Js.Promise.t<fileInfo> = "getInfoAsync"

type readAsStringAsyncOptions
@obj
external readAsStringAsyncOptions: (
  ~encoding: EncodingTypes.t,
  ~length: int,
  ~position: int,
) => readAsStringAsyncOptions = ""

@module("expo-file-system")
external readAsStringAsync: (string, readAsStringAsyncOptions) => Js.Promise.t<string> =
  "readAsStringAsync"

type writeAsStringAsyncOptions
@obj
external writeAsStringAsyncOptions: (~encoding: EncodingTypes.t) => writeAsStringAsyncOptions = ""

@module("expo-file-system")
external writeAsStringAsync: (string, string) => Js.Promise.t<unit> = "writeAsStringAsync"

type deleteAsyncOptions
@obj
external deleteAsyncOptions: (~idempotent: bool) => deleteAsyncOptions = ""

@module("expo-file-system")
external deleteAsync: (string, deleteAsyncOptions) => Js.Promise.t<unit> = "deleteAsync"

type moveAsyncOptions
@obj
external moveAsyncOptions: (~from: string, ~_to: string) => moveAsyncOptions = ""

@module("expo-file-system")
external moveAsync: (string, moveAsyncOptions) => Js.Promise.t<unit> = "moveAsync"

type copyAsyncOptions
@obj
external copyAsyncOptions: (~from: string, ~_to: string) => copyAsyncOptions = ""

@module("expo-file-system")
external copyAsync: (string, copyAsyncOptions) => Js.Promise.t<unit> = "copyAsync"

type makeDirectoryAsyncOptions
@obj
external makeDirectoryAsyncOptions: (~intermediates: bool) => makeDirectoryAsyncOptions = ""

@module("expo-file-system")
external makeDirectoryAsync: (string, makeDirectoryAsyncOptions) => Js.Promise.t<unit> =
  "makeDirectoryAsync"

@module("expo-file-system")
external readDirectoryAsync: string => Js.Promise.t<array<string>> = "readDirectoryAsync"

type downloadAsyncOptions
@obj external downloadAsyncOptions: (~md5: bool) => downloadAsyncOptions = ""

type downloadAsyncResult<'headersType> = {
  uri: string,
  status: int,
  headers: 'headersType,
  md5: string,
}

@module("expo-file-system")
external downloadAsync: (
  string,
  string,
  downloadAsyncOptions,
) => Js.Promise.t<downloadAsyncResult<'headersType>> = "downloadAsync"

module DownloadResumable = {
  type t

  type downloadAsyncResult<'headersType> = {
    uri: string,
    status: int,
    headers: 'headersType,
    md5: option<string>,
  }

  @bs.send
  external downloadAsync: (t, unit) => Js.Promise.t<downloadAsyncResult<'headersType>> =
    "downloadAsync"

  type options = {md5: bool}

  type pauseAsyncResult = {
    uri: string,
    fileUri: string,
    options: options,
    resumeData: string,
  }

  @bs.send
  external pauseAsync: (t, unit) => Js.Promise.t<pauseAsyncResult> = "pauseAsync"

  type resumeAsyncResult<'headersType> = {
    uri: string,
    status: int,
    headers: 'headersType,
    md5: option<string>,
  }

  @bs.send
  external resumeAsync: (t, unit) => Js.Promise.t<resumeAsyncResult<'headersType>> = "resumeAsync"

  type savableResult = {
    uri: string,
    fileUri: string,
    options: options,
    resumeData: string,
  }

  @bs.send
  external savable: (t, unit) => Js.Promise.t<savableResult> = "savable"
}

type createDownloadResumableOptions<'headersType>
@obj
external createDownloadResumableOptions: (
  ~md5: bool,
  ~headers: 'headersType,
) => createDownloadResumableOptions<'headersType> = ""

type createDownloadResumableCallbackParam = {
  totalBytesWritten: int,
  totalBytesExpectedToWrite: int,
}

type createDownloadResumableResult<'headersType> = {
  uri: string,
  status: int,
  headers: 'headersType,
  md5: string,
}

@module("expo-file-system")
external createDownloadResumable: (
  ~uri: string,
  ~fileUri: string,
  ~options: createDownloadResumableOptions<'headersType>,
  ~callback: createDownloadResumableCallbackParam => unit,
  ~data: string,
) => DownloadResumable.t = "createDownloadResumable"
