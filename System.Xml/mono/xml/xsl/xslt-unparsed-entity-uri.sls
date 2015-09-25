(library (mono xml xsl xslt-unparsed-entity-uri)
  (export new is? xslt-unparsed-entity-uri? evaluate return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.XsltUnparsedEntityUri a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XsltUnparsedEntityUri a))
  (define (xslt-unparsed-entity-uri? a)
    (clr-is Mono.Xml.Xsl.XsltUnparsedEntityUri a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.XsltUnparsedEntityUri
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XsltUnparsedEntityUri
    ReturnType
    System.Xml.XPath.XPathResultType))
