(library (system xml xpath expr-mult)
  (export new is? expr-mult? evaluate-number static-value-as-number)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprMULT a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprMULT a))
  (define (expr-mult? a) (clr-is System.Xml.XPath.ExprMULT a))
  (define-method-port
    evaluate-number
    System.Xml.XPath.ExprMULT
    EvaluateNumber
    (System.Double System.Xml.XPath.BaseIterator))
  (define-field-port
    static-value-as-number
    #f
    #f
    (property:)
    System.Xml.XPath.ExprMULT
    StaticValueAsNumber
    System.Double))
