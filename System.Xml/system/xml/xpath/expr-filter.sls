(library (system xml xpath expr-filter)
  (export new is? expr-filter? optimize evaluate to-string)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprFilter a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprFilter a))
  (define (expr-filter? a) (clr-is System.Xml.XPath.ExprFilter a))
  (define-method-port
    optimize
    System.Xml.XPath.ExprFilter
    Optimize
    (System.Xml.XPath.Expression))
  (define-method-port
    evaluate
    System.Xml.XPath.ExprFilter
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.ExprFilter
    ToString
    (System.String)))
