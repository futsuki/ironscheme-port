(library (system runtime compiler-services method-impl-attribute)
  (export new
          is?
          method-impl-attribute?
          method-code-type-get
          method-code-type-set!
          method-code-type-update!
          value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.MethodImplAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.MethodImplAttribute a))
  (define (method-impl-attribute? a)
    (clr-is System.Runtime.CompilerServices.MethodImplAttribute a))
  (define-field-port
    method-code-type-get
    method-code-type-set!
    method-code-type-update!
    ()
    System.Runtime.CompilerServices.MethodImplAttribute
    MethodCodeType
    System.Runtime.CompilerServices.MethodCodeType)
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.CompilerServices.MethodImplAttribute
    Value
    System.Runtime.CompilerServices.MethodImplOptions))
