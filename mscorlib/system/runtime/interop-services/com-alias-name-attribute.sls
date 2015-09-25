(library (system runtime interop-services com-alias-name-attribute)
  (export new is? com-alias-name-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.ComAliasNameAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.ComAliasNameAttribute a))
  (define (com-alias-name-attribute? a)
    (clr-is System.Runtime.InteropServices.ComAliasNameAttribute a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.InteropServices.ComAliasNameAttribute
    Value
    System.String))
