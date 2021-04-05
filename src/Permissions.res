// type t =
//   | Notifications
//   | Location
//   | Camera
//   | AudioRecording
//   | Contacts
//   | CameraRoll
//   | UserFacingNotifications
//   | SystemBrightness
//   | Calendar
//   | Reminders;

type t

@module("expo-permissions") external location: t = "LOCATION"

@module("expo-permissions") external camera: t = "CAMERA"

@module("expo-permissions") external audioRecording: t = "AUDIO_RECORDING"

@module("expo-permissions") external contacts: t = "CONTACTS"

@module("expo-permissions") external cameraRoll: t = "CAMERA_ROLL"

@module("expo-permissions") external calendar: t = "CALENDAR"

@module("expo-permissions") external reminders: t = "REMINDERS"

@module("expo-permissions")
external userFacingNotifications: t = "USER_FACING_NOTIFICATIONS"

@module("expo-permissions") external notification: t = "NOTIFICATIONS"

@module("expo-permissions")
external systemBrightness: t = "SYSTEM_BRIGHTNESS"

@module("expo-permissions")
external getAsync: t => Js.Promise.t<'b> = "getAsync"

@module("expo-permissions")
external askAsync: t => Js.Promise.t<'b> = "askAsync"
