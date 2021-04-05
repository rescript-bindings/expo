@module("expo") @scope("Linking")
external makeUrl: (string, 'a) => string = "makeUrl"

type pathObject<'a> = {
  path: string,
  queryParams: 'a,
}

@module("expo") @scope("Linking")
external parse: string => pathObject<'a> = "parse"

@module("expo") @scope("Linking")
external parseInitialURLAsync: unit => Js.Promise.t<pathObject<'a>> = "parseInitialURLAsync"
