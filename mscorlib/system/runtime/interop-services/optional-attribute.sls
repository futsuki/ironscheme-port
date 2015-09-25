(library (system runtime interop-services optional-attribute)
  (export new is? optional-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.OptionalAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.OptionalAttribute a))
  (define (optional-attribute? a)
    (clr-is System.Runtime.InteropServices.OptionalAttribute a)))
