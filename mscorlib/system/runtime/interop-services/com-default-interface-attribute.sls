(library (system
          runtime
          interop-services
          com-default-interface-attribute)
  (export new is? com-default-interface-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.ComDefaultInterfaceAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.InteropServices.ComDefaultInterfaceAttribute
      a))
  (define (com-default-interface-attribute? a)
    (clr-is
      System.Runtime.InteropServices.ComDefaultInterfaceAttribute
      a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.InteropServices.ComDefaultInterfaceAttribute
    Value
    System.Type))
