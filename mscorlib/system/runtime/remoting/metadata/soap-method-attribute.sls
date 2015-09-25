(library (system runtime remoting metadata soap-method-attribute)
  (export new
          is?
          soap-method-attribute?
          response-xml-element-name-get
          response-xml-element-name-set!
          response-xml-element-name-update!
          response-xml-namespace-get
          response-xml-namespace-set!
          response-xml-namespace-update!
          return-xml-element-name-get
          return-xml-element-name-set!
          return-xml-element-name-update!
          soap-action-get
          soap-action-set!
          soap-action-update!
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
             System.Runtime.Remoting.Metadata.SoapMethodAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Metadata.SoapMethodAttribute a))
  (define (soap-method-attribute? a)
    (clr-is System.Runtime.Remoting.Metadata.SoapMethodAttribute a))
  (define-field-port
    response-xml-element-name-get
    response-xml-element-name-set!
    response-xml-element-name-update!
    (property:)
    System.Runtime.Remoting.Metadata.SoapMethodAttribute
    ResponseXmlElementName
    System.String)
  (define-field-port
    response-xml-namespace-get
    response-xml-namespace-set!
    response-xml-namespace-update!
    (property:)
    System.Runtime.Remoting.Metadata.SoapMethodAttribute
    ResponseXmlNamespace
    System.String)
  (define-field-port
    return-xml-element-name-get
    return-xml-element-name-set!
    return-xml-element-name-update!
    (property:)
    System.Runtime.Remoting.Metadata.SoapMethodAttribute
    ReturnXmlElementName
    System.String)
  (define-field-port
    soap-action-get
    soap-action-set!
    soap-action-update!
    (property:)
    System.Runtime.Remoting.Metadata.SoapMethodAttribute
    SoapAction
    System.String)
  (define-field-port
    use-attribute?-get
    use-attribute?-set!
    use-attribute?-update!
    (property:)
    System.Runtime.Remoting.Metadata.SoapMethodAttribute
    UseAttribute
    System.Boolean)
  (define-field-port
    xml-namespace-get
    xml-namespace-set!
    xml-namespace-update!
    (property:)
    System.Runtime.Remoting.Metadata.SoapMethodAttribute
    XmlNamespace
    System.String))
