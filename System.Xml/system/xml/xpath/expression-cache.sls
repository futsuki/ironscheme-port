(library (system xml xpath expression-cache)
  (export is? expression-cache? set get)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XPath.ExpressionCache a))
  (define (expression-cache? a)
    (clr-is System.Xml.XPath.ExpressionCache a))
  (define-method-port
    set
    System.Xml.XPath.ExpressionCache
    Set
    (static:
      System.Void
      System.String
      System.Xml.Xsl.IStaticXsltContext
      System.Xml.XPath.XPathExpression))
  (define-method-port
    get
    System.Xml.XPath.ExpressionCache
    Get
    (static:
      System.Xml.XPath.XPathExpression
      System.String
      System.Xml.Xsl.IStaticXsltContext)))
