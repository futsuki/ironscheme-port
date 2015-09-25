(library (mono xml xsl xsl-default-text-template)
  (export is? xsl-default-text-template? evaluate instance)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Xsl.XslDefaultTextTemplate a))
  (define (xsl-default-text-template? a)
    (clr-is Mono.Xml.Xsl.XslDefaultTextTemplate a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.XslDefaultTextTemplate
    Evaluate
    (System.Void
      Mono.Xml.Xsl.XslTransformProcessor
      System.Collections.Hashtable))
  (define-field-port
    instance
    #f
    #f
    (static: property:)
    Mono.Xml.Xsl.XslDefaultTextTemplate
    Instance
    Mono.Xml.Xsl.XslTemplate))
