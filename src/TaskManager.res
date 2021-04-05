@module("expo-task-manager")
external defineTask: (string, 'a => unit) => unit = "defineTask"

@module("expo-task-manager")
external isTaskRegisteredAsync: string => Js.Promise.t<bool> = "isTaskRegisteredAsync"

@module("expo-task-manager")
external getTaskOptionsAsync: string => Js.Promise.t<'a> = "getTaskOptionsAsync"

type getRegisteredTasksAsyncResponse<'a> = {
  taskName: string,
  taskType: string,
  options: 'a,
}

@module("expo-task-manager")
external getRegisteredTasksAsync: unit => Js.Promise.t<array<getRegisteredTasksAsyncResponse<'a>>> =
  "getRegisteredTasksAsync"

@module("expo-task-manager")
external unregisterTaskAsync: string => Js.Promise.t<unit> = "unregisterTaskAsync"

@module("expo-task-manager")
external unregisterAllTasksAsync: unit => Js.Promise.t<unit> = "unregisterAllTasksAsync"
