(library (system runtime interop-services dispatch-wrapper)
  (export new is? dispatch-wrapper? wrapped-object)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.DispatchWrapper
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.DispatchWrapper a))
  (define (dispatch-wrapper? a)
    (clr-is System.Runtime.InteropServices.DispatchWrapper a))
  (define-field-port
    wrapped-object
    #f
    #f
    (property:)
    System.Runtime.InteropServices.DispatchWrapper
    WrappedObject
    System.Object))
