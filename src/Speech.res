type speakOptions<'errorObj>
@obj
external speakOptions: (
  ~language: string,
  ~pitch: float,
  ~rate: float,
  ~onStart: unit => unit,
  ~onDone: unit => unit,
  ~onStopped: unit => unit,
  ~onError: 'errorObj => unit,
) => speakOptions<'errorObj> = ""

@module("expo-speech")
external speak: (string, speakOptions<'errorObj>) => unit = "speak"

@module("expo-speech") external stop: unit => unit = "stop"

@module("expo-speech") external pause: unit => unit = "pause"

@module("expo-speech") external resume: unit => unit = "resume"

@module("expo-speech")
external isSpeakingAsync: unit => Js.Promise.t<bool> = "isSpeakingAsync"
