(library (system xml xpath expr-number)
  (export new
          is?
          expr-number?
          evaluate-number
          evaluate
          to-string
          return-type
          has-static-value?
          static-value-as-number)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprNumber a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprNumber a))
  (define (expr-number? a) (clr-is System.Xml.XPath.ExprNumber a))
  (define-method-port
    evaluate-number
    System.Xml.XPath.ExprNumber
    EvaluateNumber
    (System.Double System.Xml.XPath.BaseIterator))
  (define-method-port
    evaluate
    System.Xml.XPath.ExprNumber
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.ExprNumber
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.ExprNumber
    ReturnType
    System.Xml.XPath.XPathResultType)
  (define-field-port
    has-static-value?
    #f
    #f
    (property:)
    System.Xml.XPath.ExprNumber
    HasStaticValue
    System.Boolean)
  (define-field-port
    static-value-as-number
    #f
    #f
    (property:)
    System.Xml.XPath.ExprNumber
    StaticValueAsNumber
    System.Double))
