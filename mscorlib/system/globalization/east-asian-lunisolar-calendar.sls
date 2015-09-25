(library (system globalization east-asian-lunisolar-calendar)
  (export is?
          east-asian-lunisolar-calendar?
          get-year
          is-leap-year?
          add-years
          get-day-of-year
          get-day-of-month
          get-month
          get-days-in-year
          add-months
          get-terrestrial-branch
          get-leap-month
          get-celestial-stem
          to-date-time
          get-day-of-week
          get-sexagenary-year
          get-days-in-month
          is-leap-day?
          is-leap-month?
          to-four-digit-year
          get-months-in-year
          two-digit-year-max-get
          two-digit-year-max-set!
          two-digit-year-max-update!
          algorithm-type)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Globalization.EastAsianLunisolarCalendar a))
  (define (east-asian-lunisolar-calendar? a)
    (clr-is System.Globalization.EastAsianLunisolarCalendar a))
  (define-method-port
    get-year
    System.Globalization.EastAsianLunisolarCalendar
    GetYear
    (System.Int32 System.DateTime))
  (define-method-port
    is-leap-year?
    System.Globalization.EastAsianLunisolarCalendar
    IsLeapYear
    (System.Boolean System.Int32 System.Int32))
  (define-method-port
    add-years
    System.Globalization.EastAsianLunisolarCalendar
    AddYears
    (System.DateTime System.DateTime System.Int32))
  (define-method-port
    get-day-of-year
    System.Globalization.EastAsianLunisolarCalendar
    GetDayOfYear
    (System.Int32 System.DateTime))
  (define-method-port
    get-day-of-month
    System.Globalization.EastAsianLunisolarCalendar
    GetDayOfMonth
    (System.Int32 System.DateTime))
  (define-method-port
    get-month
    System.Globalization.EastAsianLunisolarCalendar
    GetMonth
    (System.Int32 System.DateTime))
  (define-method-port
    get-days-in-year
    System.Globalization.EastAsianLunisolarCalendar
    GetDaysInYear
    (System.Int32 System.Int32 System.Int32))
  (define-method-port
    add-months
    System.Globalization.EastAsianLunisolarCalendar
    AddMonths
    (System.DateTime System.DateTime System.Int32))
  (define-method-port
    get-terrestrial-branch
    System.Globalization.EastAsianLunisolarCalendar
    GetTerrestrialBranch
    (System.Int32 System.Int32))
  (define-method-port
    get-leap-month
    System.Globalization.EastAsianLunisolarCalendar
    GetLeapMonth
    (System.Int32 System.Int32 System.Int32))
  (define-method-port
    get-celestial-stem
    System.Globalization.EastAsianLunisolarCalendar
    GetCelestialStem
    (System.Int32 System.Int32))
  (define-method-port
    to-date-time
    System.Globalization.EastAsianLunisolarCalendar
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
    System.Globalization.EastAsianLunisolarCalendar
    GetDayOfWeek
    (System.DayOfWeek System.DateTime))
  (define-method-port
    get-sexagenary-year
    System.Globalization.EastAsianLunisolarCalendar
    GetSexagenaryYear
    (System.Int32 System.DateTime))
  (define-method-port
    get-days-in-month
    System.Globalization.EastAsianLunisolarCalendar
    GetDaysInMonth
    (System.Int32 System.Int32 System.Int32 System.Int32))
  (define-method-port
    is-leap-day?
    System.Globalization.EastAsianLunisolarCalendar
    IsLeapDay
    (System.Boolean
      System.Int32
      System.Int32
      System.Int32
      System.Int32))
  (define-method-port
    is-leap-month?
    System.Globalization.EastAsianLunisolarCalendar
    IsLeapMonth
    (System.Boolean System.Int32 System.Int32 System.Int32))
  (define-method-port
    to-four-digit-year
    System.Globalization.EastAsianLunisolarCalendar
    ToFourDigitYear
    (System.Int32 System.Int32))
  (define-method-port
    get-months-in-year
    System.Globalization.EastAsianLunisolarCalendar
    GetMonthsInYear
    (System.Int32 System.Int32 System.Int32))
  (define-field-port
    two-digit-year-max-get
    two-digit-year-max-set!
    two-digit-year-max-update!
    (property:)
    System.Globalization.EastAsianLunisolarCalendar
    TwoDigitYearMax
    System.Int32)
  (define-field-port
    algorithm-type
    #f
    #f
    (property:)
    System.Globalization.EastAsianLunisolarCalendar
    AlgorithmType
    System.Globalization.CalendarAlgorithmType))
