(library (system xml xpath expr-minus)
  (export new is? expr-minus? evaluate-number static-value-as-number)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprMINUS a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprMINUS a))
  (define (expr-minus? a) (clr-is System.Xml.XPath.ExprMINUS a))
  (define-method-port
    evaluate-number
    System.Xml.XPath.ExprMINUS
    EvaluateNumber
    (System.Double System.Xml.XPath.BaseIterator))
  (define-field-port
    static-value-as-number
    #f
    #f
    (property:)
    System.Xml.XPath.ExprMINUS
    StaticValueAsNumber
    System.Double))
