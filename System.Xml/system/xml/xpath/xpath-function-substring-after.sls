(library (system xml xpath xpath-function-substring-after)
  (export new
          is?
          xpath-function-substring-after?
          evaluate
          to-string
          return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.XPath.XPathFunctionSubstringAfter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.XPath.XPathFunctionSubstringAfter a))
  (define (xpath-function-substring-after? a)
    (clr-is System.Xml.XPath.XPathFunctionSubstringAfter a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionSubstringAfter
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionSubstringAfter
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionSubstringAfter
    ReturnType
    System.Xml.XPath.XPathResultType))
