module AuthenticationType = {
  type t

  @module("expo-local-authentication") @scope("AuthenticationType")
  external fingerprint: t = "FINGERPRINT"

  @module("expo-local-authentication") @scope("AuthenticationType")
  external facialRecognition: t = "FACIAL_RECOGNITION"
}

@module("expo-local-authentication")
external hasHardwareAsync: unit => Js.Promise.t<bool> = "hasHardwareAsync"

@module("expo-local-authentication")
external supportedAuthenticationTypesAsync: unit => Js.Promise.t<array<AuthenticationType.t>> =
  "supportedAuthenticationTypesAsync"

@module("expo-local-authentication")
external isEnrolledAsync: unit => Js.Promise.t<bool> = "isEnrolledAsync"

type authenticateAsyncResult = {
  success: bool,
  error: option<string>,
}

type authenticateAsyncOptions
@obj
external authenticateAsyncOptions: (
  ~promptMessage: string,
  ~fallbackLabel: string,
) => authenticateAsyncOptions = ""

@module("expo-local-authentication")
external authenticateAsync: authenticateAsyncOptions => Js.Promise.t<authenticateAsyncResult> =
  "authenticateAsync"

@module("expo-local-authentication")
external cancelAuthenticate: unit => unit = "cancelAuthenticate"
