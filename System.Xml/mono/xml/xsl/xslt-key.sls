(library (mono xml xsl xslt-key)
  (export new
          is?
          xslt-key?
          pattern-matches?
          evaluate
          key-name
          field
          return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.XsltKey a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XsltKey a))
  (define (xslt-key? a) (clr-is Mono.Xml.Xsl.XsltKey a))
  (define-method-port
    pattern-matches?
    Mono.Xml.Xsl.XsltKey
    PatternMatches
    (System.Boolean
      System.Xml.XPath.XPathNavigator
      System.Xml.Xsl.XsltContext))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.XsltKey
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-field-port
    key-name
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XsltKey
    KeyName
    System.Xml.XPath.Expression)
  (define-field-port
    field
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XsltKey
    Field
    System.Xml.XPath.Expression)
  (define-field-port
    return-type
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XsltKey
    ReturnType
    System.Xml.XPath.XPathResultType))
