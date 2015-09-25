(library (system missing-field-exception)
  (export new is? missing-field-exception? message)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.MissingFieldException a ...)))))
  (define (is? a) (clr-is System.MissingFieldException a))
  (define (missing-field-exception? a)
    (clr-is System.MissingFieldException a))
  (define-field-port
    message
    #f
    #f
    (property:)
    System.MissingFieldException
    Message
    System.String))
