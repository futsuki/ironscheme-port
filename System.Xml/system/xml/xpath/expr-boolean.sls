(library (system xml xpath expr-boolean)
  (export new
          is?
          expr-boolean?
          optimize
          evaluate-number
          evaluate-string
          evaluate
          return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprBoolean a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprBoolean a))
  (define (expr-boolean? a) (clr-is System.Xml.XPath.ExprBoolean a))
  (define-method-port
    optimize
    System.Xml.XPath.ExprBoolean
    Optimize
    (System.Xml.XPath.Expression))
  (define-method-port
    evaluate-number
    System.Xml.XPath.ExprBoolean
    EvaluateNumber
    (System.Double System.Xml.XPath.BaseIterator))
  (define-method-port
    evaluate-string
    System.Xml.XPath.ExprBoolean
    EvaluateString
    (System.String System.Xml.XPath.BaseIterator))
  (define-method-port
    evaluate
    System.Xml.XPath.ExprBoolean
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.ExprBoolean
    ReturnType
    System.Xml.XPath.XPathResultType))
