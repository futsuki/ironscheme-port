(library (system xml xpath xpath-function-substring)
  (export new
          is?
          xpath-function-substring?
          evaluate
          to-string
          return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathFunctionSubstring a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionSubstring a))
  (define (xpath-function-substring? a)
    (clr-is System.Xml.XPath.XPathFunctionSubstring a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionSubstring
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionSubstring
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionSubstring
    ReturnType
    System.Xml.XPath.XPathResultType))
