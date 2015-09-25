(library (system runtime interop-services error-wrapper)
  (export new is? error-wrapper? error-code)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.ErrorWrapper
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.ErrorWrapper a))
  (define (error-wrapper? a)
    (clr-is System.Runtime.InteropServices.ErrorWrapper a))
  (define-field-port
    error-code
    #f
    #f
    (property:)
    System.Runtime.InteropServices.ErrorWrapper
    ErrorCode
    System.Int32))
