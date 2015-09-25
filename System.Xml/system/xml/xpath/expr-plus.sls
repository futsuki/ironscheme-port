(library (system xml xpath expr-plus)
  (export new is? expr-plus? evaluate-number static-value-as-number)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprPLUS a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprPLUS a))
  (define (expr-plus? a) (clr-is System.Xml.XPath.ExprPLUS a))
  (define-method-port
    evaluate-number
    System.Xml.XPath.ExprPLUS
    EvaluateNumber
    (System.Double System.Xml.XPath.BaseIterator))
  (define-field-port
    static-value-as-number
    #f
    #f
    (property:)
    System.Xml.XPath.ExprPLUS
    StaticValueAsNumber
    System.Double))
