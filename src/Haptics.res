type t

@module("expo-haptics") @scope("NotificationFeedbackType")
external success: t = "Success"

@module("expo-haptics") @scope("NotificationFeedbackType")
external warning: t = "Warning"

@module("expo-haptics") @scope("NotificationFeedbackType")
external error: t = "Error"

@module("expo-haptics") @scope("ImpactFeedbackStyle")
external light: t = "Light"

@module("expo-haptics") @scope("ImpactFeedbackStyle")
external medium: t = "Medium"

@module("expo-haptics") @scope("ImpactFeedbackStyle")
external heavy: t = "Heavy"

@module("expo-haptics")
external selectionAsync: unit => unit = "selectionAsync"

@module("expo-haptics")
external notificationAsync: t => unit = "notificationAsync"

@module("expo-haptics") external impactAsync: t => unit = "impactAsync"
