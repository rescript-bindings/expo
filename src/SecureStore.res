type t

@module("expo-secure-store") external whenUnlocked: t = "WHEN_UNLOCKED"

@module("expo-secure-store")
external afterFirstUnlock: t = "AFTER_FIRST_UNLOCK"

@module("expo-secure-store") external always: t = "ALWAYS"

@module("expo-secure-store")
external whenUnlockedThisDeviceOnly: t = "WHEN_UNLOCKED_THIS_DEVICE_ONLY"

@module("expo-secure-store")
external whenPasscodeSetThisDeviceOnly: t = "WHEN_PASSCODE_SET_THIS_DEVICE_ONLY"

@module("expo-secure-store")
external afterFirstUnlockThisDeviceOnly: t = "AFTER_FIRST_UNLOCK_THIS_DEVICE_ONLY"

@module("expo-secure-store")
external alwaysThisDeviceOnly: t = "ALWAYS_THIS_DEVICE_ONLY"

type setItemAsyncOptions
@obj
external setItemAsyncOptions: (
  ~keychainService: string,
  ~keychainAccessible: t,
) => setItemAsyncOptions = ""

@module("expo-secure-store")
external setItemAsync: (
  ~key: string,
  ~value: string,
  ~options: setItemAsyncOptions=?,
  unit,
) => Js.Promise.t<unit> = "setItemAsync"

type getItemAsyncOptions
@obj
external getItemAsyncOptions: (~keychainService: string) => getItemAsyncOptions = ""

@module("expo-secure-store")
external getItemAsync: (
  ~key: string,
  ~options: getItemAsyncOptions=?,
  unit,
) => Js.Promise.t<Js.nullable<string>> = "getItemAsync"

type deleteItemAsyncOptions
@obj
external deleteItemAsyncOptions: (~keychainService: string) => deleteItemAsyncOptions = ""

@module("expo-secure-store")
external deleteItemAsyncWithOptions: (
  ~key: string,
  ~options: deleteItemAsyncOptions=?,
  unit,
) => Js.Promise.t<unit> = "deleteItemAsync"
