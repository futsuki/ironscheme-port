(library (system xml xpath xpath-function-id)
  (export new is? xpath-function-id? evaluate to-string id return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionId a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionId a))
  (define (xpath-function-id? a)
    (clr-is System.Xml.XPath.XPathFunctionId a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionId
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionId
    ToString
    (System.String))
  (define-field-port
    id
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionId
    Id
    System.Xml.XPath.Expression)
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionId
    ReturnType
    System.Xml.XPath.XPathResultType))
