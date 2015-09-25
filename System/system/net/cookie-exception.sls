(library (system net cookie-exception)
  (export new is? cookie-exception? get-object-data)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.CookieException a ...)))))
  (define (is? a) (clr-is System.Net.CookieException a))
  (define (cookie-exception? a) (clr-is System.Net.CookieException a))
  (define-method-port
    get-object-data
    System.Net.CookieException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext)))
