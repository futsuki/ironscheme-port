(library (system globalization thai-buddhist-calendar)
  (export new
          is?
          thai-buddhist-calendar?
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
          thai-buddhist-era
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
         #'(clr-new System.Globalization.ThaiBuddhistCalendar a ...)))))
  (define (is? a) (clr-is System.Globalization.ThaiBuddhistCalendar a))
  (define (thai-buddhist-calendar? a)
    (clr-is System.Globalization.ThaiBuddhistCalendar a))
  (define-method-port
    get-year
    System.Globalization.ThaiBuddhistCalendar
    GetYear
    (System.Int32 System.DateTime))
  (define-method-port
    is-leap-year?
    System.Globalization.ThaiBuddhistCalendar
    IsLeapYear
    (System.Boolean System.Int32 System.Int32))
  (define-method-port
    add-years
    System.Globalization.ThaiBuddhistCalendar
    AddYears
    (System.DateTime System.DateTime System.Int32))
  (define-method-port
    get-era
    System.Globalization.ThaiBuddhistCalendar
    GetEra
    (System.Int32 System.DateTime))
  (define-method-port
    get-day-of-year
    System.Globalization.ThaiBuddhistCalendar
    GetDayOfYear
    (System.Int32 System.DateTime))
  (define-method-port
    get-day-of-month
    System.Globalization.ThaiBuddhistCalendar
    GetDayOfMonth
    (System.Int32 System.DateTime))
  (define-method-port
    get-month
    System.Globalization.ThaiBuddhistCalendar
    GetMonth
    (System.Int32 System.DateTime))
  (define-method-port
    get-days-in-year
    System.Globalization.ThaiBuddhistCalendar
    GetDaysInYear
    (System.Int32 System.Int32 System.Int32))
  (define-method-port
    add-months
    System.Globalization.ThaiBuddhistCalendar
    AddMonths
    (System.DateTime System.DateTime System.Int32))
  (define-method-port
    get-leap-month
    System.Globalization.ThaiBuddhistCalendar
    GetLeapMonth
    (System.Int32 System.Int32 System.Int32))
  (define-method-port
    to-date-time
    System.Globalization.ThaiBuddhistCalendar
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
    System.Globalization.ThaiBuddhistCalendar
    GetDayOfWeek
    (System.DayOfWeek System.DateTime))
  (define-method-port
    get-week-of-year
    System.Globalization.ThaiBuddhistCalendar
    GetWeekOfYear
    (System.Int32
      System.DateTime
      System.Globalization.CalendarWeekRule
      System.DayOfWeek))
  (define-method-port
    get-days-in-month
    System.Globalization.ThaiBuddhistCalendar
    GetDaysInMonth
    (System.Int32 System.Int32 System.Int32 System.Int32))
  (define-method-port
    is-leap-day?
    System.Globalization.ThaiBuddhistCalendar
    IsLeapDay
    (System.Boolean
      System.Int32
      System.Int32
      System.Int32
      System.Int32))
  (define-method-port
    is-leap-month?
    System.Globalization.ThaiBuddhistCalendar
    IsLeapMonth
    (System.Boolean System.Int32 System.Int32 System.Int32))
  (define-method-port
    to-four-digit-year
    System.Globalization.ThaiBuddhistCalendar
    ToFourDigitYear
    (System.Int32 System.Int32))
  (define-method-port
    get-months-in-year
    System.Globalization.ThaiBuddhistCalendar
    GetMonthsInYear
    (System.Int32 System.Int32 System.Int32))
  (define-field-port
    thai-buddhist-era
    #f
    #f
    (static:)
    System.Globalization.ThaiBuddhistCalendar
    ThaiBuddhistEra
    System.Int32)
  (define-field-port
    eras
    #f
    #f
    (property:)
    System.Globalization.ThaiBuddhistCalendar
    Eras
    System.Int32[])
  (define-field-port
    two-digit-year-max-get
    two-digit-year-max-set!
    two-digit-year-max-update!
    (property:)
    System.Globalization.ThaiBuddhistCalendar
    TwoDigitYearMax
    System.Int32)
  (define-field-port
    algorithm-type
    #f
    #f
    (property:)
    System.Globalization.ThaiBuddhistCalendar
    AlgorithmType
    System.Globalization.CalendarAlgorithmType)
  (define-field-port
    min-supported-date-time
    #f
    #f
    (property:)
    System.Globalization.ThaiBuddhistCalendar
    MinSupportedDateTime
    System.DateTime)
  (define-field-port
    max-supported-date-time
    #f
    #f
    (property:)
    System.Globalization.ThaiBuddhistCalendar
    MaxSupportedDateTime
    System.DateTime))
