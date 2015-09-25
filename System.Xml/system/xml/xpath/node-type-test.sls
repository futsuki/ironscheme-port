(library (system xml xpath node-type-test)
  (export new is? node-type-test? get-info match? to-string type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.NodeTypeTest a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.NodeTypeTest a))
  (define (node-type-test? a) (clr-is System.Xml.XPath.NodeTypeTest a))
  (define-method-port
    get-info
    System.Xml.XPath.NodeTypeTest
    GetInfo
    (System.Void
      System.String&
      System.String&
      System.Xml.XPath.XPathNodeType&
      System.Xml.IXmlNamespaceResolver))
  (define-method-port
    match?
    System.Xml.XPath.NodeTypeTest
    Match
    (System.Boolean
      System.Xml.IXmlNamespaceResolver
      System.Xml.XPath.XPathNavigator))
  (define-method-port
    to-string
    System.Xml.XPath.NodeTypeTest
    ToString
    (System.String))
  (define-field-port
    type
    #f
    #f
    ()
    System.Xml.XPath.NodeTypeTest
    type
    System.Xml.XPath.XPathNodeType))
