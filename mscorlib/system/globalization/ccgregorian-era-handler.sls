(library (system globalization ccgregorian-era-handler)
  (export new
          is?
          ccgregorian-era-handler?
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
             System.Globalization.CCGregorianEraHandler
             a
             ...)))))
  (define (is? a) (clr-is System.Globalization.CCGregorianEraHandler a))
  (define (ccgregorian-era-handler? a)
    (clr-is System.Globalization.CCGregorianEraHandler a))
  (define-method-port
    era-year
    System.Globalization.CCGregorianEraHandler
    EraYear
    (System.Int32 System.Int32& System.Int32))
  (define-method-port
    valid-era?
    System.Globalization.CCGregorianEraHandler
    ValidEra
    (System.Boolean System.Int32))
  (define-method-port
    valid-date?
    System.Globalization.CCGregorianEraHandler
    ValidDate
    (System.Boolean System.Int32))
  (define-method-port
    gregorian-year
    System.Globalization.CCGregorianEraHandler
    GregorianYear
    (System.Int32 System.Int32 System.Int32))
  (define-method-port
    append-era
    System.Globalization.CCGregorianEraHandler
    appendEra
    (System.Void System.Int32 System.Int32)
    (System.Void System.Int32 System.Int32 System.Int32))
  (define-method-port
    check-date-time
    System.Globalization.CCGregorianEraHandler
    CheckDateTime
    (System.Void System.DateTime))
  (define-field-port
    eras
    #f
    #f
    (property:)
    System.Globalization.CCGregorianEraHandler
    Eras
    System.Int32[]))
