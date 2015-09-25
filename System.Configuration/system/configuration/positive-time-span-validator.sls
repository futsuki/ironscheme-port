(library (system configuration positive-time-span-validator)
  (export new is? positive-time-span-validator? can-validate? validate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.PositiveTimeSpanValidator
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.PositiveTimeSpanValidator a))
  (define (positive-time-span-validator? a)
    (clr-is System.Configuration.PositiveTimeSpanValidator a))
  (define-method-port
    can-validate?
    System.Configuration.PositiveTimeSpanValidator
    CanValidate
    (System.Boolean System.Type))
  (define-method-port
    validate
    System.Configuration.PositiveTimeSpanValidator
    Validate
    (System.Void System.Object)))
