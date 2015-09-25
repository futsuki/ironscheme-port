(library (system runtime interop-services type-lib-var-attribute)
  (export new is? type-lib-var-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.TypeLibVarAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.TypeLibVarAttribute a))
  (define (type-lib-var-attribute? a)
    (clr-is System.Runtime.InteropServices.TypeLibVarAttribute a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.InteropServices.TypeLibVarAttribute
    Value
    System.Runtime.InteropServices.TypeLibVarFlags))
