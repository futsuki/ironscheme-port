(library (system xml schema xml-schema-collection-enumerator)
  (export is? xml-schema-collection-enumerator? move-next? current)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Xml.Schema.XmlSchemaCollectionEnumerator a))
  (define (xml-schema-collection-enumerator? a)
    (clr-is System.Xml.Schema.XmlSchemaCollectionEnumerator a))
  (define-method-port
    move-next?
    System.Xml.Schema.XmlSchemaCollectionEnumerator
    MoveNext
    (System.Boolean))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaCollectionEnumerator
    Current
    System.Xml.Schema.XmlSchema))
