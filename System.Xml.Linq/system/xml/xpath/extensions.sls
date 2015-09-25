(library (system xml xpath extensions)
  (export is?
          extensions?
          create-navigator
          xpath-select-elements
          xpath-select-element
          xpath-evaluate)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XPath.Extensions a))
  (define (extensions? a) (clr-is System.Xml.XPath.Extensions a))
  (define-method-port
    create-navigator
    System.Xml.XPath.Extensions
    CreateNavigator
    (static:
      System.Xml.XPath.XPathNavigator
      System.Xml.Linq.XNode
      System.Xml.XmlNameTable)
    (static: System.Xml.XPath.XPathNavigator System.Xml.Linq.XNode))
  (define-method-port
    xpath-select-elements
    System.Xml.XPath.Extensions
    XPathSelectElements
    (static:
      "System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XElement, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
      System.Xml.Linq.XNode
      System.String
      System.Xml.IXmlNamespaceResolver)
    (static:
      "System.Collections.Generic.IEnumerable`1[[System.Xml.Linq.XElement, System.Xml.Linq, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
      System.Xml.Linq.XNode
      System.String))
  (define-method-port
    xpath-select-element
    System.Xml.XPath.Extensions
    XPathSelectElement
    (static:
      System.Xml.Linq.XElement
      System.Xml.Linq.XNode
      System.String
      System.Xml.IXmlNamespaceResolver)
    (static:
      System.Xml.Linq.XElement
      System.Xml.Linq.XNode
      System.String))
  (define-method-port
    xpath-evaluate
    System.Xml.XPath.Extensions
    XPathEvaluate
    (static:
      System.Object
      System.Xml.Linq.XNode
      System.String
      System.Xml.IXmlNamespaceResolver)
    (static: System.Object System.Xml.Linq.XNode System.String)))
