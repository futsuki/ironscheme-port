(library (mono xml xsl xsl-empty-template)
  (export is? xsl-empty-template? evaluate instance)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Xsl.XslEmptyTemplate a))
  (define (xsl-empty-template? a)
    (clr-is Mono.Xml.Xsl.XslEmptyTemplate a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.XslEmptyTemplate
    Evaluate
    (System.Void
      Mono.Xml.Xsl.XslTransformProcessor
      System.Collections.Hashtable))
  (define-field-port
    instance
    #f
    #f
    (static: property:)
    Mono.Xml.Xsl.XslEmptyTemplate
    Instance
    Mono.Xml.Xsl.XslTemplate))
