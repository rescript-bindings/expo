module AttendeeStatus = {
  type t = string

  @module("expo-calendar") @scope("AttendeeStatus")
  external accepted: t = "ACCEPTED"

  @module("expo-calendar") @scope("AttendeeStatus")
  external declined: t = "DECLINED"

  @module("expo-calendar") @scope("AttendeeStatus")
  external tentative: t = "TENTATIVE"

  @module("expo-calendar") @scope("AttendeeStatus")
  external delegated: t = "DELEGATED"

  @module("expo-calendar") @scope("AttendeeStatus")
  external completed: t = "COMPLETED"

  @module("expo-calendar") @scope("AttendeeStatus")
  external inProcess: t = "IN_PROCESS"

  @module("expo-calendar") @scope("AttendeeStatus")
  external unknown: t = "UNKNOWN"

  @module("expo-calendar") @scope("AttendeeStatus")
  external pending: t = "PENDING"

  @module("expo-calendar") @scope("AttendeeStatus")
  external invited: t = "INVITED"

  @module("expo-calendar") @scope("AttendeeStatus")
  external none: t = "NONE"
}

module EventStatus = {
  type t = string

  @module("expo-calendar") @scope("EventStatus")
  external none: t = "NONE"

  @module("expo-calendar") @scope("EventStatus")
  external confirmed: t = "CONFIRMED"

  @module("expo-calendar") @scope("EventStatus")
  external tentative: t = "TENTATIVE"

  @module("expo-calendar") @scope("EventStatus")
  external canceled: t = "CANCELED"
}

module Frequency = {
  type t = string

  @module("expo-calendar") @scope("Frequency")
  external daily: t = "DAILY"

  @module("expo-calendar") @scope("Frequency")
  external weekly: t = "WEEKLY"

  @module("expo-calendar") @scope("Frequency")
  external monthly: t = "MONTHLY"

  @module("expo-calendar") @scope("Frequency")
  external yearly: t = "YEARLY"
}

module EventAccessLevel = {
  type t = string

  @module("expo-calendar") @scope("EventAccessLevel")
  external confidential: t = "CONFIDENTIAL"

  @module("expo-calendar") @scope("EventAccessLevel")
  external priv: t = "PRIVATE"

  @module("expo-calendar") @scope("EventAccessLevel")
  external public: t = "PUBLIC"
}

module CalendarAccessLevel = {
  type t = string

  @module("expo-calendar") @scope("CalendarAccessLevel")
  external contributor: t = "CONTRIBUTOR"

  @module("expo-calendar") @scope("CalendarAccessLevel")
  external editor: t = "EDITOR"

  @module("expo-calendar") @scope("CalendarAccessLevel")
  external freebusy: t = "FREEBUSY"

  @module("expo-calendar") @scope("CalendarAccessLevel")
  external override: t = "OVERRIDE"

  @module("expo-calendar") @scope("CalendarAccessLevel")
  external owner: t = "OWNER"

  @module("expo-calendar") @scope("CalendarAccessLevel")
  external read: t = "READ"

  @module("expo-calendar") @scope("CalendarAccessLevel")
  external respond: t = "RESPOND"

  @module("expo-calendar") @scope("CalendarAccessLevel")
  external root: t = "ROOT"

  @module("expo-calendar") @scope("CalendarAccessLevel")
  external none: t = "NONE"
}

module AttendeeType = {
  type t = string

  @module("expo-calendar") @scope("AttendeeType")
  external unknown: t = "UNKNOWN"

  @module("expo-calendar") @scope("AttendeeType")
  external person: t = "PERSON"

  @module("expo-calendar") @scope("AttendeeType")
  external room: t = "ROOM"

  @module("expo-calendar") @scope("AttendeeType")
  external group: t = "GROUP"

  @module("expo-calendar") @scope("AttendeeType")
  external resource: t = "RESOURCE"

  @module("expo-calendar") @scope("AttendeeType")
  external optional: t = "OPTIONAL"

  @module("expo-calendar") @scope("AttendeeType")
  external required: t = "REQUIRED"

  @module("expo-calendar") @scope("AttendeeType")
  external none: t = "NONE"
}

module AttendeeRole = {
  type t = string

  @module("expo-calendar") @scope("AttendeeRole")
  external unknown: t = "UNKNOWN"

  @module("expo-calendar") @scope("AttendeeRole")
  external required: t = "REQUIRED"

  @module("expo-calendar") @scope("AttendeeRole")
  external optional: t = "OPTIONAL"

  @module("expo-calendar") @scope("AttendeeRole")
  external nonParticipant: t = "NON_PARTICIPANT"

  @module("expo-calendar") @scope("AttendeeRole")
  external attendee: t = "ATTENDEE"

  @module("expo-calendar") @scope("AttendeeRole")
  external organizer: t = "ORGANIZER"

  @module("expo-calendar") @scope("AttendeeRole")
  external performer: t = "PERFORMER"

  @module("expo-calendar") @scope("AttendeeRole")
  external speaker: t = "SPEAKER"

  @module("expo-calendar") @scope("AttendeeRole")
  external none: t = "none"
}

