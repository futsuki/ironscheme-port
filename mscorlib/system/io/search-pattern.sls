(library (system io search-pattern)
  (export new is? search-pattern? is-match?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.SearchPattern a ...)))))
  (define (is? a) (clr-is System.IO.SearchPattern a))
  (define (search-pattern? a) (clr-is System.IO.SearchPattern a))
  (define-method-port
    is-match?
    System.IO.SearchPattern
    IsMatch
    (System.Boolean System.String)))
