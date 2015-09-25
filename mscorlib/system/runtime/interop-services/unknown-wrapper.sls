(library (system runtime interop-services unknown-wrapper)
  (export new is? unknown-wrapper? wrapped-object)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.UnknownWrapper
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.UnknownWrapper a))
  (define (unknown-wrapper? a)
    (clr-is System.Runtime.InteropServices.UnknownWrapper a))
  (define-field-port
    wrapped-object
    #f
    #f
    (property:)
    System.Runtime.InteropServices.UnknownWrapper
    WrappedObject
    System.Object))
