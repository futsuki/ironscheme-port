(library (system xml xpath expr-literal)
  (export new
          is?
          expr-literal?
          evaluate-string
          evaluate
          to-string
          value
          return-type
          has-static-value?
          static-value-as-string)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprLiteral a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprLiteral a))
  (define (expr-literal? a) (clr-is System.Xml.XPath.ExprLiteral a))
  (define-method-port
    evaluate-string
    System.Xml.XPath.ExprLiteral
    EvaluateString
    (System.String System.Xml.XPath.BaseIterator))
  (define-method-port
    evaluate
    System.Xml.XPath.ExprLiteral
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.ExprLiteral
    ToString
    (System.String))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Xml.XPath.ExprLiteral
    Value
    System.String)
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.ExprLiteral
    ReturnType
    System.Xml.XPath.XPathResultType)
  (define-field-port
    has-static-value?
    #f
    #f
    (property:)
    System.Xml.XPath.ExprLiteral
    HasStaticValue
    System.Boolean)
  (define-field-port
    static-value-as-string
    #f
    #f
    (property:)
    System.Xml.XPath.ExprLiteral
    StaticValueAsString
    System.String))
