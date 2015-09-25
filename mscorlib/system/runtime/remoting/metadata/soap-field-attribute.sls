(library (system runtime remoting metadata soap-field-attribute)
  (export new
          is?
          soap-field-attribute?
          is-interop-xml-element?
          order-get
          order-set!
          order-update!
          xml-element-name-get
          xml-element-name-set!
          xml-element-name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Metadata.SoapFieldAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Metadata.SoapFieldAttribute a))
  (define (soap-field-attribute? a)
    (clr-is System.Runtime.Remoting.Metadata.SoapFieldAttribute a))
  (define-method-port
    is-interop-xml-element?
    System.Runtime.Remoting.Metadata.SoapFieldAttribute
    IsInteropXmlElement
    (System.Boolean))
  (define-field-port
    order-get
    order-set!
    order-update!
    (property:)
    System.Runtime.Remoting.Metadata.SoapFieldAttribute
    Order
    System.Int32)
  (define-field-port
    xml-element-name-get
    xml-element-name-set!
    xml-element-name-update!
    (property:)
    System.Runtime.Remoting.Metadata.SoapFieldAttribute
    XmlElementName
    System.String))
