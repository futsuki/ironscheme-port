(library (system runtime interop-services type-lib-type-attribute)
  (export new is? type-lib-type-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.TypeLibTypeAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.TypeLibTypeAttribute a))
  (define (type-lib-type-attribute? a)
    (clr-is System.Runtime.InteropServices.TypeLibTypeAttribute a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.InteropServices.TypeLibTypeAttribute
    Value
    System.Runtime.InteropServices.TypeLibTypeFlags))
