(library (system xml xpath expr-numeric)
  (export new is? expr-numeric? optimize evaluate return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprNumeric a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprNumeric a))
  (define (expr-numeric? a) (clr-is System.Xml.XPath.ExprNumeric a))
  (define-method-port
    optimize
    System.Xml.XPath.ExprNumeric
    Optimize
    (System.Xml.XPath.Expression))
  (define-method-port
    evaluate
    System.Xml.XPath.ExprNumeric
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.ExprNumeric
    ReturnType
    System.Xml.XPath.XPathResultType))
