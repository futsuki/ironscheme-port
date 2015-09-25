(library (system xml xpath xpath-function-namespace-uri)
  (export new
          is?
          xpath-function-namespace-uri?
          evaluate
          to-string
          return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.XPath.XPathFunctionNamespaceUri
             a
             ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionNamespaceUri a))
  (define (xpath-function-namespace-uri? a)
    (clr-is System.Xml.XPath.XPathFunctionNamespaceUri a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionNamespaceUri
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionNamespaceUri
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionNamespaceUri
    ReturnType
    System.Xml.XPath.XPathResultType))