module Availability = {
  type t = string

  @module("expo-calendar") @scope("Availability")
  external busy: t = "BUSY"

  @module("expo-calendar") @scope("Availability")
  external free: t = "FREE"

  @module("expo-calendar") @scope("Availability")
  external tentative: t = "TENTATIVE"

  @module("expo-calendar") @scope("Availability")
  external unavailable: t = "UNAVAILABLE"

  @module("expo-calendar") @scope("Availability")
  external notSupported: t = "NOT_SUPPORTED"
}

module AlarmMethod = {
  type t = string

  @module("expo-calendar") @scope("AlarmMethod")
  external alarm: t = "ALARM"

  @module("expo-calendar") @scope("AlarmMethod")
  external alert: t = "ALERT"

  @module("expo-calendar") @scope("AlarmMethod")
  external email: t = "EMAIL"

  @module("expo-calendar") @scope("AlarmMethod")
  external sms: t = "SMS"
}

module EntityType = {
  type t = string

  @module("expo-calendar") @scope("EntityTypes")
  external event: t = "EVENT"

  @module("expo-calendar") @scope("EntityTypes")
  external reminder: t = "REMINDER"
}

module SourceType = {
  type t = string

  @module("expo-calendar") @scope("SourceType")
  external local: t = "LOCAL"

  @module("expo-calendar") @scope("SourceType")
  external exchange: t = "EXCHANGE"

  @module("expo-calendar") @scope("SourceType")
  external caldav: t = "CALDAV"

  @module("expo-calendar") @scope("SourceType")
  external mobileme: t = "MOBILEME"

  @module("expo-calendar") @scope("SourceType")
  external subscribed: t = "SUBSCRIBED"

  @module("expo-calendar") @scope("SourceType")
  external birthdays: t = "BIRTHDAYS"
}

type alarm = {
  absoluteDate: Js.Date.t,
  relativeOffset: int,
  method: AlarmMethod.t,
}

type recurrenceRule = {
  frequency: Frequency.t,
  interval: int,
  endDate: Js.Date.t,
  occurrence: int,
}

type attendee = {
  id: string,
  email: string,
  name: string,
  role: AttendeeRole.t,
  status: AttendeeStatus.t,
  @as("type")
  _type: string,
  url: option<string>,
  isCurrentUser: option<bool>,
}

type source = {
  id: string,
  name: string,
  @as("type")
  _type: SourceType.t,
  isLocalAccount: bool,
}

type calendar = {
  id: string,
  title: string,
  entityType: EntityType.t,
  source: source,
  color: string,
  allowsModifications: bool,
  @as("type")
  _type: string,
  isPrimary: bool,
  name: string,
  ownerAccount: string,
  timeZone: string,
  allowedAvailabilities: array<Availability.t>,
  allowedReminders: array<AlarmMethod.t>,
  allowedAttendeeTypes: array<AttendeeType.t>,
  isVisible: bool,
  isSynced: bool,
  accessLevel: CalendarAccessLevel.t,
}

type event = {
  id: string,
  calendarId: string,
  title: string,
  startDate: Js.Date.t,
  endDate: Js.Date.t,
  allDay: bool,
  location: string,
  notes: string,
  alarms: array<alarm>,
  recurrenceRule: recurrenceRule,
  availability: Availability.t,
  timeZone: string,
  endTimeZone: string,
  url: string,
  creationDate: string,
  ladtModifiedDate: string,
  originalStartDate: string,
  isDetached: bool,
  status: EventStatus.t,
  organizer: attendee,
  organizerEmail: string,
  accessLevel: EventAccessLevel.t,
  guestsCanModify: bool,
  guestsCanInviteOthers: bool,
  guestsCanSeeGuests: bool,
  originalId: string,
  instanceId: string,
}

type reminder = {
  id: string,
  calendarId: string,
  title: string,
  startDate: Js.Date.t,
  dueDate: Js.Date.t,
  completed: bool,
  completionDate: Js.Date.t,
  location: string,
  notes: string,
  alarms: array<alarm>,
  recurrenceRule: recurrenceRule,
  timeZone: string,
  url: string,
  creationDate: string,
  lastModifiedDate: string,
}

@module("expo-calendar")
external getCalendarsAsync: EntityType.t => Js.Promise.t<array<calendar>> = "getCalendarsAsync"

type createCalendarAsyncDetails = {
  title: string,
  color: string,
  entityType: EntityType.t,
  sourceId: string,
  source: {"isLocalAccount": bool, "name": string, "_type": string},
  name: string,
  ownerAccount: string,
  timeZone: option<string>,
  allowedAvailabilities: option<array<Availability.t>>,
  allowedReminders: option<array<AlarmMethod.t>>,
  allowedAttendeeTypes: option<array<AttendeeType.t>>,
  isVisible: option<bool>,
  isSynced: option<bool>,
  accessLevel: string,
}

@module("expo-calendar")
external createCalendarAsync: createCalendarAsyncDetails => Js.Promise.t<string> =
  "createCalendarAsync"

