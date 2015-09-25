(library (system configuration default-validator)
  (export new is? default-validator? can-validate? validate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.DefaultValidator a ...)))))
  (define (is? a) (clr-is System.Configuration.DefaultValidator a))
  (define (default-validator? a)
    (clr-is System.Configuration.DefaultValidator a))
  (define-method-port
    can-validate?
    System.Configuration.DefaultValidator
    CanValidate
    (System.Boolean System.Type))
  (define-method-port
    validate
    System.Configuration.DefaultValidator
    Validate
    (System.Void System.Object)))
