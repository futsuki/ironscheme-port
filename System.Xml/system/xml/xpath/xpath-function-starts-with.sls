(library (system xml xpath xpath-function-starts-with)
  (export new
          is?
          xpath-function-starts-with?
          evaluate
          to-string
          return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionStartsWith a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionStartsWith a))
  (define (xpath-function-starts-with? a)
    (clr-is System.Xml.XPath.XPathFunctionStartsWith a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionStartsWith
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionStartsWith
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionStartsWith
    ReturnType
    System.Xml.XPath.XPathResultType))
