(library (system globalization cceast-asian-lunisolar-era-handler)
  (export new
          is?
          cceast-asian-lunisolar-era-handler?
          era-year
          valid-era?
          valid-date?
          gregorian-year
          append-era
          check-date-time
          eras)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Globalization.CCEastAsianLunisolarEraHandler
             a
             ...)))))
  (define (is? a)
    (clr-is System.Globalization.CCEastAsianLunisolarEraHandler a))
  (define (cceast-asian-lunisolar-era-handler? a)
    (clr-is System.Globalization.CCEastAsianLunisolarEraHandler a))
  (define-method-port
    era-year
    System.Globalization.CCEastAsianLunisolarEraHandler
    EraYear
    (System.Int32 System.Int32& System.Int32))
  (define-method-port
    valid-era?
    System.Globalization.CCEastAsianLunisolarEraHandler
    ValidEra
    (System.Boolean System.Int32))
  (define-method-port
    valid-date?
    System.Globalization.CCEastAsianLunisolarEraHandler
    ValidDate
    (System.Boolean System.Int32))
  (define-method-port
    gregorian-year
    System.Globalization.CCEastAsianLunisolarEraHandler
    GregorianYear
    (System.Int32 System.Int32 System.Int32))
  (define-method-port
    append-era
    System.Globalization.CCEastAsianLunisolarEraHandler
    appendEra
    (System.Void System.Int32 System.Int32)
    (System.Void System.Int32 System.Int32 System.Int32))
  (define-method-port
    check-date-time
    System.Globalization.CCEastAsianLunisolarEraHandler
    CheckDateTime
    (System.Void System.DateTime))
  (define-field-port
    eras
    #f
    #f
    (property:)
    System.Globalization.CCEastAsianLunisolarEraHandler
    Eras
    System.Int32[]))
