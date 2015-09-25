(library (system runtime interop-services idispatch-impl-attribute)
  (export new is? idispatch-impl-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.IDispatchImplAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.IDispatchImplAttribute a))
  (define (idispatch-impl-attribute? a)
    (clr-is System.Runtime.InteropServices.IDispatchImplAttribute a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.InteropServices.IDispatchImplAttribute
    Value
    System.Runtime.InteropServices.IDispatchImplType))
