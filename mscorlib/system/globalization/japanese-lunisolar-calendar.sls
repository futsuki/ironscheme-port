(library (system globalization japanese-lunisolar-calendar)
  (export new
          is?
          japanese-lunisolar-calendar?
          get-era
          japanese-era
          eras
          min-supported-date-time
          max-supported-date-time)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Globalization.JapaneseLunisolarCalendar
             a
             ...)))))
  (define (is? a)
    (clr-is System.Globalization.JapaneseLunisolarCalendar a))
  (define (japanese-lunisolar-calendar? a)
    (clr-is System.Globalization.JapaneseLunisolarCalendar a))
  (define-method-port
    get-era
    System.Globalization.JapaneseLunisolarCalendar
    GetEra
    (System.Int32 System.DateTime))
  (define-field-port
    japanese-era
    #f
    #f
    (static:)
    System.Globalization.JapaneseLunisolarCalendar
    JapaneseEra
    System.Int32)
  (define-field-port
    eras
    #f
    #f
    (property:)
    System.Globalization.JapaneseLunisolarCalendar
    Eras
    System.Int32[])
  (define-field-port
    min-supported-date-time
    #f
    #f
    (property:)
    System.Globalization.JapaneseLunisolarCalendar
    MinSupportedDateTime
    System.DateTime)
  (define-field-port
    max-supported-date-time
    #f
    #f
    (property:)
    System.Globalization.JapaneseLunisolarCalendar
    MaxSupportedDateTime
    System.DateTime))
