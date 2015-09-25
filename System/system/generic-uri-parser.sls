(library (system generic-uri-parser)
  (export new is? generic-uri-parser?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.GenericUriParser a ...)))))
  (define (is? a) (clr-is System.GenericUriParser a))
  (define (generic-uri-parser? a) (clr-is System.GenericUriParser a)))
