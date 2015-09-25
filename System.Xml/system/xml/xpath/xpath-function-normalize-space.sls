(library (system xml xpath xpath-function-normalize-space)
  (export new
          is?
          xpath-function-normalize-space?
          evaluate
          to-string
          return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.XPath.XPathFunctionNormalizeSpace
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.XPath.XPathFunctionNormalizeSpace a))
  (define (xpath-function-normalize-space? a)
    (clr-is System.Xml.XPath.XPathFunctionNormalizeSpace a))
  (define-method-port
    evaluate
    System.Xml.XPath.XPathFunctionNormalizeSpace
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.XPathFunctionNormalizeSpace
    ToString
    (System.String))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathFunctionNormalizeSpace
    ReturnType
    System.Xml.XPath.XPathResultType))
