type options
@obj
external options: (~authUrl: string, ~returnUrl: string=?) => options = ""

type result<'paramType, 'eventType> = {
  @as("type")
  _type: string,
  params: option<'paramType>,
  event: option<'eventType>,
  errorCode: option<string>,
}

@module("expo") @scope("AuthSession")
external startAsync: options => Js.Promise.t<result<'paramType, 'eventType>> = "startAsync"

@module("expo") @scope("AuthSession")
external dismiss: unit => unit = "dismiss"

@module("expo") @scope("AuthSession")
external getRedirectUrl: unit => string = "getRedirectUrl"
