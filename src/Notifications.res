type eventSubscription

@bs.send external remove: (eventSubscription, unit) => unit = "remove"

@module("expo") @scope("Notifications")
external addListener: (
  {"origin": string, "data": {..}, "remote": bool} => unit
) => eventSubscription = "addListener"

@module("expo") @scope("Notifications")
external getExpoPushTokenAsync: unit => Js.Promise.t<string> = "getExpoPushTokenAsync"

@module("expo") @scope("Notifications")
external presentLocalNotificationAsync: {..} => Js.Promise.t<string> =
  "presentLocalNotificationAsync"

@module("expo") @scope("Notifications")
external scheduleLocalNotificationAsync: ({..}, {..}) => Js.Promise.t<string> =
  "scheduleLocalNotificationAsync"

@module("expo") @scope("Notifications")
external dismissNotificationAsync: string => Js.Promise.t<unit> = "dismissNotificationAsync"

@module("expo") @scope("Notifications")
external dismissAllNotificationsAsync: unit => Js.Promise.t<unit> = "dismissAllNotificationsAsync"

@module("expo") @scope("Notifications")
external cancelScheduledNotificationAsync: string => Js.Promise.t<unit> =
  "cancelScheduledNotificationAsync"

@module("expo") @scope("Notifications")
external cancelAllScheduledNotificationsAsync: unit => Js.Promise.t<unit> =
  "cancelAllScheduledNotificationsAsync"

@module("expo") @scope("Notifications")
external getBadgeNumberAsync: unit => Js.Promise.t<int> = "getBadgeNumberAsync"

@module("expo") @scope("Notifications")
external setBadgeNumberAsync: int => Js.Promise.t<unit> = "setBadgeNumberAsync"

type gcmSenderId = string
type getDevicePushTokenAsyncResponse = {
  @as("type")
  _type: string,
  data: string,
}
@module("expo") @scope("Notifications")
external getDevicePushTokenAsync: gcmSenderId => Js.Promise.t<getDevicePushTokenAsyncResponse> =
  "getDevicePushTokenAsync"
type createCategoryAsyncProps = {
  actionId: string,
  buttonTitle: string,
  textInput: Js.Undefined.t<{"submitButtonTitle": string, "placeholder": string}>,
  isDestructive: bool,
  isAuthenticationRequired: bool,
}
@module("expo") @scope("Notifications")
external createCategoryAsync: (string, array<createCategoryAsyncProps>) => Js.Promise.t<unit> =
  "createCategoryAsync"

@module("expo") @scope("Notifications")
external deleteCategoryAsync: string => Js.Promise.t<unit> = "deleteCategoryAsync"

type channelAndroid = {
  name: string,
  description: option<string>,
  sound: option<bool>,
  priority: option<string>,
  vibrate: option<array<int>>,
  badge: option<bool>,
}

@module("expo") @scope("Notifications")
external createChannelAndroidAsync: (string, channelAndroid) => Js.Promise.t<unit> =
  "createChannelAndroidAsync"
@module("expo") @scope("Notifications")
external deleteChannelAndroidAsync: string => Js.Promise.t<unit> = "deleteChannelAndroidAsync"
