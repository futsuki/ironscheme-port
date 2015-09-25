(library (mono xml xsl xsl-template)
  (export new
          is?
          xsl-template?
          evaluate
          id
          name
          match
          mode
          priority
          parent)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.XslTemplate a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XslTemplate a))
  (define (xsl-template? a) (clr-is Mono.Xml.Xsl.XslTemplate a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.XslTemplate
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor)
    (System.Void
      Mono.Xml.Xsl.XslTransformProcessor
      System.Collections.Hashtable))
  (define-field-port
    id
    #f
    #f
    ()
    Mono.Xml.Xsl.XslTemplate
    Id
    System.Int32)
  (define-field-port
    name
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTemplate
    Name
    System.Xml.XmlQualifiedName)
  (define-field-port
    match
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTemplate
    Match
    Mono.Xml.XPath.Pattern)
  (define-field-port
    mode
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTemplate
    Mode
    System.Xml.XmlQualifiedName)
  (define-field-port
    priority
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTemplate
    Priority
    System.Double)
  (define-field-port
    parent
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTemplate
    Parent
    Mono.Xml.Xsl.XslStylesheet))
