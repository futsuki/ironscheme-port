(library (system globalization taiwan-lunisolar-calendar)
  (export new
          is?
          taiwan-lunisolar-calendar?
          get-era
          eras
          min-supported-date-time
          max-supported-date-time)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Globalization.TaiwanLunisolarCalendar
             a
             ...)))))
  (define (is? a)
    (clr-is System.Globalization.TaiwanLunisolarCalendar a))
  (define (taiwan-lunisolar-calendar? a)
    (clr-is System.Globalization.TaiwanLunisolarCalendar a))
  (define-method-port
    get-era
    System.Globalization.TaiwanLunisolarCalendar
    GetEra
    (System.Int32 System.DateTime))
  (define-field-port
    eras
    #f
    #f
    (property:)
    System.Globalization.TaiwanLunisolarCalendar
    Eras
    System.Int32[])
  (define-field-port
    min-supported-date-time
    #f
    #f
    (property:)
    System.Globalization.TaiwanLunisolarCalendar
    MinSupportedDateTime
    System.DateTime)
  (define-field-port
    max-supported-date-time
    #f
    #f
    (property:)
    System.Globalization.TaiwanLunisolarCalendar
    MaxSupportedDateTime
    System.DateTime))
