(library (system xml xpath xpath-function-substring-before)
  (export new
          is?
          xpath-function-substring-before?
          evaluate
          to-string
          return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.XPath.XPathFunctionSubstringBefore
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.XPath.XPathFunctionSubstringBefore a))
  (define (xpath-function-substring-before? a)
    (clr-is System.Xml.XPath.XPathFunctionSubstringBefore a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionSubstringBefore
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionSubstringBefore
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionSubstringBefore
    ReturnType
    System.Xml.XPath.XPathResultType))
