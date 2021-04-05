@scope("StoreReview") @module("expo")
external requestReview: unit => unit = "requestReview"

@scope("StoreReview") @module("expo")
external isSupported: unit => bool = "isSupported"

@scope("StoreReview") @module("expo")
external storeUrl: unit => string = "storeUrl"

@scope("StoreReview") @module("expo")
external hasAction: unit => bool = "hasAction"
