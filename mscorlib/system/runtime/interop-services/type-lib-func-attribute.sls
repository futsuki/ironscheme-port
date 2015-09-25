(library (system runtime interop-services type-lib-func-attribute)
  (export new is? type-lib-func-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.TypeLibFuncAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.TypeLibFuncAttribute a))
  (define (type-lib-func-attribute? a)
    (clr-is System.Runtime.InteropServices.TypeLibFuncAttribute a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.InteropServices.TypeLibFuncAttribute
    Value
    System.Runtime.InteropServices.TypeLibFuncFlags))
