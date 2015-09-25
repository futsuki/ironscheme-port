(library (mono xml xsl xsl-default-node-template)
  (export new is? xsl-default-node-template? evaluate instance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.XslDefaultNodeTemplate a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XslDefaultNodeTemplate a))
  (define (xsl-default-node-template? a)
    (clr-is Mono.Xml.Xsl.XslDefaultNodeTemplate a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.XslDefaultNodeTemplate
    Evaluate
    (System.Void
      Mono.Xml.Xsl.XslTransformProcessor
      System.Collections.Hashtable))
  (define-field-port
    instance
    #f
    #f
    (static: property:)
    Mono.Xml.Xsl.XslDefaultNodeTemplate
    Instance
    Mono.Xml.Xsl.XslTemplate))
