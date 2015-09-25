(library (system runtime interop-services preserve-sig-attribute)
  (export new is? preserve-sig-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.PreserveSigAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.PreserveSigAttribute a))
  (define (preserve-sig-attribute? a)
    (clr-is System.Runtime.InteropServices.PreserveSigAttribute a)))
