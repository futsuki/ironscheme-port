(library (system runtime interop-services interface-type-attribute)
  (export new is? interface-type-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.InterfaceTypeAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.InterfaceTypeAttribute a))
  (define (interface-type-attribute? a)
    (clr-is System.Runtime.InteropServices.InterfaceTypeAttribute a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.InteropServices.InterfaceTypeAttribute
    Value
    System.Runtime.InteropServices.ComInterfaceType))
