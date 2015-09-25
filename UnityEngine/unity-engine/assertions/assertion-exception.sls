(library (unity-engine assertions assertion-exception)
  (export new is? assertion-exception? message)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Assertions.AssertionException a ...)))))
  (define (is? a) (clr-is UnityEngine.Assertions.AssertionException a))
  (define (assertion-exception? a)
    (clr-is UnityEngine.Assertions.AssertionException a))
  (define-field-port
    message
    #f
    #f
    (property:)
    UnityEngine.Assertions.AssertionException
    Message
    System.String))
