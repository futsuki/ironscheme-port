(library (system runtime interop-services external-exception)
  (export new is? external-exception? error-code)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.ExternalException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.ExternalException a))
  (define (external-exception? a)
    (clr-is System.Runtime.InteropServices.ExternalException a))
  (define-field-port
    error-code
    #f
    #f
    (property:)
    System.Runtime.InteropServices.ExternalException
    ErrorCode
    System.Int32))
