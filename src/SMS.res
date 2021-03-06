@module("expo-sms")
external isAvailableAsync: unit => Js.Promise.t<bool> = "isAvailableAsync"

type sendSMSAsyncResult = {result: string}

@module("expo-sms")
external sendSMSAsync: (array<string>, string) => Js.Promise.t<sendSMSAsyncResult> = "sendSMSAsync"
