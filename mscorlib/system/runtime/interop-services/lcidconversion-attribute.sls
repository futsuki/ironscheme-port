(library (system runtime interop-services lcidconversion-attribute)
  (export new is? lcidconversion-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.LCIDConversionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.LCIDConversionAttribute a))
  (define (lcidconversion-attribute? a)
    (clr-is System.Runtime.InteropServices.LCIDConversionAttribute a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.InteropServices.LCIDConversionAttribute
    Value
    System.Int32))
