(library (mono xml xsl xsl-name-util)
  (export new
          is?
          xsl-name-util?
          local-name-of
          from-list-string
          from-string)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.XslNameUtil a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XslNameUtil a))
  (define (xsl-name-util? a) (clr-is Mono.Xml.Xsl.XslNameUtil a))
  (define-method-port
    local-name-of
    Mono.Xml.Xsl.XslNameUtil
    LocalNameOf
    (static: System.String System.String))
  (define-method-port
    from-list-string
    Mono.Xml.Xsl.XslNameUtil
    FromListString
    (static:
      System.Xml.XmlQualifiedName[]
      System.String
      System.Xml.XPath.XPathNavigator))
  (define-method-port
    from-string
    Mono.Xml.Xsl.XslNameUtil
    FromString
    (static:
      System.Xml.XmlQualifiedName
      System.String
      System.Xml.XmlNamespaceManager)
    (static:
      System.Xml.XmlQualifiedName
      System.String
      System.Xml.Xsl.IStaticXsltContext)
    (static:
      System.Xml.XmlQualifiedName
      System.String
      System.Collections.Hashtable)
    (static:
      System.Xml.XmlQualifiedName
      System.String
      System.Xml.XPath.XPathNavigator
      System.Boolean)
    (static:
      System.Xml.XmlQualifiedName
      System.String
      System.Xml.XPath.XPathNavigator)))
