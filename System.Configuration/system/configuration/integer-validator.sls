(library (system configuration integer-validator)
  (export new is? integer-validator? can-validate? validate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.IntegerValidator a ...)))))
  (define (is? a) (clr-is System.Configuration.IntegerValidator a))
  (define (integer-validator? a)
    (clr-is System.Configuration.IntegerValidator a))
  (define-method-port
    can-validate?
    System.Configuration.IntegerValidator
    CanValidate
    (System.Boolean System.Type))
  (define-method-port
    validate
    System.Configuration.IntegerValidator
    Validate
    (System.Void System.Object)))
