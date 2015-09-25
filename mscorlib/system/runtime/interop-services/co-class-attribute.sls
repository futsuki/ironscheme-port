(library (system runtime interop-services co-class-attribute)
  (export new is? co-class-attribute? co-class)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.CoClassAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.CoClassAttribute a))
  (define (co-class-attribute? a)
    (clr-is System.Runtime.InteropServices.CoClassAttribute a))
  (define-field-port
    co-class
    #f
    #f
    (property:)
    System.Runtime.InteropServices.CoClassAttribute
    CoClass
    System.Type))
