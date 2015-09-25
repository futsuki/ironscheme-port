(library (mono xml xsl xslt-format-number)
  (export new is? xslt-format-number? evaluate return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.XsltFormatNumber a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XsltFormatNumber a))
  (define (xslt-format-number? a)
    (clr-is Mono.Xml.Xsl.XsltFormatNumber a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.XsltFormatNumber
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XsltFormatNumber
    ReturnType
    System.Xml.XPath.XPathResultType))
