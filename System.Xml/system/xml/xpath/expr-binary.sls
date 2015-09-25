(library (system xml xpath expr-binary)
  (export new is? expr-binary? optimize to-string has-static-value?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprBinary a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprBinary a))
  (define (expr-binary? a) (clr-is System.Xml.XPath.ExprBinary a))
  (define-method-port
    optimize
    System.Xml.XPath.ExprBinary
    Optimize
    (System.Xml.XPath.Expression))
  (define-method-port
    to-string
    System.Xml.XPath.ExprBinary
    ToString
    (System.String))
  (define-field-port
    has-static-value?
    #f
    #f
    (property:)
    System.Xml.XPath.ExprBinary
    HasStaticValue
    System.Boolean))
