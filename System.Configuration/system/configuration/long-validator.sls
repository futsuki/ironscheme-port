(library (system configuration long-validator)
  (export new is? long-validator? can-validate? validate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.LongValidator a ...)))))
  (define (is? a) (clr-is System.Configuration.LongValidator a))
  (define (long-validator? a)
    (clr-is System.Configuration.LongValidator a))
  (define-method-port
    can-validate?
    System.Configuration.LongValidator
    CanValidate
    (System.Boolean System.Type))
  (define-method-port
    validate
    System.Configuration.LongValidator
    Validate
    (System.Void System.Object)))
