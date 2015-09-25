(library (system xml schema xml-schema-inference)
  (export new
          is?
          xml-schema-inference?
          infer-schema
          occurrence-get
          occurrence-set!
          occurrence-update!
          type-inference-get
          type-inference-set!
          type-inference-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Schema.XmlSchemaInference a ...)))))
  (define (is? a) (clr-is System.Xml.Schema.XmlSchemaInference a))
  (define (xml-schema-inference? a)
    (clr-is System.Xml.Schema.XmlSchemaInference a))
  (define-method-port
    infer-schema
    System.Xml.Schema.XmlSchemaInference
    InferSchema
    (System.Xml.Schema.XmlSchemaSet
      System.Xml.XmlReader
      System.Xml.Schema.XmlSchemaSet)
    (System.Xml.Schema.XmlSchemaSet System.Xml.XmlReader))
  (define-field-port
    occurrence-get
    occurrence-set!
    occurrence-update!
    (property:)
    System.Xml.Schema.XmlSchemaInference
    Occurrence
    System.Xml.Schema.XmlSchemaInference+InferenceOption)
  (define-field-port
    type-inference-get
    type-inference-set!
    type-inference-update!
    (property:)
    System.Xml.Schema.XmlSchemaInference
    TypeInference
    System.Xml.Schema.XmlSchemaInference+InferenceOption))
