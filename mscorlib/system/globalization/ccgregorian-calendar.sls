(library (system globalization ccgregorian-calendar)
  (export new
          is?
          ccgregorian-calendar?
          get-year
          add-years
          fixed-from-dmy
          get-day-of-year
          days-remaining
          my-from-fixed
          get-month
          get-days-in-year
          is-leap-year?
          add-months
          month-from-fixed
          to-date-time
          year-from-fixed
          get-day-of-month
          day-number
          day-from-fixed
          get-days-in-month
          is-leap-day?
          dmy-from-fixed
          date-difference)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Globalization.CCGregorianCalendar a ...)))))
  (define (is? a) (clr-is System.Globalization.CCGregorianCalendar a))
  (define (ccgregorian-calendar? a)
    (clr-is System.Globalization.CCGregorianCalendar a))
  (define-method-port
    get-year
    System.Globalization.CCGregorianCalendar
    GetYear
    (static: System.Int32 System.DateTime))
  (define-method-port
    add-years
    System.Globalization.CCGregorianCalendar
    AddYears
    (static: System.DateTime System.DateTime System.Int32))
  (define-method-port
    fixed-from-dmy
    System.Globalization.CCGregorianCalendar
    fixed_from_dmy
    (static: System.Int32 System.Int32 System.Int32 System.Int32))
  (define-method-port
    get-day-of-year
    System.Globalization.CCGregorianCalendar
    GetDayOfYear
    (static: System.Int32 System.DateTime))
  (define-method-port
    days-remaining
    System.Globalization.CCGregorianCalendar
    days_remaining
    (static: System.Int32 System.Int32 System.Int32 System.Int32))
  (define-method-port
    my-from-fixed
    System.Globalization.CCGregorianCalendar
    my_from_fixed
    (static: System.Void System.Int32& System.Int32& System.Int32))
  (define-method-port
    get-month
    System.Globalization.CCGregorianCalendar
    GetMonth
    (static: System.Int32 System.DateTime))
  (define-method-port
    get-days-in-year
    System.Globalization.CCGregorianCalendar
    GetDaysInYear
    (static: System.Int32 System.Int32))
  (define-method-port
    is-leap-year?
    System.Globalization.CCGregorianCalendar
    is_leap_year
    (static: System.Boolean System.Int32))
  (define-method-port
    add-months
    System.Globalization.CCGregorianCalendar
    AddMonths
    (static: System.DateTime System.DateTime System.Int32))
  (define-method-port
    month-from-fixed
    System.Globalization.CCGregorianCalendar
    month_from_fixed
    (static: System.Int32 System.Int32))
  (define-method-port
    to-date-time
    System.Globalization.CCGregorianCalendar
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
    System.Globalization.CCGregorianCalendar
    year_from_fixed
    (static: System.Int32 System.Int32))
  (define-method-port
    get-day-of-month
    System.Globalization.CCGregorianCalendar
    GetDayOfMonth
    (static: System.Int32 System.DateTime))
  (define-method-port
    day-number
    System.Globalization.CCGregorianCalendar
    day_number
    (static: System.Int32 System.Int32 System.Int32 System.Int32))
  (define-method-port
    day-from-fixed
    System.Globalization.CCGregorianCalendar
    day_from_fixed
    (static: System.Int32 System.Int32))
  (define-method-port
    get-days-in-month
    System.Globalization.CCGregorianCalendar
    GetDaysInMonth
    (static: System.Int32 System.Int32 System.Int32))
  (define-method-port
    is-leap-day?
    System.Globalization.CCGregorianCalendar
    IsLeapDay
    (static: System.Boolean System.Int32 System.Int32 System.Int32))
  (define-method-port
    dmy-from-fixed
    System.Globalization.CCGregorianCalendar
    dmy_from_fixed
    (static:
      System.Void
      System.Int32&
      System.Int32&
      System.Int32&
      System.Int32))
  (define-method-port
    date-difference
    System.Globalization.CCGregorianCalendar
    date_difference
    (static:
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32)))
