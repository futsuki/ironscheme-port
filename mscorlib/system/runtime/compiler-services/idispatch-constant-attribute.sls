(library (system runtime compiler-services idispatch-constant-attribute)
  (export new is? idispatch-constant-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.IDispatchConstantAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.CompilerServices.IDispatchConstantAttribute
      a))
  (define (idispatch-constant-attribute? a)
    (clr-is
      System.Runtime.CompilerServices.IDispatchConstantAttribute
      a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.CompilerServices.IDispatchConstantAttribute
    Value
    System.Object))
