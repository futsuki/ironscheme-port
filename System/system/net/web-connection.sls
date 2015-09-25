(library (system net web-connection)
  (export new is? web-connection?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.WebConnection a ...)))))
  (define (is? a) (clr-is System.Net.WebConnection a))
  (define (web-connection? a) (clr-is System.Net.WebConnection a)))
