(library (system default-uri-parser)
  (export new is? default-uri-parser?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.DefaultUriParser a ...)))))
  (define (is? a) (clr-is System.DefaultUriParser a))
  (define (default-uri-parser? a) (clr-is System.DefaultUriParser a)))
