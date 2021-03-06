(library (system mtathread-attribute)
  (export new is? mtathread-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.MTAThreadAttribute a ...)))))
  (define (is? a) (clr-is System.MTAThreadAttribute a))
  (define (mtathread-attribute? a)
    (clr-is System.MTAThreadAttribute a)))
