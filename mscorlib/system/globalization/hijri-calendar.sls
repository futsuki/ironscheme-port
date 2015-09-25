(library (system globalization hijri-calendar)
  (export new
          is?
          hijri-calendar?
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
          hijri-era
          eras
          hijri-adjustment-get
          hijri-adjustment-set!
          hijri-adjustment-update!
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
         #'(clr-new System.Globalization.HijriCalendar a ...)))))
  (define (is? a) (clr-is System.Globalization.HijriCalendar a))
  (define (hijri-calendar? a)
    (clr-is System.Globalization.HijriCalendar a))
  (define-method-port
    get-year
    System.Globalization.HijriCalendar
    GetYear
    (System.Int32 System.DateTime))
  (define-method-port
    is-leap-year?
    System.Globalization.HijriCalendar
    IsLeapYear
    (System.Boolean System.Int32 System.Int32))
  (define-method-port
    add-years
    System.Globalization.HijriCalendar
    AddYears
    (System.DateTime System.DateTime System.Int32))
  (define-method-port
    get-era
    System.Globalization.HijriCalendar
    GetEra
    (System.Int32 System.DateTime))
  (define-method-port
    get-day-of-year
    System.Globalization.HijriCalendar
    GetDayOfYear
    (System.Int32 System.DateTime))
  (define-method-port
    get-day-of-month
    System.Globalization.HijriCalendar
    GetDayOfMonth
    (System.Int32 System.DateTime))
  (define-method-port
    get-month
    System.Globalization.HijriCalendar
    GetMonth
    (System.Int32 System.DateTime))
  (define-method-port
    get-days-in-year
    System.Globalization.HijriCalendar
    GetDaysInYear
    (System.Int32 System.Int32 System.Int32))
  (define-method-port
    add-months
    System.Globalization.HijriCalendar
    AddMonths
    (System.DateTime System.DateTime System.Int32))
  (define-method-port
    get-leap-month
    System.Globalization.HijriCalendar
    GetLeapMonth
    (System.Int32 System.Int32 System.Int32))
  (define-method-port
    to-date-time
    System.Globalization.HijriCalendar
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
    System.Globalization.HijriCalendar
    GetDayOfWeek
    (System.DayOfWeek System.DateTime))
  (define-method-port
    get-days-in-month
    System.Globalization.HijriCalendar
    GetDaysInMonth
    (System.Int32 System.Int32 System.Int32 System.Int32))
  (define-method-port
    is-leap-day?
    System.Globalization.HijriCalendar
    IsLeapDay
    (System.Boolean
      System.Int32
      System.Int32
      System.Int32
      System.Int32))
  (define-method-port
    is-leap-month?
    System.Globalization.HijriCalendar
    IsLeapMonth
    (System.Boolean System.Int32 System.Int32 System.Int32))
  (define-method-port
    to-four-digit-year
    System.Globalization.HijriCalendar
    ToFourDigitYear
    (System.Int32 System.Int32))
  (define-method-port
    get-months-in-year
    System.Globalization.HijriCalendar
    GetMonthsInYear
    (System.Int32 System.Int32 System.Int32))
  (define-field-port
    hijri-era
    #f
    #f
    (static:)
    System.Globalization.HijriCalendar
    HijriEra
    System.Int32)
  (define-field-port
    eras
    #f
    #f
    (property:)
    System.Globalization.HijriCalendar
    Eras
    System.Int32[])
  (define-field-port
    hijri-adjustment-get
    hijri-adjustment-set!
    hijri-adjustment-update!
    (property:)
    System.Globalization.HijriCalendar
    HijriAdjustment
    System.Int32)
  (define-field-port
    two-digit-year-max-get
    two-digit-year-max-set!
    two-digit-year-max-update!
    (property:)
    System.Globalization.HijriCalendar
    TwoDigitYearMax
    System.Int32)
  (define-field-port
    algorithm-type
    #f
    #f
    (property:)
    System.Globalization.HijriCalendar
    AlgorithmType
    System.Globalization.CalendarAlgorithmType)
  (define-field-port
    min-supported-date-time
    #f
    #f
    (property:)
    System.Globalization.HijriCalendar
    MinSupportedDateTime
    System.DateTime)
  (define-field-port
    max-supported-date-time
    #f
    #f
    (property:)
    System.Globalization.HijriCalendar
    MaxSupportedDateTime
    System.DateTime))
