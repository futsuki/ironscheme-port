(library (system xml xpath expr-lt)
  (export new is? expr-lt? compare?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprLT a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprLT a))
  (define (expr-lt? a) (clr-is System.Xml.XPath.ExprLT a))
  (define-method-port
    compare?
    System.Xml.XPath.ExprLT
    Compare
    (System.Boolean System.Double System.Double)))
