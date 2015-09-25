(library (system rank-exception)
  (export new is? rank-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.RankException a ...)))))
  (define (is? a) (clr-is System.RankException a))
  (define (rank-exception? a) (clr-is System.RankException a)))
