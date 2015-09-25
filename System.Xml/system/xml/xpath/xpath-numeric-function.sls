(library (system xml xpath xpath-numeric-function)
  (export is? xpath-numeric-function? return-type static-value)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XPath.XPathNumericFunction a))
  (define (xpath-numeric-function? a)
    (clr-is System.Xml.XPath.XPathNumericFunction a))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNumericFunction
    ReturnType
    System.Xml.XPath.XPathResultType)
  (define-field-port
    static-value
    #f
    #f
    (property:)
    System.Xml.XPath.XPathNumericFunction
    StaticValue
    System.Object))
