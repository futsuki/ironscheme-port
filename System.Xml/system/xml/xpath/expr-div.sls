(library (system xml xpath expr-div)
  (export new is? expr-div? evaluate-number static-value-as-number)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprDIV a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprDIV a))
  (define (expr-div? a) (clr-is System.Xml.XPath.ExprDIV a))
  (define-method-port
    evaluate-number
    System.Xml.XPath.ExprDIV
    EvaluateNumber
    (System.Double System.Xml.XPath.BaseIterator))
  (define-field-port
    static-value-as-number
    #f
    #f
    (property:)
    System.Xml.XPath.ExprDIV
    StaticValueAsNumber
    System.Double))
