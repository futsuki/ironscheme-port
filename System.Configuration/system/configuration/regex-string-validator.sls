(library (system configuration regex-string-validator)
  (export new is? regex-string-validator? can-validate? validate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.RegexStringValidator a ...)))))
  (define (is? a) (clr-is System.Configuration.RegexStringValidator a))
  (define (regex-string-validator? a)
    (clr-is System.Configuration.RegexStringValidator a))
  (define-method-port
    can-validate?
    System.Configuration.RegexStringValidator
    CanValidate
    (System.Boolean System.Type))
  (define-method-port
    validate
    System.Configuration.RegexStringValidator
    Validate
    (System.Void System.Object)))
