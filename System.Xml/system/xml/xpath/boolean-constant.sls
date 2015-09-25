(library (system xml xpath boolean-constant)
  (export new
          is?
          boolean-constant?
          evaluate
          to-string
          evaluate-boolean?
          return-type
          has-static-value?
          static-value-as-boolean?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.BooleanConstant a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.BooleanConstant a))
  (define (boolean-constant? a)
    (clr-is System.Xml.XPath.BooleanConstant a))
  (define-method-port
    evaluate
    System.Xml.XPath.BooleanConstant
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.BooleanConstant
    ToString
    (System.String))
  (define-method-port
    evaluate-boolean?
    System.Xml.XPath.BooleanConstant
    EvaluateBoolean
    (System.Boolean System.Xml.XPath.BaseIterator))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.BooleanConstant
    ReturnType
    System.Xml.XPath.XPathResultType)
  (define-field-port
    has-static-value?
    #f
    #f
    (property:)
    System.Xml.XPath.BooleanConstant
    HasStaticValue
    System.Boolean)
  (define-field-port
    static-value-as-boolean?
    #f
    #f
    (property:)
    System.Xml.XPath.BooleanConstant
    StaticValueAsBoolean
    System.Boolean))
