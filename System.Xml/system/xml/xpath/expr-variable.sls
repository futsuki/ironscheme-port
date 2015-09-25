(library (system xml xpath expr-variable)
  (export new
          is?
          expr-variable?
          get-return-type
          evaluate
          to-string
          return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprVariable a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprVariable a))
  (define (expr-variable? a) (clr-is System.Xml.XPath.ExprVariable a))
  (define-method-port
    get-return-type
    System.Xml.XPath.ExprVariable
    GetReturnType
    (System.Xml.XPath.XPathResultType System.Xml.XPath.BaseIterator))
  (define-method-port
    evaluate
    System.Xml.XPath.ExprVariable
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.ExprVariable
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.ExprVariable
    ReturnType
    System.Xml.XPath.XPathResultType))
