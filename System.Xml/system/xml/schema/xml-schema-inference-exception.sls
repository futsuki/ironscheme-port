(library (system xml schema xml-schema-inference-exception)
  (export new is? xml-schema-inference-exception? get-object-data)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Schema.XmlSchemaInferenceException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Schema.XmlSchemaInferenceException a))
  (define (xml-schema-inference-exception? a)
    (clr-is System.Xml.Schema.XmlSchemaInferenceException a))
  (define-method-port
    get-object-data
    System.Xml.Schema.XmlSchemaInferenceException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext)))
