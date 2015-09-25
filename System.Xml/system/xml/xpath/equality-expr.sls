(library (system xml xpath equality-expr)
  (export new
          is?
          equality-expr?
          evaluate-boolean?
          static-value-as-boolean?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.EqualityExpr a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.EqualityExpr a))
  (define (equality-expr? a) (clr-is System.Xml.XPath.EqualityExpr a))
  (define-method-port
    evaluate-boolean?
    System.Xml.XPath.EqualityExpr
    EvaluateBoolean
    (System.Boolean System.Xml.XPath.BaseIterator))
  (define-field-port
    static-value-as-boolean?
    #f
    #f
    (property:)
    System.Xml.XPath.EqualityExpr
    StaticValueAsBoolean
    System.Boolean))
