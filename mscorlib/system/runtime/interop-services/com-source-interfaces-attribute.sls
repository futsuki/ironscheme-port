(library (system
          runtime
          interop-services
          com-source-interfaces-attribute)
  (export new is? com-source-interfaces-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.ComSourceInterfacesAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.InteropServices.ComSourceInterfacesAttribute
      a))
  (define (com-source-interfaces-attribute? a)
    (clr-is
      System.Runtime.InteropServices.ComSourceInterfacesAttribute
      a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.InteropServices.ComSourceInterfacesAttribute
    Value
    System.String))
