(library (system xml schema xsd-inference)
  (export is?
          xsd-inference?
          process
          namespace-xml
          namespace-xmlns
          xdt-namespace)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Schema.XsdInference a))
  (define (xsd-inference? a) (clr-is System.Xml.Schema.XsdInference a))
  (define-method-port
    process
    System.Xml.Schema.XsdInference
    Process
    (static:
      System.Xml.Schema.XmlSchemaSet
      System.Xml.XmlReader
      System.Xml.Schema.XmlSchemaSet
      System.Boolean
      System.Boolean))
  (define-field-port
    namespace-xml
    #f
    #f
    (static:)
    System.Xml.Schema.XsdInference
    NamespaceXml
    System.String)
  (define-field-port
    namespace-xmlns
    #f
    #f
    (static:)
    System.Xml.Schema.XsdInference
    NamespaceXmlns
    System.String)
  (define-field-port
    xdt-namespace
    #f
    #f
    (static:)
    System.Xml.Schema.XsdInference
    XdtNamespace
    System.String))
