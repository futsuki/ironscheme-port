(library (system globalization cchebrew-calendar)
  (export new
          is?
          cchebrew-calendar?
          long-heshvan?
          new-year-delay
          elapsed-days
          days-remaining
          my-from-fixed
          is-leap-year?
          short-kislev?
          month-from-fixed
          days-in-year
          last-day-of-month
          last-month-of-year
          fixed-from-dmy
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
         #'(clr-new System.Globalization.CCHebrewCalendar a ...)))))
  (define (is? a) (clr-is System.Globalization.CCHebrewCalendar a))
  (define (cchebrew-calendar? a)
    (clr-is System.Globalization.CCHebrewCalendar a))
  (define-method-port
    long-heshvan?
    System.Globalization.CCHebrewCalendar
    long_heshvan
    (static: System.Boolean System.Int32))
  (define-method-port
    new-year-delay
    System.Globalization.CCHebrewCalendar
    new_year_delay
    (static: System.Int32 System.Int32))
  (define-method-port
    elapsed-days
    System.Globalization.CCHebrewCalendar
    elapsed_days
    (static: System.Int32 System.Int32))
  (define-method-port
    days-remaining
    System.Globalization.CCHebrewCalendar
    days_remaining
    (static: System.Int32 System.Int32 System.Int32 System.Int32))
  (define-method-port
    my-from-fixed
    System.Globalization.CCHebrewCalendar
    my_from_fixed
    (static: System.Void System.Int32& System.Int32& System.Int32))
  (define-method-port
    is-leap-year?
    System.Globalization.CCHebrewCalendar
    is_leap_year
    (static: System.Boolean System.Int32))
  (define-method-port
    short-kislev?
    System.Globalization.CCHebrewCalendar
    short_kislev
    (static: System.Boolean System.Int32))
  (define-method-port
    month-from-fixed
    System.Globalization.CCHebrewCalendar
    month_from_fixed
    (static: System.Int32 System.Int32))
  (define-method-port
    days-in-year
    System.Globalization.CCHebrewCalendar
    days_in_year
    (static: System.Int32 System.Int32))
  (define-method-port
    last-day-of-month
    System.Globalization.CCHebrewCalendar
    last_day_of_month
    (static: System.Int32 System.Int32 System.Int32))
  (define-method-port
    last-month-of-year
    System.Globalization.CCHebrewCalendar
    last_month_of_year
    (static: System.Int32 System.Int32))
  (define-method-port
    fixed-from-dmy
    System.Globalization.CCHebrewCalendar
    fixed_from_dmy
    (static: System.Int32 System.Int32 System.Int32 System.Int32))
  (define-method-port
    year-from-fixed
    System.Globalization.CCHebrewCalendar
    year_from_fixed
    (static: System.Int32 System.Int32))
  (define-method-port
    day-number
    System.Globalization.CCHebrewCalendar
    day_number
    (static: System.Int32 System.Int32 System.Int32 System.Int32))
  (define-method-port
    day-from-fixed
    System.Globalization.CCHebrewCalendar
    day_from_fixed
    (static: System.Int32 System.Int32))
  (define-method-port
    dmy-from-fixed
    System.Globalization.CCHebrewCalendar
    dmy_from_fixed
    (static:
      System.Void
      System.Int32&
      System.Int32&
      System.Int32&
      System.Int32))
  (define-method-port
    date-difference
    System.Globalization.CCHebrewCalendar
    date_difference
    (static:
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32)))
