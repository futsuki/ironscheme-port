(library (system xml xpath expr-union)
  (export new is? expr-union? optimize evaluate to-string)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprUNION a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprUNION a))
  (define (expr-union? a) (clr-is System.Xml.XPath.ExprUNION a))
  (define-method-port
    optimize
    System.Xml.XPath.ExprUNION
    Optimize
    (System.Xml.XPath.Expression))
  (define-method-port
    evaluate
    System.Xml.XPath.ExprUNION
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.ExprUNION
    ToString
    (System.String)))
