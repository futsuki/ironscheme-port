(library (system
          runtime
          interop-services
          default-parameter-value-attribute)
  (export new is? default-parameter-value-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.DefaultParameterValueAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.InteropServices.DefaultParameterValueAttribute
      a))
  (define (default-parameter-value-attribute? a)
    (clr-is
      System.Runtime.InteropServices.DefaultParameterValueAttribute
      a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.InteropServices.DefaultParameterValueAttribute
    Value
    System.Object))
