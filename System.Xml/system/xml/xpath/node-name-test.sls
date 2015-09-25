(library (system xml xpath node-name-test)
  (export new is? node-name-test? get-info match? to-string name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.NodeNameTest a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.NodeNameTest a))
  (define (node-name-test? a) (clr-is System.Xml.XPath.NodeNameTest a))
  (define-method-port
    get-info
    System.Xml.XPath.NodeNameTest
    GetInfo
    (System.Void
      System.String&
      System.String&
      System.Xml.XPath.XPathNodeType&
      System.Xml.IXmlNamespaceResolver))
  (define-method-port
    match?
    System.Xml.XPath.NodeNameTest
    Match
    (System.Boolean
      System.Xml.IXmlNamespaceResolver
      System.Xml.XPath.XPathNavigator))
  (define-method-port
    to-string
    System.Xml.XPath.NodeNameTest
    ToString
    (System.String))
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Xml.XPath.NodeNameTest
    Name
    System.Xml.XmlQualifiedName))
