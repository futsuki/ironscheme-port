(library (system xml xpath expr-eq)
  (export new is? expr-eq?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprEQ a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprEQ a))
  (define (expr-eq? a) (clr-is System.Xml.XPath.ExprEQ a)))
