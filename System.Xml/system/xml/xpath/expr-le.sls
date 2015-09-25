(library (system xml xpath expr-le)
  (export new is? expr-le? compare?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprLE a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprLE a))
  (define (expr-le? a) (clr-is System.Xml.XPath.ExprLE a))
  (define-method-port
    compare?
    System.Xml.XPath.ExprLE
    Compare
    (System.Boolean System.Double System.Double)))
