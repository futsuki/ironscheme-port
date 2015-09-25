(library (system stathread-attribute)
  (export new is? stathread-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.STAThreadAttribute a ...)))))
  (define (is? a) (clr-is System.STAThreadAttribute a))
  (define (stathread-attribute? a)
    (clr-is System.STAThreadAttribute a)))