(library (system data node)
  (export new is? node?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.Node a ...)))))
  (define (is? a) (clr-is System.Data.Node a))
  (define (node? a) (clr-is System.Data.Node a)))
