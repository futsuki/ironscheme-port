(library (system runtime remoting metadata soap-attribute)
  (export new
          is?
          soap-attribute?
          embedded?-get
          embedded?-set!
          embedded?-update!
          use-attribute?-get
          use-attribute?-set!
          use-attribute?-update!
          xml-namespace-get
          xml-namespace-set!
          xml-namespace-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Metadata.SoapAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Metadata.SoapAttribute a))
  (define (soap-attribute? a)
    (clr-is System.Runtime.Remoting.Metadata.SoapAttribute a))
  (define-field-port
    embedded?-get
    embedded?-set!
    embedded?-update!
    (property:)
    System.Runtime.Remoting.Metadata.SoapAttribute
    Embedded
    System.Boolean)
  (define-field-port
    use-attribute?-get
    use-attribute?-set!
    use-attribute?-update!
    (property:)
    System.Runtime.Remoting.Metadata.SoapAttribute
    UseAttribute
    System.Boolean)
  (define-field-port
    xml-namespace-get
    xml-namespace-set!
    xml-namespace-update!
    (property:)
    System.Runtime.Remoting.Metadata.SoapAttribute
    XmlNamespace
    System.String))
