(library (system runtime interop-services guid-attribute)
  (export new is? guid-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.GuidAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.GuidAttribute a))
  (define (guid-attribute? a)
    (clr-is System.Runtime.InteropServices.GuidAttribute a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.InteropServices.GuidAttribute
    Value
    System.String))
