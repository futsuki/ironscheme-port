(library (system xml xsl xslt-context)
  (export is?
          xslt-context?
          compare-document
          resolve-variable
          preserve-whitespace?
          resolve-function
          whitespace?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Xsl.XsltContext a))
  (define (xslt-context? a) (clr-is System.Xml.Xsl.XsltContext a))
  (define-method-port
    compare-document
    System.Xml.Xsl.XsltContext
    CompareDocument
    (System.Int32 System.String System.String))
  (define-method-port
    resolve-variable
    System.Xml.Xsl.XsltContext
    ResolveVariable
    (System.Xml.Xsl.IXsltContextVariable System.String System.String))
  (define-method-port
    preserve-whitespace?
    System.Xml.Xsl.XsltContext
    PreserveWhitespace
    (System.Boolean System.Xml.XPath.XPathNavigator))
  (define-method-port
    resolve-function
    System.Xml.Xsl.XsltContext
    ResolveFunction
    (System.Xml.Xsl.IXsltContextFunction
      System.String
      System.String
      System.Xml.XPath.XPathResultType[]))
  (define-field-port
    whitespace?
    #f
    #f
    (property:)
    System.Xml.Xsl.XsltContext
    Whitespace
    System.Boolean))
