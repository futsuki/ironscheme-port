(library (system io ioexception)
  (export new is? ioexception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.IOException a ...)))))
  (define (is? a) (clr-is System.IO.IOException a))
  (define (ioexception? a) (clr-is System.IO.IOException a)))
