(library (system runtime interop-services out-attribute)
  (export new is? out-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.OutAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.OutAttribute a))
  (define (out-attribute? a)
    (clr-is System.Runtime.InteropServices.OutAttribute a)))
