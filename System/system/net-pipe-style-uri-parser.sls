(library (system net-pipe-style-uri-parser)
  (export new is? net-pipe-style-uri-parser?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.NetPipeStyleUriParser a ...)))))
  (define (is? a) (clr-is System.NetPipeStyleUriParser a))
  (define (net-pipe-style-uri-parser? a)
    (clr-is System.NetPipeStyleUriParser a)))
