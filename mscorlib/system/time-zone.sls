(library (system time-zone)
  (export is?
          time-zone?
          is-daylight-saving-time?
          get-daylight-changes
          to-universal-time
          to-local-time
          get-utc-offset
          current-time-zone
          daylight-name
          standard-name)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.TimeZone a))
  (define (time-zone? a) (clr-is System.TimeZone a))
  (define-method-port
    is-daylight-saving-time?
    System.TimeZone
    IsDaylightSavingTime
    (static:
      System.Boolean
      System.DateTime
      System.Globalization.DaylightTime)
    (System.Boolean System.DateTime))
  (define-method-port
    get-daylight-changes
    System.TimeZone
    GetDaylightChanges
    (System.Globalization.DaylightTime System.Int32))
  (define-method-port
    to-universal-time
    System.TimeZone
    ToUniversalTime
    (System.DateTime System.DateTime))
  (define-method-port
    to-local-time
    System.TimeZone
    ToLocalTime
    (System.DateTime System.DateTime))
  (define-method-port
    get-utc-offset
    System.TimeZone
    GetUtcOffset
    (System.TimeSpan System.DateTime))
  (define-field-port
    current-time-zone
    #f
    #f
    (static: property:)
    System.TimeZone
    CurrentTimeZone
    System.TimeZone)
  (define-field-port
    daylight-name
    #f
    #f
    (property:)
    System.TimeZone
    DaylightName
    System.String)
  (define-field-port
    standard-name
    #f
    #f
    (property:)
    System.TimeZone
    StandardName
    System.String))
