(library (system xml xpath expr-or)
  (export new is? expr-or? evaluate-boolean? static-value-as-boolean?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprOR a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprOR a))
  (define (expr-or? a) (clr-is System.Xml.XPath.ExprOR a))
  (define-method-port
    evaluate-boolean?
    System.Xml.XPath.ExprOR
    EvaluateBoolean
    (System.Boolean System.Xml.XPath.BaseIterator))
  (define-field-port
    static-value-as-boolean?
    #f
    #f
    (property:)
    System.Xml.XPath.ExprOR
    StaticValueAsBoolean
    System.Boolean))
