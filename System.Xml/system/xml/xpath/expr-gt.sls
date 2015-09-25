(library (system xml xpath expr-gt)
  (export new is? expr-gt? compare?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprGT a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprGT a))
  (define (expr-gt? a) (clr-is System.Xml.XPath.ExprGT a))
  (define-method-port
    compare?
    System.Xml.XPath.ExprGT
    Compare
    (System.Boolean System.Double System.Double)))
