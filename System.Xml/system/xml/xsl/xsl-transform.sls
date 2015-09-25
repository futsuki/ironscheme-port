(library (system xml xsl xsl-transform)
  (export new is? xsl-transform? transform load xml-resolver)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.Xsl.XslTransform a ...)))))
  (define (is? a) (clr-is System.Xml.Xsl.XslTransform a))
  (define (xsl-transform? a) (clr-is System.Xml.Xsl.XslTransform a))
  (define-method-port
    transform
    System.Xml.Xsl.XslTransform
    Transform
    (System.Void System.String System.String System.Xml.XmlResolver)
    (System.Void System.String System.String)
    (System.Void
      System.Xml.XPath.XPathNavigator
      System.Xml.Xsl.XsltArgumentList
      System.IO.TextWriter
      System.Xml.XmlResolver)
    (System.Void
      System.Xml.XPath.XPathNavigator
      System.Xml.Xsl.XsltArgumentList
      System.IO.TextWriter)
    (System.Void
      System.Xml.XPath.XPathNavigator
      System.Xml.Xsl.XsltArgumentList
      System.IO.Stream
      System.Xml.XmlResolver)
    (System.Void
      System.Xml.XPath.XPathNavigator
      System.Xml.Xsl.XsltArgumentList
      System.IO.Stream)
    (System.Void
      System.Xml.XPath.XPathNavigator
      System.Xml.Xsl.XsltArgumentList
      System.Xml.XmlWriter
      System.Xml.XmlResolver)
    (System.Void
      System.Xml.XPath.XPathNavigator
      System.Xml.Xsl.XsltArgumentList
      System.Xml.XmlWriter)
    (System.Void
      System.Xml.XPath.IXPathNavigable
      System.Xml.Xsl.XsltArgumentList
      System.Xml.XmlWriter
      System.Xml.XmlResolver)
    (System.Void
      System.Xml.XPath.IXPathNavigable
      System.Xml.Xsl.XsltArgumentList
      System.Xml.XmlWriter)
    (System.Void
      System.Xml.XPath.IXPathNavigable
      System.Xml.Xsl.XsltArgumentList
      System.IO.Stream
      System.Xml.XmlResolver)
    (System.Void
      System.Xml.XPath.IXPathNavigable
      System.Xml.Xsl.XsltArgumentList
      System.IO.Stream)
    (System.Void
      System.Xml.XPath.IXPathNavigable
      System.Xml.Xsl.XsltArgumentList
      System.IO.TextWriter
      System.Xml.XmlResolver)
    (System.Void
      System.Xml.XPath.IXPathNavigable
      System.Xml.Xsl.XsltArgumentList
      System.IO.TextWriter)
    (System.Xml.XmlReader
      System.Xml.XPath.XPathNavigator
      System.Xml.Xsl.XsltArgumentList
      System.Xml.XmlResolver)
    (System.Xml.XmlReader
      System.Xml.XPath.XPathNavigator
      System.Xml.Xsl.XsltArgumentList)
    (System.Xml.XmlReader
      System.Xml.XPath.IXPathNavigable
      System.Xml.Xsl.XsltArgumentList
      System.Xml.XmlResolver)
    (System.Xml.XmlReader
      System.Xml.XPath.IXPathNavigable
      System.Xml.Xsl.XsltArgumentList))
  (define-method-port
    load
    System.Xml.Xsl.XslTransform
    Load
    (System.Void
      System.Xml.XmlReader
      System.Xml.XmlResolver
      System.Security.Policy.Evidence)
    (System.Void
      System.Xml.XPath.XPathNavigator
      System.Xml.XmlResolver
      System.Security.Policy.Evidence)
    (System.Void
      System.Xml.XPath.IXPathNavigable
      System.Xml.XmlResolver
      System.Security.Policy.Evidence)
    (System.Void
      System.Xml.XPath.IXPathNavigable
      System.Xml.XmlResolver)
    (System.Void System.Xml.XPath.IXPathNavigable)
    (System.Void System.Xml.XPath.XPathNavigator System.Xml.XmlResolver)
    (System.Void System.Xml.XPath.XPathNavigator)
    (System.Void System.Xml.XmlReader System.Xml.XmlResolver)
    (System.Void System.Xml.XmlReader)
    (System.Void System.String System.Xml.XmlResolver)
    (System.Void System.String))
  (define-field-port
    #f
    xml-resolver
    #f
    (property:)
    System.Xml.Xsl.XslTransform
    XmlResolver
    System.Xml.XmlResolver))
