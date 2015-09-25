(library (system globalization korean-lunisolar-calendar)
  (export new
          is?
          korean-lunisolar-calendar?
          get-era
          gregorian-era
          eras
          min-supported-date-time
          max-supported-date-time)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Globalization.KoreanLunisolarCalendar
             a
             ...)))))
  (define (is? a)
    (clr-is System.Globalization.KoreanLunisolarCalendar a))
  (define (korean-lunisolar-calendar? a)
    (clr-is System.Globalization.KoreanLunisolarCalendar a))
  (define-method-port
    get-era
    System.Globalization.KoreanLunisolarCalendar
    GetEra
    (System.Int32 System.DateTime))
  (define-field-port
    gregorian-era
    #f
    #f
    (static:)
    System.Globalization.KoreanLunisolarCalendar
    GregorianEra
    System.Int32)
  (define-field-port
    eras
    #f
    #f
    (property:)
    System.Globalization.KoreanLunisolarCalendar
    Eras
    System.Int32[])
  (define-field-port
    min-supported-date-time
    #f
    #f
    (property:)
    System.Globalization.KoreanLunisolarCalendar
    MinSupportedDateTime
    System.DateTime)
  (define-field-port
    max-supported-date-time
    #f
    #f
    (property:)
    System.Globalization.KoreanLunisolarCalendar
    MaxSupportedDateTime
    System.DateTime))
