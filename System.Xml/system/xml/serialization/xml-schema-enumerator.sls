(library (system xml serialization xml-schema-enumerator)
  (export new is? xml-schema-enumerator? dispose move-next? current)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlSchemaEnumerator
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlSchemaEnumerator a))
  (define (xml-schema-enumerator? a)
    (clr-is System.Xml.Serialization.XmlSchemaEnumerator a))
  (define-method-port
    dispose
    System.Xml.Serialization.XmlSchemaEnumerator
    Dispose
    (System.Void))
  (define-method-port
    move-next?
    System.Xml.Serialization.XmlSchemaEnumerator
    MoveNext
    (System.Boolean))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlSchemaEnumerator
    Current
    System.Xml.Schema.XmlSchema))
