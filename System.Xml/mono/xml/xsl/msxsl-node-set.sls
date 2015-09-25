(library (mono xml xsl msxsl-node-set)
  (export new is? msxsl-node-set? evaluate return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.MSXslNodeSet a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.MSXslNodeSet a))
  (define (msxsl-node-set? a) (clr-is Mono.Xml.Xsl.MSXslNodeSet a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.MSXslNodeSet
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-field-port
    return-type
    #f
    #f
    (property:)
    Mono.Xml.Xsl.MSXslNodeSet
    ReturnType
    System.Xml.XPath.XPathResultType))
