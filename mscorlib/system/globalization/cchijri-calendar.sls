(library (system globalization cchijri-calendar)
  (export new
          is?
          cchijri-calendar?
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
         #'(clr-new System.Globalization.CCHijriCalendar a ...)))))
  (define (is? a) (clr-is System.Globalization.CCHijriCalendar a))
  (define (cchijri-calendar? a)
    (clr-is System.Globalization.CCHijriCalendar a))
  (define-method-port
    fixed-from-dmy
    System.Globalization.CCHijriCalendar
    fixed_from_dmy
    (static: System.Int32 System.Int32 System.Int32 System.Int32))
  (define-method-port
    days-remaining
    System.Globalization.CCHijriCalendar
    days_remaining
    (static: System.Int32 System.Int32 System.Int32 System.Int32))
  (define-method-port
    my-from-fixed
    System.Globalization.CCHijriCalendar
    my_from_fixed
    (static: System.Void System.Int32& System.Int32& System.Int32))
  (define-method-port
    is-leap-year?
    System.Globalization.CCHijriCalendar
    is_leap_year
    (static: System.Boolean System.Int32))
  (define-method-port
    month-from-fixed
    System.Globalization.CCHijriCalendar
    month_from_fixed
    (static: System.Int32 System.Int32))
  (define-method-port
    year-from-fixed
    System.Globalization.CCHijriCalendar
    year_from_fixed
    (static: System.Int32 System.Int32))
  (define-method-port
    day-number
    System.Globalization.CCHijriCalendar
    day_number
    (static: System.Int32 System.Int32 System.Int32 System.Int32))
  (define-method-port
    day-from-fixed
    System.Globalization.CCHijriCalendar
    day_from_fixed
    (static: System.Int32 System.Int32))
  (define-method-port
    dmy-from-fixed
    System.Globalization.CCHijriCalendar
    dmy_from_fixed
    (static:
      System.Void
      System.Int32&
      System.Int32&
      System.Int32&
      System.Int32))
  (define-method-port
    date-difference
    System.Globalization.CCHijriCalendar
    date_difference
    (static:
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32)))
