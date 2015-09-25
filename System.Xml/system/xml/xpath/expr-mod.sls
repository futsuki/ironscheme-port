(library (system xml xpath expr-mod)
  (export new is? expr-mod? evaluate-number static-value-as-number)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprMOD a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprMOD a))
  (define (expr-mod? a) (clr-is System.Xml.XPath.ExprMOD a))
  (define-method-port
    evaluate-number
    System.Xml.XPath.ExprMOD
    EvaluateNumber
    (System.Double System.Xml.XPath.BaseIterator))
  (define-field-port
    static-value-as-number
    #f
    #f
    (property:)
    System.Xml.XPath.ExprMOD
    StaticValueAsNumber
    System.Double))
