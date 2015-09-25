(library (system xml schema extensions)
  (export is? extensions? validate get-schema-info)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Schema.Extensions a))
  (define (extensions? a) (clr-is System.Xml.Schema.Extensions a))
  (define-method-port
    validate
    System.Xml.Schema.Extensions
    Validate
    (static:
      System.Void
      System.Xml.Linq.XElement
      System.Xml.Schema.XmlSchemaObject
      System.Xml.Schema.XmlSchemaSet
      System.Xml.Schema.ValidationEventHandler
      System.Boolean)
    (static:
      System.Void
      System.Xml.Linq.XElement
      System.Xml.Schema.XmlSchemaObject
      System.Xml.Schema.XmlSchemaSet
      System.Xml.Schema.ValidationEventHandler)
    (static:
      System.Void
      System.Xml.Linq.XDocument
      System.Xml.Schema.XmlSchemaSet
      System.Xml.Schema.ValidationEventHandler
      System.Boolean)
    (static:
      System.Void
      System.Xml.Linq.XDocument
      System.Xml.Schema.XmlSchemaSet
      System.Xml.Schema.ValidationEventHandler)
    (static:
      System.Void
      System.Xml.Linq.XAttribute
      System.Xml.Schema.XmlSchemaObject
      System.Xml.Schema.XmlSchemaSet
      System.Xml.Schema.ValidationEventHandler
      System.Boolean)
    (static:
      System.Void
      System.Xml.Linq.XAttribute
      System.Xml.Schema.XmlSchemaObject
      System.Xml.Schema.XmlSchemaSet
      System.Xml.Schema.ValidationEventHandler))
  (define-method-port
    get-schema-info
    System.Xml.Schema.Extensions
    GetSchemaInfo
    (static: System.Xml.Schema.IXmlSchemaInfo System.Xml.Linq.XElement)
    (static:
      System.Xml.Schema.IXmlSchemaInfo
      System.Xml.Linq.XAttribute)))
