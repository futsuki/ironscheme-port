(library (system
          runtime
          compiler-services
          fixed-address-value-type-attribute)
  (export new is? fixed-address-value-type-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.FixedAddressValueTypeAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.CompilerServices.FixedAddressValueTypeAttribute
      a))
  (define (fixed-address-value-type-attribute? a)
    (clr-is
      System.Runtime.CompilerServices.FixedAddressValueTypeAttribute
      a)))
