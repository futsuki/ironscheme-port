(library (system xml xpath expr-and)
  (export new is? expr-and? evaluate-boolean? static-value-as-boolean?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprAND a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprAND a))
  (define (expr-and? a) (clr-is System.Xml.XPath.ExprAND a))
  (define-method-port
    evaluate-boolean?
    System.Xml.XPath.ExprAND
    EvaluateBoolean
    (System.Boolean System.Xml.XPath.BaseIterator))
  (define-field-port
    static-value-as-boolean?
    #f
    #f
    (property:)
    System.Xml.XPath.ExprAND
    StaticValueAsBoolean
    System.Boolean))
