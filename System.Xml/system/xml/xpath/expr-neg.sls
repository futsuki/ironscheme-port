(library (system xml xpath expr-neg)
  (export new
          is?
          expr-neg?
          optimize
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
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprNEG a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprNEG a))
  (define (expr-neg? a) (clr-is System.Xml.XPath.ExprNEG a))
  (define-method-port
    optimize
    System.Xml.XPath.ExprNEG
    Optimize
    (System.Xml.XPath.Expression))
  (define-method-port
    evaluate-number
    System.Xml.XPath.ExprNEG
    EvaluateNumber
    (System.Double System.Xml.XPath.BaseIterator))
  (define-method-port
    evaluate
    System.Xml.XPath.ExprNEG
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.ExprNEG
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.ExprNEG
    ReturnType
    System.Xml.XPath.XPathResultType)
  (define-field-port
    has-static-value?
    #f
    #f
    (property:)
    System.Xml.XPath.ExprNEG
    HasStaticValue
    System.Boolean)
  (define-field-port
    static-value-as-number
    #f
    #f
    (property:)
    System.Xml.XPath.ExprNEG
    StaticValueAsNumber
    System.Double))
