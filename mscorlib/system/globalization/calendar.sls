(library (system globalization calendar)
  (export is?
          calendar?
          get-year
          is-leap-year?
          add-years
          get-era
          add-milliseconds
          add-weeks
          add-days
          add-seconds
          get-month
          get-days-in-year
          add-months
          get-leap-month
          get-minute
          get-hour
          get-day-of-year
          read-only
          to-date-time
          get-day-of-week
          get-day-of-month
          get-week-of-year
          get-second
          get-days-in-month
          is-leap-day?
          add-hours
          is-leap-month?
          clone
          to-four-digit-year
          add-minutes
          get-months-in-year
          get-milliseconds
          current-era
          eras
          algorithm-type
          max-supported-date-time
          min-supported-date-time
          is-read-only?
          two-digit-year-max-get
          two-digit-year-max-set!
          two-digit-year-max-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Globalization.Calendar a))
  (define (calendar? a) (clr-is System.Globalization.Calendar a))
  (define-method-port
    get-year
    System.Globalization.Calendar
    GetYear
    (System.Int32 System.DateTime))
  (define-method-port
    is-leap-year?
    System.Globalization.Calendar
    IsLeapYear
    (System.Boolean System.Int32 System.Int32)
    (System.Boolean System.Int32))
  (define-method-port
    add-years
    System.Globalization.Calendar
    AddYears
    (System.DateTime System.DateTime System.Int32))
  (define-method-port
    get-era
    System.Globalization.Calendar
    GetEra
    (System.Int32 System.DateTime))
  (define-method-port
    add-milliseconds
    System.Globalization.Calendar
    AddMilliseconds
    (System.DateTime System.DateTime System.Double))
  (define-method-port
    add-weeks
    System.Globalization.Calendar
    AddWeeks
    (System.DateTime System.DateTime System.Int32))
  (define-method-port
    add-days
    System.Globalization.Calendar
    AddDays
    (System.DateTime System.DateTime System.Int32))
  (define-method-port
    add-seconds
    System.Globalization.Calendar
    AddSeconds
    (System.DateTime System.DateTime System.Int32))
  (define-method-port
    get-month
    System.Globalization.Calendar
    GetMonth
    (System.Int32 System.DateTime))
  (define-method-port
    get-days-in-year
    System.Globalization.Calendar
    GetDaysInYear
    (System.Int32 System.Int32 System.Int32)
    (System.Int32 System.Int32))
  (define-method-port
    add-months
    System.Globalization.Calendar
    AddMonths
    (System.DateTime System.DateTime System.Int32))
  (define-method-port
    get-leap-month
    System.Globalization.Calendar
    GetLeapMonth
    (System.Int32 System.Int32 System.Int32)
    (System.Int32 System.Int32))
  (define-method-port
    get-minute
    System.Globalization.Calendar
    GetMinute
    (System.Int32 System.DateTime))
  (define-method-port
    get-hour
    System.Globalization.Calendar
    GetHour
    (System.Int32 System.DateTime))
  (define-method-port
    get-day-of-year
    System.Globalization.Calendar
    GetDayOfYear
    (System.Int32 System.DateTime))
  (define-method-port
    read-only
    System.Globalization.Calendar
    ReadOnly
    (static:
      System.Globalization.Calendar
      System.Globalization.Calendar))
  (define-method-port
    to-date-time
    System.Globalization.Calendar
    ToDateTime
    (System.DateTime
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32)
    (System.DateTime
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32))
  (define-method-port
    get-day-of-week
    System.Globalization.Calendar
    GetDayOfWeek
    (System.DayOfWeek System.DateTime))
  (define-method-port
    get-day-of-month
    System.Globalization.Calendar
    GetDayOfMonth
    (System.Int32 System.DateTime))
  (define-method-port
    get-week-of-year
    System.Globalization.Calendar
    GetWeekOfYear
    (System.Int32
      System.DateTime
      System.Globalization.CalendarWeekRule
      System.DayOfWeek))
  (define-method-port
    get-second
    System.Globalization.Calendar
    GetSecond
    (System.Int32 System.DateTime))
  (define-method-port
    get-days-in-month
    System.Globalization.Calendar
    GetDaysInMonth
    (System.Int32 System.Int32 System.Int32 System.Int32)
    (System.Int32 System.Int32 System.Int32))
  (define-method-port
    is-leap-day?
    System.Globalization.Calendar
    IsLeapDay
    (System.Boolean System.Int32 System.Int32 System.Int32 System.Int32)
    (System.Boolean System.Int32 System.Int32 System.Int32))
  (define-method-port
    add-hours
    System.Globalization.Calendar
    AddHours
    (System.DateTime System.DateTime System.Int32))
  (define-method-port
    is-leap-month?
    System.Globalization.Calendar
    IsLeapMonth
    (System.Boolean System.Int32 System.Int32 System.Int32)
    (System.Boolean System.Int32 System.Int32))
  (define-method-port
    clone
    System.Globalization.Calendar
    Clone
    (System.Object))
  (define-method-port
    to-four-digit-year
    System.Globalization.Calendar
    ToFourDigitYear
    (System.Int32 System.Int32))
  (define-method-port
    add-minutes
    System.Globalization.Calendar
    AddMinutes
    (System.DateTime System.DateTime System.Int32))
  (define-method-port
    get-months-in-year
    System.Globalization.Calendar
    GetMonthsInYear
    (System.Int32 System.Int32 System.Int32)
    (System.Int32 System.Int32))
  (define-method-port
    get-milliseconds
    System.Globalization.Calendar
    GetMilliseconds
    (System.Double System.DateTime))
  (define-field-port
    current-era
    #f
    #f
    (static:)
    System.Globalization.Calendar
    CurrentEra
    System.Int32)
  (define-field-port
    eras
    #f
    #f
    (property:)
    System.Globalization.Calendar
    Eras
    System.Int32[])
  (define-field-port
    algorithm-type
    #f
    #f
    (property:)
    System.Globalization.Calendar
    AlgorithmType
    System.Globalization.CalendarAlgorithmType)
  (define-field-port
    max-supported-date-time
    #f
    #f
    (property:)
    System.Globalization.Calendar
    MaxSupportedDateTime
    System.DateTime)
  (define-field-port
    min-supported-date-time
    #f
    #f
    (property:)
    System.Globalization.Calendar
    MinSupportedDateTime
    System.DateTime)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Globalization.Calendar
    IsReadOnly
    System.Boolean)
  (define-field-port
    two-digit-year-max-get
    two-digit-year-max-set!
    two-digit-year-max-update!
    (property:)
    System.Globalization.Calendar
    TwoDigitYearMax
    System.Int32))
