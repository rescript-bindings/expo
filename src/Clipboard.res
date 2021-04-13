@module("expo-clipboard") external getStringAsync: unit => Js.Promise.t<'a> = "getStringAsync"

@module("expo-clipboard") external setString: string => unit = "setString"