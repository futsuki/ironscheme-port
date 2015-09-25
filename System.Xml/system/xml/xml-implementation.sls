(library (system xml xml-implementation)
  (export new is? xml-implementation? has-feature? create-document)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XmlImplementation a ...)))))
  (define (is? a) (clr-is System.Xml.XmlImplementation a))
  (define (xml-implementation? a)
    (clr-is System.Xml.XmlImplementation a))
  (define-method-port
    has-feature?
    System.Xml.XmlImplementation
    HasFeature
    (System.Boolean System.String System.String))
  (define-method-port
    create-document
    System.Xml.XmlImplementation
    CreateDocument
    (System.Xml.XmlDocument)))
