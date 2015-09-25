(library (system runtime remoting metadata soap-type-attribute)
  (export new
          is?
          soap-type-attribute?
          soap-options-get
          soap-options-set!
          soap-options-update!
          use-attribute?-get
          use-attribute?-set!
          use-attribute?-update!
          xml-element-name-get
          xml-element-name-set!
          xml-element-name-update!
          xml-field-order-get
          xml-field-order-set!
          xml-field-order-update!
          xml-namespace-get
          xml-namespace-set!
          xml-namespace-update!
          xml-type-name-get
          xml-type-name-set!
          xml-type-name-update!
          xml-type-namespace-get
          xml-type-namespace-set!
          xml-type-namespace-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Metadata.SoapTypeAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Metadata.SoapTypeAttribute a))
  (define (soap-type-attribute? a)
    (clr-is System.Runtime.Remoting.Metadata.SoapTypeAttribute a))
  (define-field-port
    soap-options-get
    soap-options-set!
    soap-options-update!
    (property:)
    System.Runtime.Remoting.Metadata.SoapTypeAttribute
    SoapOptions
    System.Runtime.Remoting.Metadata.SoapOption)
  (define-field-port
    use-attribute?-get
    use-attribute?-set!
    use-attribute?-update!
    (property:)
    System.Runtime.Remoting.Metadata.SoapTypeAttribute
    UseAttribute
    System.Boolean)
  (define-field-port
    xml-element-name-get
    xml-element-name-set!
    xml-element-name-update!
    (property:)
    System.Runtime.Remoting.Metadata.SoapTypeAttribute
    XmlElementName
    System.String)
  (define-field-port
    xml-field-order-get
    xml-field-order-set!
    xml-field-order-update!
    (property:)
    System.Runtime.Remoting.Metadata.SoapTypeAttribute
    XmlFieldOrder
    System.Runtime.Remoting.Metadata.XmlFieldOrderOption)
  (define-field-port
    xml-namespace-get
    xml-namespace-set!
    xml-namespace-update!
    (property:)
    System.Runtime.Remoting.Metadata.SoapTypeAttribute
    XmlNamespace
    System.String)
  (define-field-port
    xml-type-name-get
    xml-type-name-set!
    xml-type-name-update!
    (property:)
    System.Runtime.Remoting.Metadata.SoapTypeAttribute
    XmlTypeName
    System.String)
  (define-field-port
    xml-type-namespace-get
    xml-type-namespace-set!
    xml-type-namespace-update!
    (property:)
    System.Runtime.Remoting.Metadata.SoapTypeAttribute
    XmlTypeNamespace
    System.String))
