(library (system runtime interop-services in-attribute)
  (export new is? in-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.InAttribute
             a
             ...)))))
  (define (is? a) (clr-is System.Runtime.InteropServices.InAttribute a))
  (define (in-attribute? a)
    (clr-is System.Runtime.InteropServices.InAttribute a)))
