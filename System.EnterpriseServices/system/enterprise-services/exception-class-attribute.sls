(library (system enterprise-services exception-class-attribute)
  (export new is? exception-class-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.ExceptionClassAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.ExceptionClassAttribute a))
  (define (exception-class-attribute? a)
    (clr-is System.EnterpriseServices.ExceptionClassAttribute a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.EnterpriseServices.ExceptionClassAttribute
    Value
    System.String))
