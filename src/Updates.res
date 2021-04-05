type updateCheckResult<'manifestType> = {
  isAvailable: bool,
  manifest: 'manifestType,
}

type updateFetchResult<'manifestType> = {
  isNew: bool,
  manifest: 'manifestType,
}

type event<'manifestType> = {
  @as("type")
  _type: string,
  manifest: 'manifestType,
  message: option<string>,
}

type eventSubscription = {remove: unit => unit}

@module("expo") @scope("Updates")
external reload: unit => unit = "reload"

@module("expo") @scope("Updates")
external reloadFromCache: unit => unit = "reloadFromCache"

@module("expo") @scope("Updates")
external checkForUpdateAsync: unit => Js.Promise.t<updateCheckResult<'manifestType>> =
  "checkForUpdateAsync"

@module("expo") @scope("Updates")
external fetchUpdateAsync: (event<'manifestType> => unit) => Js.Promise.t<
  updateFetchResult<'manifestType>,
> = "fetchUpdateAsync"

@module("expo") @scope("Updates")
external addListener: (event<'manifestType> => unit) => eventSubscription = "addListener"
