module Fields = {
  type t

  @module("expo-contacts") @scope("Fields") external id: t = "ID"

  @module("expo-contacts") @scope("Fields") external name: t = "Name"

  @module("expo-contacts") @scope("Fields")
  external firstName: t = "FirstName"

  @module("expo-contacts") @scope("Fields")
  external middleName: t = "MiddleName"

  @module("expo-contacts") @scope("Fields")
  external lastName: t = "LastName"

  @module("expo-contacts") @scope("Fields")
  external namePrefix: t = "NamePrefix"

  @module("expo-contacts") @scope("Fields")
  external nameSuffix: t = "NameSuffix"

  @module("expo-contacts") @scope("Fields")
  external phoneticFirstName: t = "PhoneticFirstName"

  @module("expo-contacts") @scope("Fields")
  external phoneticMiddleName: t = "PhoneticMiddleName"

  @module("expo-contacts") @scope("Fields")
  external phoneticLastName: t = "PhoneticLastName"

  @module("expo-contacts") @scope("Fields")
  external birthday: t = "Birthday"

  @module("expo-contacts") @scope("Fields")
  external emails: t = "Emails"

  @module("expo-contacts") @scope("Fields")
  external phoneNumbers: t = "PhoneNumbers"

  @module("expo-contacts") @scope("Fields")
  external addresses: t = "Addresses"

  @module("expo-contacts") @scope("Fields")
  external instantMessageAddresses: t = "InstantMessageAddresses"

  @module("expo-contacts") @scope("Fields")
  external urlAddresses: t = "UrlAddresses"

  @module("expo-contacts") @scope("Fields")
  external company: t = "Company"

  @module("expo-contacts") @scope("Fields")
  external jobTitle: t = "JobTitle"

  @module("expo-contacts") @scope("Fields")
  external department: t = "Department"

  @module("expo-contacts") @scope("Fields")
  external imageAvailable: t = "ImageAvailable"

  @module("expo-contacts") @scope("Fields")
  external image: t = "Image"

  @module("expo-contacts") @scope("Fields") external note: t = "Note"

  @module("expo-contacts") @scope("Fields")
  external dates: t = "Dates"

  @module("expo-contacts") @scope("Fields")
  external relationships: t = "Relationships"

  @module("expo-contacts") @scope("Fields")
  external nickname: t = "Nickname"

  @module("expo-contacts") @scope("Fields")
  external rawImage: t = "RawImage"

  @module("expo-contacts") @scope("Fields")
  external maidenName: t = "MaidenName"

  @module("expo-contacts") @scope("Fields")
  external contactType: t = "ContactType"

  @module("expo-contacts") @scope("Fields")
  external socialProfiles: t = "SocialProfiles"

  @module("expo-contacts") @scope("Fields")
  external nonGregorianBirthday: t = "NonGregorianBirthday"

  @deprecated("Use `Fields.image` instead.") @module("expo-contacts") @scope("Fields")
  external thumbnail: t = "Thumbnail"

  @deprecated("Use `Fields.maidenName` instead.") @module("expo-contacts") @scope("Fields")
  external previousLastName: t = "PreviousLastName"
}

module FormTypes = {
  type t

  @module("expo-contacts") @scope("FormTypes")
  external new_: t = "New"

  @module("expo-contacts") @scope("FormTypes")
  external unknown: t = "Unknown"

  @module("expo-contacts") @scope("FormTypes")
  external default: t = "Default"
}

module ContactTypes = {
  type t

  @module("expo-contacts") @scope("ContactTypes")
  external person: t = "Person"

  @module("expo-contacts") @scope("ContactTypes")
  external company: t = "Company"
}

module SortTypes = {
  type t

  @module("expo-contacts") @scope("SortTypes")
  external firstName: t = "FirstName"

  @module("expo-contacts") @scope("SortTypes")
  external lastName: t = "LastName"

  @module("expo-contacts") @scope("SortTypes")
  external userDefault: t = "UserDefault"
}

module ContainerTypes = {
  type t

  @module("expo-contacts") @scope("ContainerTypes")
  external local: t = "Local"

  @module("expo-contacts") @scope("ContainerTypes")
  external exchange: t = "Exchange"

  @module("expo-contacts") @scope("ContainerTypes")
  external cardDAV: t = "CardDAV"

  @module("expo-contacts") @scope("ContainerTypes")
  external unassigned: t = "Unassigned"
}

module CalendarFormats = {
  type t

  @module("expo-contacts") @scope("CalendarFormats")
  external gregorian: t = "Gregorian"

  @module("expo-contacts") @scope("CalendarFormats")
  external chinese: t = "Chinese"

  @module("expo-contacts") @scope("CalendarFormats")
  external hebrew: t = "Hebrew"

  @module("expo-contacts") @scope("CalendarFormats")
  external islamic: t = "Islamic"
}

type image = {
  uri: string,
  width: int,
  height: int,
  base64: string,
}

