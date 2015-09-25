(library (system xml xpath xpath-function-translate)
  (export new
          is?
          xpath-function-translate?
          evaluate
          to-string
          return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionTranslate a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionTranslate a))
  (define (xpath-function-translate? a)
    (clr-is System.Xml.XPath.XPathFunctionTranslate a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionTranslate
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionTranslate
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionTranslate
    ReturnType
    System.Xml.XPath.XPathResultType))
