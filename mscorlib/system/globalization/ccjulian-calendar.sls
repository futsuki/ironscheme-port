(library (system globalization ccjulian-calendar)
  (export new
          is?
          ccjulian-calendar?
          fixed-from-dmy
          days-remaining
          my-from-fixed
          is-leap-year?
          month-from-fixed
          year-from-fixed
          day-number
          day-from-fixed
          dmy-from-fixed
          date-difference)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Globalization.CCJulianCalendar a ...)))))
  (define (is? a) (clr-is System.Globalization.CCJulianCalendar a))
  (define (ccjulian-calendar? a)
    (clr-is System.Globalization.CCJulianCalendar a))
  (define-method-port
    fixed-from-dmy
    System.Globalization.CCJulianCalendar
    fixed_from_dmy
    (static: System.Int32 System.Int32 System.Int32 System.Int32))
  (define-method-port
    days-remaining
    System.Globalization.CCJulianCalendar
    days_remaining
    (static: System.Int32 System.Int32 System.Int32 System.Int32))
  (define-method-port
    my-from-fixed
    System.Globalization.CCJulianCalendar
    my_from_fixed
    (static: System.Void System.Int32& System.Int32& System.Int32))
  (define-method-port
    is-leap-year?
    System.Globalization.CCJulianCalendar
    is_leap_year
    (static: System.Boolean System.Int32))
  (define-method-port
    month-from-fixed
    System.Globalization.CCJulianCalendar
    month_from_fixed
    (static: System.Int32 System.Int32))
  (define-method-port
    year-from-fixed
    System.Globalization.CCJulianCalendar
    year_from_fixed
    (static: System.Int32 System.Int32))
  (define-method-port
    day-number
    System.Globalization.CCJulianCalendar
    day_number
    (static: System.Int32 System.Int32 System.Int32 System.Int32))
  (define-method-port
    day-from-fixed
    System.Globalization.CCJulianCalendar
    day_from_fixed
    (static: System.Int32 System.Int32))
  (define-method-port
    dmy-from-fixed
    System.Globalization.CCJulianCalendar
    dmy_from_fixed
    (static:
      System.Void
      System.Int32&
      System.Int32&
      System.Int32&
      System.Int32))
  (define-method-port
    date-difference
    System.Globalization.CCJulianCalendar
    date_difference
    (static:
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32)))
