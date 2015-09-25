(library (system xml xpath expr-ge)
  (export new is? expr-ge? compare?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprGE a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprGE a))
  (define (expr-ge? a) (clr-is System.Xml.XPath.ExprGE a))
  (define-method-port
    compare?
    System.Xml.XPath.ExprGE
    Compare
    (System.Boolean System.Double System.Double)))
