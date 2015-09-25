(library (system
          runtime
          interop-services
          imported-from-type-lib-attribute)
  (export new is? imported-from-type-lib-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.ImportedFromTypeLibAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.InteropServices.ImportedFromTypeLibAttribute
      a))
  (define (imported-from-type-lib-attribute? a)
    (clr-is
      System.Runtime.InteropServices.ImportedFromTypeLibAttribute
      a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.InteropServices.ImportedFromTypeLibAttribute
    Value
    System.String))
