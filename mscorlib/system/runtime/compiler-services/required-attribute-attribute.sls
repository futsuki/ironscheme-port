(library (system runtime compiler-services required-attribute-attribute)
  (export new is? required-attribute-attribute? required-contract)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.RequiredAttributeAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.CompilerServices.RequiredAttributeAttribute
      a))
  (define (required-attribute-attribute? a)
    (clr-is
      System.Runtime.CompilerServices.RequiredAttributeAttribute
      a))
  (define-field-port
    required-contract
    #f
    #f
    (property:)
    System.Runtime.CompilerServices.RequiredAttributeAttribute
    RequiredContract
    System.Type))