type date = {
  day: int,
  month: int,
  year: int,
  format: CalendarFormats.t,
  id: string,
  label: string,
}

type relationship = {
  name: string,
  id: string,
  label: string,
}

type email = {
  email: string,
  isPrimary: bool,
  id: string,
  label: string,
}

type phoneNumber = {
  number: string,
  isPrimary: bool,
  digits: string,
  countryCode: string,
  id: string,
  label: string,
}

type address = {
  street: string,
  city: string,
  country: string,
  region: string,
  neneighborhood: string,
  postalCode: string,
  poBox: string,
  isoCountryCode: string,
  id: string,
  label: string,
}

type group = {
  id: string,
  name: string,
}

type container = {
  id: string,
  name: string,
}

type socialProfile = {
  service: string,
  username: string,
  localizedProfile: string,
  url: string,
  userId: string,
  id: string,
  label: string,
}

type instantMessageAddress = {
  service: string,
  username: string,
  localizedService: string,
  id: string,
  label: string,
}

type urlAddress = {
  url: string,
  id: string,
  label: string,
}

type formOptions = {
  displayedPropertyKeys: array<Fields.t>,
  message: string,
  alternateName: string,
  cancelButtonTitle: string,
  groupId: string,
  allowsEditing: bool,
  allowsActions: bool,
  shouldShowLinkedContacts: bool,
  isNew: bool,
  preventAnimation: bool,
}

type contactQuery = {
  fields: array<Fields.t>,
  pageSize: int,
  pageOffset: int,
  id: string,
  sort: SortTypes.t,
  name: string,
  groupId: string,
  containerId: string,
  rawContacts: bool,
}

type groupQuery = {
  groupName: string,
  groupId: string,
  containerId: string,
}

type containerQuery = {
  contactId: string,
  groupId: string,
  containerId: string,
}

type contact = {
  id: string,
  name: string,
  firstName: string,
  middleName: string,
  lastName: string,
  maidenName: string,
  namePrefix: string,
  nameSuffix: string,
  nickname: string,
  phoneticFirstName: string,
  phoneticMiddleName: string,
  phoneticLastName: string,
  company: string,
  jobTitle: string,
  department: string,
  note: string,
  imageAvailable: bool,
  image: image,
  rawImage: image,
  contactType: ContactTypes.t,
  birthday: date,
  dates: array<date>,
  relationships: array<relationship>,
  emails: array<email>,
  phoneNumbers: array<phoneNumber>,
  addresses: array<address>,
  instantMessageAddresses: array<instantMessageAddress>,
  urlAddresses: array<urlAddress>,
  nonGregorianBirthday: date,
  socialProfiles: array<socialProfile>,
}

type contactResponse = {
  data: array<contact>,
  hasNextPage: bool,
  hasPreviousPage: bool,
}

@module("expo-contacts")
external getContactsAsync: contactQuery => Js.Promise.t<contactResponse> = "getContactsAsync"

@module("expo-contacts")
external getContactByIdAsync: (string, array<Fields.t>) => Js.Promise.t<contact> =
  "getContactByIdAsync"

@module("expo-contacts")
external addContactAsync: (contact, string) => Js.Promise.t<string> = "getContactByIdAsync"

@module("expo-contacts")
external updateContactAsync: contact => Js.Promise.t<string> = "updateContactAsync"

@module("expo-contacts")
external removeContactAsync: string => Js.Promise.t<unit> = "removeContactAsync"

@module("expo-contacts")
external writeContactToFileAsync: contactQuery => Js.Promise.t<string> = "writeContactToFileAsync"

@module("expo-contacts")
external presentFormAsync: (string, contact, formOptions) => Js.Promise.t<unit> = "presentFormAsync"

@module("expo-contacts")
external addExistingGroupToContainerAsync: (string, string) => Js.Promise.t<unit> =
  "addExistingGroupToContainerAsync"

@module("expo-contacts")
external createGroupAsync: (string, Js.Nullable.t<string>) => Js.Promise.t<string> =
  "createGroupAsync"

@module("expo-contacts")
external updateGroupNameAsync: (string, string) => Js.Promise.t<unit> = "updateGroupNameAsync"

@module("expo-contacts")
external removeGroupAsync: string => Js.Promise.t<unit> = "removeGroupAsync"

@module("expo-contacts")
external addExistingContactToGroupAsync: (string, string) => Js.Promise.t<unit> =
  "addExistingContactToGroupAsync"

@module("expo-contacts")
external removeContactFromGroupAsync: (string, string) => Js.Promise.t<unit> =
  "removeContactFromGroupAsync"

@module("expo-contacts")
external getGroupsAsync: groupQuery => Js.Promise.t<array<group>> = "getGroupsAsync"

@module("expo-contacts")
external getDefaultContainerIdAsync: unit => Js.Promise.t<string> = "getDefaultContainerIdAsync"

@module("expo-contacts")
external getContainersAsync: containerQuery => Js.Promise.t<array<container>> = "getContainersAsync"
