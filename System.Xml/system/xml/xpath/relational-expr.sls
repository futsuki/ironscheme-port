(library (system xml xpath relational-expr)
  (export new
          is?
          relational-expr?
          compare?
          evaluate-boolean?
          static-value-as-boolean?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.RelationalExpr a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.RelationalExpr a))
  (define (relational-expr? a)
    (clr-is System.Xml.XPath.RelationalExpr a))
  (define-method-port
    compare?
    System.Xml.XPath.RelationalExpr
    Compare
    (System.Boolean System.Double System.Double System.Boolean)
    (System.Boolean System.Double System.Double))
  (define-method-port
    evaluate-boolean?
    System.Xml.XPath.RelationalExpr
    EvaluateBoolean
    (System.Boolean System.Xml.XPath.BaseIterator))
  (define-field-port
    static-value-as-boolean?
    #f
    #f
    (property:)
    System.Xml.XPath.RelationalExpr
    StaticValueAsBoolean
    System.Boolean))
