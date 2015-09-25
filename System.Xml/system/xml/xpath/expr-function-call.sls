(library (system xml xpath expr-function-call)
  (export new
          is?
          expr-function-call?
          get-return-type
          evaluate
          factory
          to-string
          return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.ExprFunctionCall a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprFunctionCall a))
  (define (expr-function-call? a)
    (clr-is System.Xml.XPath.ExprFunctionCall a))
  (define-method-port
    get-return-type
    System.Xml.XPath.ExprFunctionCall
    GetReturnType
    (System.Xml.XPath.XPathResultType System.Xml.XPath.BaseIterator))
  (define-method-port
    evaluate
    System.Xml.XPath.ExprFunctionCall
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    factory
    System.Xml.XPath.ExprFunctionCall
    Factory
    (static:
      System.Xml.XPath.Expression
      System.Xml.XmlQualifiedName
      System.Xml.XPath.FunctionArguments
      System.Xml.Xsl.IStaticXsltContext))
  (define-method-port
    to-string
    System.Xml.XPath.ExprFunctionCall
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.ExprFunctionCall
    ReturnType
    System.Xml.XPath.XPathResultType))
