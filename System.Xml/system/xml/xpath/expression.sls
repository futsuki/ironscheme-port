(library (system xml xpath expression)
  (export new
          is?
          expression?
          evaluate-node-set
          optimize
          evaluate-number
          get-return-type
          evaluate-string
          evaluate
          evaluate-as
          evaluate-boolean?
          return-type
          has-static-value?
          static-value
          static-value-as-string
          static-value-as-number
          static-value-as-boolean?
          static-value-as-navigator
          require-sorting?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.Expression a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.Expression a))
  (define (expression? a) (clr-is System.Xml.XPath.Expression a))
  (define-method-port
    evaluate-node-set
    System.Xml.XPath.Expression
    EvaluateNodeSet
    (System.Xml.XPath.BaseIterator System.Xml.XPath.BaseIterator))
  (define-method-port
    optimize
    System.Xml.XPath.Expression
    Optimize
    (System.Xml.XPath.Expression))
  (define-method-port
    evaluate-number
    System.Xml.XPath.Expression
    EvaluateNumber
    (System.Double System.Xml.XPath.BaseIterator))
  (define-method-port
    get-return-type
    System.Xml.XPath.Expression
    GetReturnType
    (System.Xml.XPath.XPathResultType System.Xml.XPath.BaseIterator))
  (define-method-port
    evaluate-string
    System.Xml.XPath.Expression
    EvaluateString
    (System.String System.Xml.XPath.BaseIterator))
  (define-method-port
    evaluate
    System.Xml.XPath.Expression
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    evaluate-as
    System.Xml.XPath.Expression
    EvaluateAs
    (System.Object
      System.Xml.XPath.BaseIterator
      System.Xml.XPath.XPathResultType))
  (define-method-port
    evaluate-boolean?
    System.Xml.XPath.Expression
    EvaluateBoolean
    (System.Boolean System.Xml.XPath.BaseIterator))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.Expression
    ReturnType
    System.Xml.XPath.XPathResultType)
  (define-field-port
    has-static-value?
    #f
    #f
    (property:)
    System.Xml.XPath.Expression
    HasStaticValue
    System.Boolean)
  (define-field-port
    static-value
    #f
    #f
    (property:)
    System.Xml.XPath.Expression
    StaticValue
    System.Object)
  (define-field-port
    static-value-as-string
    #f
    #f
    (property:)
    System.Xml.XPath.Expression
    StaticValueAsString
    System.String)
  (define-field-port
    static-value-as-number
    #f
    #f
    (property:)
    System.Xml.XPath.Expression
    StaticValueAsNumber
    System.Double)
  (define-field-port
    static-value-as-boolean?
    #f
    #f
    (property:)
    System.Xml.XPath.Expression
    StaticValueAsBoolean
    System.Boolean)
  (define-field-port
    static-value-as-navigator
    #f
    #f
    (property:)
    System.Xml.XPath.Expression
    StaticValueAsNavigator
    System.Xml.XPath.XPathNavigator)
  (define-field-port
    require-sorting?
    #f
    #f
    (property:)
    System.Xml.XPath.Expression
    RequireSorting
    System.Boolean))
