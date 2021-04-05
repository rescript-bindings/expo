module CryptoDigestAlgorithm = {
  type t
  @module("expo-crypto") @scope("CryptoDigestAlgorithm")
  external sha1: t = "SHA1"

  @module("expo-crypto") @scope("CryptoDigestAlgorithm")
  external sha256: t = "SHA256"

  @module("expo-crypto") @scope("CryptoDigestAlgorithm")
  external sha384: t = "SHA384"

  @module("expo-crypto") @scope("CryptoDigestAlgorithm")
  external sha512: t = "SHA512"

  @module("expo-crypto") @scope("CryptoDigestAlgorithm")
  external md2: t = "MD2"

  @module("expo-crypto") @scope("CryptoDigestAlgorithm")
  external md4: t = "MD4"

  @module("expo-crypto") @scope("CryptoDigestAlgorithm")
  external md5: t = "MD5"
}

module CryptoEncoding = {
  type t
  @module("expo-crypto") @scope("CryptoEncoding")
  external hex: t = "HEX"

  @module("expo-crypto") @scope("CryptoEncoding")
  external base64: t = "BASE64"
}

@deriving(abstract)
type cryptoDigestOptions = {encoding: CryptoEncoding.t}

@module("expo-crypto")
external digestStringAsync: (
  CryptoDigestAlgorithm.t,
  string,
  cryptoDigestOptions,
) => Js.Promise.t<string> = "digestStringAsync"