type updateCalendarAsyncDetails = {
  title: Js.Nullable.t<string>,
  color: Js.Nullable.t<string>,
  name: Js.Nullable.t<string>,
  isVisible: Js.Nullable.t<bool>,
  isSynced: Js.Nullable.t<bool>,
}

@module("expo-calendar")
external updateCalendarAsync: (string, updateCalendarAsyncDetails) => Js.Promise.t<unit> =
  "updateCalendarAsync"

@module("expo-calendar")
external getEventsAsync: (array<string>, Js.Date.t, Js.Date.t) => Js.Promise.t<array<event>> =
  "updateCalendarAsync"

@module("expo-calendar")
external getEventAsync: (string, {"instanceStartDate": Js.Date.t}) => Js.Promise.t<event> =
  "getEventAsync"

type createEventAsyncDetails = {
  title: string,
  startDate: Js.Date.t,
  endDate: Js.Date.t,
  allDay: bool,
  location: string,
  notes: string,
  alarms: array<alarm>,
  recurrenceRule: recurrenceRule,
  availability: Availability.t,
  timeZone: string,
  endTimeZone: string,
  url: string,
  organizerEmail: string,
  accessLevel: string,
  guestsCanModify: bool,
  guestsCanInviteOthers: bool,
  guestsCanSeeGuests: bool,
}

@module("expo-calendar")
external createEventAsync: (string, createEventAsyncDetails) => Js.Promise.t<string> =
  "createEventAsync"

type updateEventAsyncDetails = {
  title: string,
  startDate: Js.Date.t,
  endDate: Js.Date.t,
  allDay: bool,
  location: string,
  notes: string,
  alarms: array<alarm>,
  recurrenceRule: recurrenceRule,
  availability: Availability.t,
  timeZone: string,
  endTimeZone: string,
  url: string,
  organizerEmail: string,
  accessLevel: string,
  guestsCanModify: bool,
  guestsCanInviteOthers: bool,
  guestsCanSeeGuests: bool,
}
type instanceStartDate = Js.Date.t
type futureEvents = {
  instanceStartDate: instanceStartDate,
  futureEvents: bool,
}
type updateEventAsyncProps = {
  string: string,
  updateEventAsyncDetails: updateEventAsyncDetails,
  futureEvents: futureEvents,
}
type deleteEventAsyncProps = {
  string: string,
  futureEvents: futureEvents,
}

@module("expo-calendar")
external updateEventAsync: updateEventAsyncProps => Js.Promise.t<unit> = "updateEventAsync"

@module("expo-calendar")
external deleteEventAsync: deleteEventAsyncProps => Js.Promise.t<unit> = "deleteEventAsync"

@module("expo-calendar")
external getAttendeesForEventAsync: (string, instanceStartDate) => Js.Promise.t<array<attendee>> =
  "getAttendeesForEventAsync"

@module("expo-calendar")
external createAttendeeAsync: (string, attendee) => Js.Promise.t<string> = "createAttendeeAsync"

@module("expo-calendar")
external updateAttendeeAsync: (
  string,
  {
    "id": string,
    "email": string,
    "name": string,
    "role": AttendeeRole.t,
    "status": AttendeeStatus.t,
    "_type": string,
  },
) => Js.Promise.t<unit> = "updateAttendeeAsync"

@module("expo-calendar")
external deleteAttendeeAsync: string => Js.Promise.t<unit> = "deleteAttendeeAsync"

@module("expo-calendar")
external getRemindersAsync: (
  array<string>,
  string,
  Js.Date.t,
  Js.Date.t,
) => Js.Promise.t<array<reminder>> = "getRemindersAsync"

@module("expo-calendar")
external getReminderAsync: string => Js.Promise.t<reminder> = "getReminderAsync"

@module("expo-calendar")
external createReminderAsync: (
  string,
  {
    "title": string,
    "startDate": Js.Date.t,
    "dueDate": Js.Date.t,
    "completed": bool,
    "completionDate": Js.Date.t,
    "location": string,
    "notes": string,
    "alarms": array<alarm>,
    "recurrenceRule": recurrenceRule,
    "timeZone": string,
    "url": string,
  },
) => Js.Promise.t<string> = "createReminderAsync"

@module("expo-calendar")
external updateReminderAsync: (
  string,
  {
    "title": string,
    "startDate": Js.Date.t,
    "dueDate": Js.Date.t,
    "completed": bool,
    "completionDate": Js.Date.t,
    "location": string,
    "notes": string,
    "alarms": array<alarm>,
    "recurrenceRule": recurrenceRule,
    "timeZone": string,
    "url": string,
  },
) => Js.Promise.t<string> = "updateReminderAsync"

@module("expo-calendar")
external deleteReminderAsync: string => Js.Promise.t<unit> = "deleteReminderAsync"

@module("expo-calendar")
external getSourcesAsync: unit => Js.Promise.t<array<source>> = "getSourcesAsync"

@module("expo-calendar")
external getSourceAsync: string => Js.Promise.t<source> = "getSourceAsync"

@module("expo-calendar")
external openEventInCalendar: string => unit = "openEventInCalendar"
