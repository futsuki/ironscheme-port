(library (system configuration string-validator)
  (export new is? string-validator? can-validate? validate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.StringValidator a ...)))))
  (define (is? a) (clr-is System.Configuration.StringValidator a))
  (define (string-validator? a)
    (clr-is System.Configuration.StringValidator a))
  (define-method-port
    can-validate?
    System.Configuration.StringValidator
    CanValidate
    (System.Boolean System.Type))
  (define-method-port
    validate
    System.Configuration.StringValidator
    Validate
    (System.Void System.Object)))
