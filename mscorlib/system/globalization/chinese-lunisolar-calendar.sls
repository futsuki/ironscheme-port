(library (system globalization chinese-lunisolar-calendar)
  (export new
          is?
          chinese-lunisolar-calendar?
          get-era
          chinese-era
          eras
          min-supported-date-time
          max-supported-date-time)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Globalization.ChineseLunisolarCalendar
             a
             ...)))))
  (define (is? a)
    (clr-is System.Globalization.ChineseLunisolarCalendar a))
  (define (chinese-lunisolar-calendar? a)
    (clr-is System.Globalization.ChineseLunisolarCalendar a))
  (define-method-port
    get-era
    System.Globalization.ChineseLunisolarCalendar
    GetEra
    (System.Int32 System.DateTime))
  (define-field-port
    chinese-era
    #f
    #f
    (static:)
    System.Globalization.ChineseLunisolarCalendar
    ChineseEra
    System.Int32)
  (define-field-port
    eras
    #f
    #f
    (property:)
    System.Globalization.ChineseLunisolarCalendar
    Eras
    System.Int32[])
  (define-field-port
    min-supported-date-time
    #f
    #f
    (property:)
    System.Globalization.ChineseLunisolarCalendar
    MinSupportedDateTime
    System.DateTime)
  (define-field-port
    max-supported-date-time
    #f
    #f
    (property:)
    System.Globalization.ChineseLunisolarCalendar
    MaxSupportedDateTime
    System.DateTime))
