(library (system current-system-time-zone)
  (export is?
          current-system-time-zone?
          get-daylight-changes
          get-utc-offset
          daylight-name
          standard-name)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.CurrentSystemTimeZone a))
  (define (current-system-time-zone? a)
    (clr-is System.CurrentSystemTimeZone a))
  (define-method-port
    get-daylight-changes
    System.CurrentSystemTimeZone
    GetDaylightChanges
    (System.Globalization.DaylightTime System.Int32))
  (define-method-port
    get-utc-offset
    System.CurrentSystemTimeZone
    GetUtcOffset
    (System.TimeSpan System.DateTime))
  (define-field-port
    daylight-name
    #f
    #f
    (property:)
    System.CurrentSystemTimeZone
    DaylightName
    System.String)
  (define-field-port
    standard-name
    #f
    #f
    (property:)
    System.CurrentSystemTimeZone
    StandardName
    System.String))
