(library (system runtime interop-services bstr-wrapper)
  (export new is? bstr-wrapper? wrapped-object)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.BStrWrapper
             a
             ...)))))
  (define (is? a) (clr-is System.Runtime.InteropServices.BStrWrapper a))
  (define (bstr-wrapper? a)
    (clr-is System.Runtime.InteropServices.BStrWrapper a))
  (define-field-port
    wrapped-object
    #f
    #f
    (property:)
    System.Runtime.InteropServices.BStrWrapper
    WrappedObject
    System.String))
