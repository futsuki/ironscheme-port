(library (system configuration callback-validator)
  (export new is? callback-validator? can-validate? validate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.CallbackValidator a ...)))))
  (define (is? a) (clr-is System.Configuration.CallbackValidator a))
  (define (callback-validator? a)
    (clr-is System.Configuration.CallbackValidator a))
  (define-method-port
    can-validate?
    System.Configuration.CallbackValidator
    CanValidate
    (System.Boolean System.Type))
  (define-method-port
    validate
    System.Configuration.CallbackValidator
    Validate
    (System.Void System.Object)))
