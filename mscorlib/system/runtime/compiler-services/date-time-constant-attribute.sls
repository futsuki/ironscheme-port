(library (system runtime compiler-services date-time-constant-attribute)
  (export new is? date-time-constant-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.DateTimeConstantAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.CompilerServices.DateTimeConstantAttribute
      a))
  (define (date-time-constant-attribute? a)
    (clr-is
      System.Runtime.CompilerServices.DateTimeConstantAttribute
      a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.CompilerServices.DateTimeConstantAttribute
    Value
    System.Object))
