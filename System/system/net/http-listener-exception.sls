(library (system net http-listener-exception)
  (export new is? http-listener-exception? error-code)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.HttpListenerException a ...)))))
  (define (is? a) (clr-is System.Net.HttpListenerException a))
  (define (http-listener-exception? a)
    (clr-is System.Net.HttpListenerException a))
  (define-field-port
    error-code
    #f
    #f
    (property:)
    System.Net.HttpListenerException
    ErrorCode
    System.Int32))
