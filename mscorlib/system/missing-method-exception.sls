(library (system missing-method-exception)
  (export new is? missing-method-exception? message)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.MissingMethodException a ...)))))
  (define (is? a) (clr-is System.MissingMethodException a))
  (define (missing-method-exception? a)
    (clr-is System.MissingMethodException a))
  (define-field-port
    message
    #f
    #f
    (property:)
    System.MissingMethodException
    Message
    System.String))
