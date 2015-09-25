(library (system globalization hebrew-calendar)
  (export new
          is?
          hebrew-calendar?
          get-year
          is-leap-year?
          add-years
          get-era
          get-day-of-year
          get-day-of-month
          get-month
          get-days-in-year
          add-months
          get-leap-month
          to-date-time
          get-day-of-week
          get-days-in-month
          is-leap-day?
          is-leap-month?
          to-four-digit-year
          get-months-in-year
          hebrew-era
          eras
          two-digit-year-max-get
          two-digit-year-max-set!
          two-digit-year-max-update!
          algorithm-type
          min-supported-date-time
          max-supported-date-time)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Globalization.HebrewCalendar a ...)))))
  (define (is? a) (clr-is System.Globalization.HebrewCalendar a))
  (define (hebrew-calendar? a)
    (clr-is System.Globalization.HebrewCalendar a))
  (define-method-port
    get-year
    System.Globalization.HebrewCalendar
    GetYear
    (System.Int32 System.DateTime))
  (define-method-port
    is-leap-year?
    System.Globalization.HebrewCalendar
    IsLeapYear
    (System.Boolean System.Int32 System.Int32))
  (define-method-port
    add-years
    System.Globalization.HebrewCalendar
    AddYears
    (System.DateTime System.DateTime System.Int32))
  (define-method-port
    get-era
    System.Globalization.HebrewCalendar
    GetEra
    (System.Int32 System.DateTime))
  (define-method-port
    get-day-of-year
    System.Globalization.HebrewCalendar
    GetDayOfYear
    (System.Int32 System.DateTime))
  (define-method-port
    get-day-of-month
    System.Globalization.HebrewCalendar
    GetDayOfMonth
    (System.Int32 System.DateTime))
  (define-method-port
    get-month
    System.Globalization.HebrewCalendar
    GetMonth
    (System.Int32 System.DateTime))
  (define-method-port
    get-days-in-year
    System.Globalization.HebrewCalendar
    GetDaysInYear
    (System.Int32 System.Int32 System.Int32))
  (define-method-port
    add-months
    System.Globalization.HebrewCalendar
    AddMonths
    (System.DateTime System.DateTime System.Int32))
  (define-method-port
    get-leap-month
    System.Globalization.HebrewCalendar
    GetLeapMonth
    (System.Int32 System.Int32 System.Int32))
  (define-method-port
    to-date-time
    System.Globalization.HebrewCalendar
    ToDateTime
    (System.DateTime
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32))
  (define-method-port
    get-day-of-week
    System.Globalization.HebrewCalendar
    GetDayOfWeek
    (System.DayOfWeek System.DateTime))
  (define-method-port
    get-days-in-month
    System.Globalization.HebrewCalendar
    GetDaysInMonth
    (System.Int32 System.Int32 System.Int32 System.Int32))
  (define-method-port
    is-leap-day?
    System.Globalization.HebrewCalendar
    IsLeapDay
    (System.Boolean
      System.Int32
      System.Int32
      System.Int32
      System.Int32))
  (define-method-port
    is-leap-month?
    System.Globalization.HebrewCalendar
    IsLeapMonth
    (System.Boolean System.Int32 System.Int32 System.Int32))
  (define-method-port
    to-four-digit-year
    System.Globalization.HebrewCalendar
    ToFourDigitYear
    (System.Int32 System.Int32))
  (define-method-port
    get-months-in-year
    System.Globalization.HebrewCalendar
    GetMonthsInYear
    (System.Int32 System.Int32 System.Int32))
  (define-field-port
    hebrew-era
    #f
    #f
    (static:)
    System.Globalization.HebrewCalendar
    HebrewEra
    System.Int32)
  (define-field-port
    eras
    #f
    #f
    (property:)
    System.Globalization.HebrewCalendar
    Eras
    System.Int32[])
  (define-field-port
    two-digit-year-max-get
    two-digit-year-max-set!
    two-digit-year-max-update!
    (property:)
    System.Globalization.HebrewCalendar
    TwoDigitYearMax
    System.Int32)
  (define-field-port
    algorithm-type
    #f
    #f
    (property:)
    System.Globalization.HebrewCalendar
    AlgorithmType
    System.Globalization.CalendarAlgorithmType)
  (define-field-port
    min-supported-date-time
    #f
    #f
    (property:)
    System.Globalization.HebrewCalendar
    MinSupportedDateTime
    System.DateTime)
  (define-field-port
    max-supported-date-time
    #f
    #f
    (property:)
    System.Globalization.HebrewCalendar
    MaxSupportedDateTime
    System.DateTime))
