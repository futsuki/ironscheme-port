(library (system data merge-manager)
  (export new is? merge-manager?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.MergeManager a ...)))))
  (define (is? a) (clr-is System.Data.MergeManager a))
  (define (merge-manager? a) (clr-is System.Data.MergeManager a)))
