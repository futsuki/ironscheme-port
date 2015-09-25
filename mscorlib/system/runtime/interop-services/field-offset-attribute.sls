(library (system runtime interop-services field-offset-attribute)
  (export new is? field-offset-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.FieldOffsetAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.FieldOffsetAttribute a))
  (define (field-offset-attribute? a)
    (clr-is System.Runtime.InteropServices.FieldOffsetAttribute a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.InteropServices.FieldOffsetAttribute
    Value
    System.Int32))
