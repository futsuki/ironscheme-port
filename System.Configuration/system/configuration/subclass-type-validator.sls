(library (system configuration subclass-type-validator)
  (export new is? subclass-type-validator? can-validate? validate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.SubclassTypeValidator
             a
             ...)))))
  (define (is? a) (clr-is System.Configuration.SubclassTypeValidator a))
  (define (subclass-type-validator? a)
    (clr-is System.Configuration.SubclassTypeValidator a))
  (define-method-port
    can-validate?
    System.Configuration.SubclassTypeValidator
    CanValidate
    (System.Boolean System.Type))
  (define-method-port
    validate
    System.Configuration.SubclassTypeValidator
    Validate
    (System.Void System.Object)))
