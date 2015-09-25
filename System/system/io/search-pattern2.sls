(library (system io search-pattern2)
  (export new is? search-pattern2? is-match? has-wildcard?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.SearchPattern2 a ...)))))
  (define (is? a) (clr-is System.IO.SearchPattern2 a))
  (define (search-pattern2? a) (clr-is System.IO.SearchPattern2 a))
  (define-method-port
    is-match?
    System.IO.SearchPattern2
    IsMatch
    (System.Boolean System.String)
    (System.Boolean System.String System.Boolean))
  (define-field-port
    has-wildcard?
    #f
    #f
    (property:)
    System.IO.SearchPattern2
    HasWildcard
    System.Boolean))
