(library (system xml xpath node-test)
  (export new
          is?
          node-test?
          get-info
          evaluate
          match?
          axis
          require-sorting?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.NodeTest a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.NodeTest a))
  (define (node-test? a) (clr-is System.Xml.XPath.NodeTest a))
  (define-method-port
    get-info
    System.Xml.XPath.NodeTest
    GetInfo
    (System.Void
      System.String&
      System.String&
      System.Xml.XPath.XPathNodeType&
      System.Xml.IXmlNamespaceResolver))
  (define-method-port
    evaluate
    System.Xml.XPath.NodeTest
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    match?
    System.Xml.XPath.NodeTest
    Match
    (System.Boolean
      System.Xml.IXmlNamespaceResolver
      System.Xml.XPath.XPathNavigator))
  (define-field-port
    axis
    #f
    #f
    (property:)
    System.Xml.XPath.NodeTest
    Axis
    System.Xml.XPath.AxisSpecifier)
  (define-field-port
    require-sorting?
    #f
    #f
    (property:)
    System.Xml.XPath.NodeTest
    RequireSorting
    System.Boolean))
