(library (system xml schema xml-schema-object-enumerator)
  (export is? xml-schema-object-enumerator? reset move-next? current)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Xml.Schema.XmlSchemaObjectEnumerator a))
  (define (xml-schema-object-enumerator? a)
    (clr-is System.Xml.Schema.XmlSchemaObjectEnumerator a))
  (define-method-port
    reset
    System.Xml.Schema.XmlSchemaObjectEnumerator
    Reset
    (System.Void))
  (define-method-port
    move-next?
    System.Xml.Schema.XmlSchemaObjectEnumerator
    MoveNext
    (System.Boolean))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Xml.Schema.XmlSchemaObjectEnumerator
    Current
    System.Xml.Schema.XmlSchemaObject))
