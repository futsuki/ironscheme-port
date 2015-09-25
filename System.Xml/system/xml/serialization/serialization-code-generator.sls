(library (system xml serialization serialization-code-generator)
  (export new
          is?
          serialization-code-generator?
          generate-writer
          generate-reader
          generate-contract
          generate-serializers
          generate
          generation-results
          referenced-types)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.SerializationCodeGenerator
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.SerializationCodeGenerator a))
  (define (serialization-code-generator? a)
    (clr-is System.Xml.Serialization.SerializationCodeGenerator a))
  (define-method-port
    generate-writer
    System.Xml.Serialization.SerializationCodeGenerator
    GenerateWriter
    (System.Void System.String System.Collections.ArrayList))
  (define-method-port
    generate-reader
    System.Xml.Serialization.SerializationCodeGenerator
    GenerateReader
    (System.Void System.String System.Collections.ArrayList))
  (define-method-port
    generate-contract
    System.Xml.Serialization.SerializationCodeGenerator
    GenerateContract
    (System.Void System.Collections.ArrayList))
  (define-method-port
    generate-serializers
    System.Xml.Serialization.SerializationCodeGenerator
    GenerateSerializers
    (System.Void System.IO.TextWriter))
  (define-method-port
    generate
    System.Xml.Serialization.SerializationCodeGenerator
    Generate
    (static: System.Void System.String System.String))
  (define-field-port
    generation-results
    #f
    #f
    (property:)
    System.Xml.Serialization.SerializationCodeGenerator
    GenerationResults
    System.Xml.Serialization.GenerationResult[])
  (define-field-port
    referenced-types
    #f
    #f
    (property:)
    System.Xml.Serialization.SerializationCodeGenerator
    ReferencedTypes
    System.Collections.ArrayList))
