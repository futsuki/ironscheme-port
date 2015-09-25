(library (system news-style-uri-parser)
  (export new is? news-style-uri-parser?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.NewsStyleUriParser a ...)))))
  (define (is? a) (clr-is System.NewsStyleUriParser a))
  (define (news-style-uri-parser? a)
    (clr-is System.NewsStyleUriParser a)))