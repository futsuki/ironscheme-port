(library (system xml xpath xpath-boolean-function)
  (export new is? xpath-boolean-function? return-type static-value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.XPathBooleanFunction a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.XPathBooleanFunction a))
  (define (xpath-boolean-function? a)
    (clr-is System.Xml.XPath.XPathBooleanFunction a))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathBooleanFunction
    ReturnType
    System.Xml.XPath.XPathResultType)
  (define-field-port
    static-value
    #f
    #f
    (property:)
    System.Xml.XPath.XPathBooleanFunction
    StaticValue
    System.Object))
