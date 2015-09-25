(library (system runtime interop-services prog-id-attribute)
  (export new is? prog-id-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.ProgIdAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.ProgIdAttribute a))
  (define (prog-id-attribute? a)
    (clr-is System.Runtime.InteropServices.ProgIdAttribute a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.InteropServices.ProgIdAttribute
    Value
    System.String))
