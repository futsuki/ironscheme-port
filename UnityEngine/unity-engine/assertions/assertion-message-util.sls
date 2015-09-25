(library (unity-engine assertions assertion-message-util)
  (export new
          is?
          assertion-message-util?
          boolean-failure-message
          null-failure-message
          get-message
          get-equality-message)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Assertions.AssertionMessageUtil
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Assertions.AssertionMessageUtil a))
  (define (assertion-message-util? a)
    (clr-is UnityEngine.Assertions.AssertionMessageUtil a))
  (define-method-port
    boolean-failure-message
    UnityEngine.Assertions.AssertionMessageUtil
    BooleanFailureMessage
    (static: System.String System.Boolean))
  (define-method-port
    null-failure-message
    UnityEngine.Assertions.AssertionMessageUtil
    NullFailureMessage
    (static: System.String System.Object System.Boolean))
  (define-method-port
    get-message
    UnityEngine.Assertions.AssertionMessageUtil
    GetMessage
    (static: System.String System.String System.String)
    (static: System.String System.String))
  (define-method-port
    get-equality-message
    UnityEngine.Assertions.AssertionMessageUtil
    GetEqualityMessage
    (static: System.String System.Object System.Object System.Boolean)))
