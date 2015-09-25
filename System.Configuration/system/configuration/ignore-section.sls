(library (system configuration ignore-section)
  (export new is? ignore-section?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.IgnoreSection a ...)))))
  (define (is? a) (clr-is System.Configuration.IgnoreSection a))
  (define (ignore-section? a)
    (clr-is System.Configuration.IgnoreSection a)))