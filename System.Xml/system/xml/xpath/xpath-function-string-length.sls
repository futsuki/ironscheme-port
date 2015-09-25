(library (system xml xpath xpath-function-string-length)
  (export new
          is?
          xpath-function-string-length?
          evaluate
          to-string
          return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.XPath.XPathFunctionStringLength
             a
             ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathFunctionStringLength a))
  (define (xpath-function-string-length? a)
    (clr-is System.Xml.XPath.XPathFunctionStringLength a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionStringLength
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionStringLength
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionStringLength
    ReturnType
    System.Xml.XPath.XPathResultType))
