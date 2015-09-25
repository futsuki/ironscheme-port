(library (system configuration time-span-validator)
  (export new is? time-span-validator? can-validate? validate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.TimeSpanValidator a ...)))))
  (define (is? a) (clr-is System.Configuration.TimeSpanValidator a))
  (define (time-span-validator? a)
    (clr-is System.Configuration.TimeSpanValidator a))
  (define-method-port
    can-validate?
    System.Configuration.TimeSpanValidator
    CanValidate
    (System.Boolean System.Type))
  (define-method-port
    validate
    System.Configuration.TimeSpanValidator
    Validate
    (System.Void System.Object)))
