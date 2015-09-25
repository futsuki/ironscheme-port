(library (system runtime compiler-services iunknown-constant-attribute)
  (export new is? iunknown-constant-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.IUnknownConstantAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.CompilerServices.IUnknownConstantAttribute
      a))
  (define (iunknown-constant-attribute? a)
    (clr-is
      System.Runtime.CompilerServices.IUnknownConstantAttribute
      a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.CompilerServices.IUnknownConstantAttribute
    Value
    System.Object))
