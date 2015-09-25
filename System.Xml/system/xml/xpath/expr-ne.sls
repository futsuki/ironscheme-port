(library (system xml xpath expr-ne)
  (export new is? expr-ne?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprNE a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprNE a))
  (define (expr-ne? a) (clr-is System.Xml.XPath.ExprNE a)))
