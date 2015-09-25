(library (mono xml xsl xsl-key)
  (export new is? xsl-key? name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.XslKey a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XslKey a))
  (define (xsl-key? a) (clr-is Mono.Xml.Xsl.XslKey a))
  (define-field-port
    name
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslKey
    Name
    System.Xml.XmlQualifiedName))
