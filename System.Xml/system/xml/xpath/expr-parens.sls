(library (system xml xpath expr-parens)
  (export new
          is?
          expr-parens?
          optimize
          evaluate
          to-string
          has-static-value?
          static-value
          static-value-as-string
          static-value-as-number
          static-value-as-boolean?
          return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprParens a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprParens a))
  (define (expr-parens? a) (clr-is System.Xml.XPath.ExprParens a))
  (define-method-port
    optimize
    System.Xml.XPath.ExprParens
    Optimize
    (System.Xml.XPath.Expression))
  (define-method-port
    evaluate
    System.Xml.XPath.ExprParens
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.ExprParens
    ToString
    (System.String))
  (define-field-port
    has-static-value?
    #f
    #f
    (property:)
    System.Xml.XPath.ExprParens
    HasStaticValue
    System.Boolean)
  (define-field-port
    static-value
    #f
    #f
    (property:)
    System.Xml.XPath.ExprParens
    StaticValue
    System.Object)
  (define-field-port
    static-value-as-string
    #f
    #f
    (property:)
    System.Xml.XPath.ExprParens
    StaticValueAsString
    System.String)
  (define-field-port
    static-value-as-number
    #f
    #f
    (property:)
    System.Xml.XPath.ExprParens
    StaticValueAsNumber
    System.Double)
  (define-field-port
    static-value-as-boolean?
    #f
    #f
    (property:)
    System.Xml.XPath.ExprParens
    StaticValueAsBoolean
    System.Boolean)
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.ExprParens
    ReturnType
    System.Xml.XPath.XPathResultType))
