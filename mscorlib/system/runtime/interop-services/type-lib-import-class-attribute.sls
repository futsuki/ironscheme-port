(library (system
          runtime
          interop-services
          type-lib-import-class-attribute)
  (export new is? type-lib-import-class-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.TypeLibImportClassAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.InteropServices.TypeLibImportClassAttribute
      a))
  (define (type-lib-import-class-attribute? a)
    (clr-is
      System.Runtime.InteropServices.TypeLibImportClassAttribute
      a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.InteropServices.TypeLibImportClassAttribute
    Value
    System.String))
