(library (system globalization taiwan-calendar)
  (export new
          is?
          taiwan-calendar?
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
          get-week-of-year
          get-days-in-month
          is-leap-day?
          is-leap-month?
          to-four-digit-year
          get-months-in-year
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
         #'(clr-new System.Globalization.TaiwanCalendar a ...)))))
  (define (is? a) (clr-is System.Globalization.TaiwanCalendar a))
  (define (taiwan-calendar? a)
    (clr-is System.Globalization.TaiwanCalendar a))
  (define-method-port
    get-year
    System.Globalization.TaiwanCalendar
    GetYear
    (System.Int32 System.DateTime))
  (define-method-port
    is-leap-year?
    System.Globalization.TaiwanCalendar
    IsLeapYear
    (System.Boolean System.Int32 System.Int32))
  (define-method-port
    add-years
    System.Globalization.TaiwanCalendar
    AddYears
    (System.DateTime System.DateTime System.Int32))
  (define-method-port
    get-era
    System.Globalization.TaiwanCalendar
    GetEra
    (System.Int32 System.DateTime))
  (define-method-port
    get-day-of-year
    System.Globalization.TaiwanCalendar
    GetDayOfYear
    (System.Int32 System.DateTime))
  (define-method-port
    get-day-of-month
    System.Globalization.TaiwanCalendar
    GetDayOfMonth
    (System.Int32 System.DateTime))
  (define-method-port
    get-month
    System.Globalization.TaiwanCalendar
    GetMonth
    (System.Int32 System.DateTime))
  (define-method-port
    get-days-in-year
    System.Globalization.TaiwanCalendar
    GetDaysInYear
    (System.Int32 System.Int32 System.Int32))
  (define-method-port
    add-months
    System.Globalization.TaiwanCalendar
    AddMonths
    (System.DateTime System.DateTime System.Int32))
  (define-method-port
    get-leap-month
    System.Globalization.TaiwanCalendar
    GetLeapMonth
    (System.Int32 System.Int32 System.Int32))
  (define-method-port
    to-date-time
    System.Globalization.TaiwanCalendar
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
    System.Globalization.TaiwanCalendar
    GetDayOfWeek
    (System.DayOfWeek System.DateTime))
  (define-method-port
    get-week-of-year
    System.Globalization.TaiwanCalendar
    GetWeekOfYear
    (System.Int32
      System.DateTime
      System.Globalization.CalendarWeekRule
      System.DayOfWeek))
  (define-method-port
    get-days-in-month
    System.Globalization.TaiwanCalendar
    GetDaysInMonth
    (System.Int32 System.Int32 System.Int32 System.Int32))
  (define-method-port
    is-leap-day?
    System.Globalization.TaiwanCalendar
    IsLeapDay
    (System.Boolean
      System.Int32
      System.Int32
      System.Int32
      System.Int32))
  (define-method-port
    is-leap-month?
    System.Globalization.TaiwanCalendar
    IsLeapMonth
    (System.Boolean System.Int32 System.Int32 System.Int32))
  (define-method-port
    to-four-digit-year
    System.Globalization.TaiwanCalendar
    ToFourDigitYear
    (System.Int32 System.Int32))
  (define-method-port
    get-months-in-year
    System.Globalization.TaiwanCalendar
    GetMonthsInYear
    (System.Int32 System.Int32 System.Int32))
  (define-field-port
    eras
    #f
    #f
    (property:)
    System.Globalization.TaiwanCalendar
    Eras
    System.Int32[])
  (define-field-port
    two-digit-year-max-get
    two-digit-year-max-set!
    two-digit-year-max-update!
    (property:)
    System.Globalization.TaiwanCalendar
    TwoDigitYearMax
    System.Int32)
  (define-field-port
    algorithm-type
    #f
    #f
    (property:)
    System.Globalization.TaiwanCalendar
    AlgorithmType
    System.Globalization.CalendarAlgorithmType)
  (define-field-port
    min-supported-date-time
    #f
    #f
    (property:)
    System.Globalization.TaiwanCalendar
    MinSupportedDateTime
    System.DateTime)
  (define-field-port
    max-supported-date-time
    #f
    #f
    (property:)
    System.Globalization.TaiwanCalendar
    MaxSupportedDateTime
    System.DateTime))
