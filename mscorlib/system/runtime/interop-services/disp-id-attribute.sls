(library (system runtime interop-services disp-id-attribute)
  (export new is? disp-id-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.DispIdAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.DispIdAttribute a))
  (define (disp-id-attribute? a)
    (clr-is System.Runtime.InteropServices.DispIdAttribute a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.InteropServices.DispIdAttribute
    Value
    System.Int32))
