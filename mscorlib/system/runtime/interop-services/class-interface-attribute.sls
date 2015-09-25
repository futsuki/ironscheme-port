(library (system runtime interop-services class-interface-attribute)
  (export new is? class-interface-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.ClassInterfaceAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.ClassInterfaceAttribute a))
  (define (class-interface-attribute? a)
    (clr-is System.Runtime.InteropServices.ClassInterfaceAttribute a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.InteropServices.ClassInterfaceAttribute
    Value
    System.Runtime.InteropServices.ClassInterfaceType))
