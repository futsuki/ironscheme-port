(library (system globalization cceast-asian-lunisolar-calendar)
  (export new
          is?
          cceast-asian-lunisolar-calendar?
          is-leap-year?
          add-years
          fixed-from-dmy
          get-day-of-year
          get-day-of-month
          my-from-fixed
          get-month
          get-days-in-year
          add-months
          to-date-time
          year-from-fixed
          get-days-in-month
          is-leap-month?
          dmy-from-fixed)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Globalization.CCEastAsianLunisolarCalendar
             a
             ...)))))
  (define (is? a)
    (clr-is System.Globalization.CCEastAsianLunisolarCalendar a))
  (define (cceast-asian-lunisolar-calendar? a)
    (clr-is System.Globalization.CCEastAsianLunisolarCalendar a))
  (define-method-port
    is-leap-year?
    System.Globalization.CCEastAsianLunisolarCalendar
    IsLeapYear
    (static: System.Boolean System.Int32))
  (define-method-port
    add-years
    System.Globalization.CCEastAsianLunisolarCalendar
    AddYears
    (static: System.DateTime System.DateTime System.Int32))
  (define-method-port
    fixed-from-dmy
    System.Globalization.CCEastAsianLunisolarCalendar
    fixed_from_dmy
    (static: System.Int32 System.Int32 System.Int32 System.Int32))
  (define-method-port
    get-day-of-year
    System.Globalization.CCEastAsianLunisolarCalendar
    GetDayOfYear
    (static: System.Int32 System.DateTime))
  (define-method-port
    get-day-of-month
    System.Globalization.CCEastAsianLunisolarCalendar
    GetDayOfMonth
    (static: System.Int32 System.DateTime))
  (define-method-port
    my-from-fixed
    System.Globalization.CCEastAsianLunisolarCalendar
    my_from_fixed
    (static: System.Void System.Int32& System.Int32& System.Int32))
  (define-method-port
    get-month
    System.Globalization.CCEastAsianLunisolarCalendar
    GetMonth
    (static: System.Int32 System.DateTime))
  (define-method-port
    get-days-in-year
    System.Globalization.CCEastAsianLunisolarCalendar
    GetDaysInYear
    (static: System.Int32 System.Int32))
  (define-method-port
    add-months
    System.Globalization.CCEastAsianLunisolarCalendar
    AddMonths
    (static: System.DateTime System.DateTime System.Int32))
  (define-method-port
    to-date-time
    System.Globalization.CCEastAsianLunisolarCalendar
    ToDateTime
    (static:
      System.DateTime
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32))
  (define-method-port
    year-from-fixed
    System.Globalization.CCEastAsianLunisolarCalendar
    year_from_fixed
    (static: System.Int32 System.Int32))
  (define-method-port
    get-days-in-month
    System.Globalization.CCEastAsianLunisolarCalendar
    GetDaysInMonth
    (static: System.Int32 System.Int32 System.Int32))
  (define-method-port
    is-leap-month?
    System.Globalization.CCEastAsianLunisolarCalendar
    IsLeapMonth
    (static: System.Boolean System.Int32 System.Int32))
  (define-method-port
    dmy-from-fixed
    System.Globalization.CCEastAsianLunisolarCalendar
    dmy_from_fixed
    (static:
      System.Void
      System.Int32&
      System.Int32&
      System.Int32&
      System.Int32)))
