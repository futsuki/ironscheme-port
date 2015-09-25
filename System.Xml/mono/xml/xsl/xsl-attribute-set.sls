(library (mono xml xsl xsl-attribute-set)
  (export new is? xsl-attribute-set? merge evaluate name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.XslAttributeSet a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XslAttributeSet a))
  (define (xsl-attribute-set? a)
    (clr-is Mono.Xml.Xsl.XslAttributeSet a))
  (define-method-port
    merge
    Mono.Xml.Xsl.XslAttributeSet
    Merge
    (System.Void Mono.Xml.Xsl.XslAttributeSet))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.XslAttributeSet
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor))
  (define-field-port
    name
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslAttributeSet
    Name
    System.Xml.XmlQualifiedName))
