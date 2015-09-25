(library (system xml serialization generation-result)
  (export new
          is?
          generation-result?
          mapping-get
          mapping-set!
          mapping-update!
          reader-class-name-get
          reader-class-name-set!
          reader-class-name-update!
          read-method-name-get
          read-method-name-set!
          read-method-name-update!
          writer-class-name-get
          writer-class-name-set!
          writer-class-name-update!
          write-method-name-get
          write-method-name-set!
          write-method-name-update!
          namespace-get
          namespace-set!
          namespace-update!
          serializer-class-name-get
          serializer-class-name-set!
          serializer-class-name-update!
          base-serializer-class-name-get
          base-serializer-class-name-set!
          base-serializer-class-name-update!
          implementation-class-name-get
          implementation-class-name-set!
          implementation-class-name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Serialization.GenerationResult a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.GenerationResult a))
  (define (generation-result? a)
    (clr-is System.Xml.Serialization.GenerationResult a))
  (define-field-port
    mapping-get
    mapping-set!
    mapping-update!
    ()
    System.Xml.Serialization.GenerationResult
    Mapping
    System.Xml.Serialization.XmlMapping)
  (define-field-port
    reader-class-name-get
    reader-class-name-set!
    reader-class-name-update!
    ()
    System.Xml.Serialization.GenerationResult
    ReaderClassName
    System.String)
  (define-field-port
    read-method-name-get
    read-method-name-set!
    read-method-name-update!
    ()
    System.Xml.Serialization.GenerationResult
    ReadMethodName
    System.String)
  (define-field-port
    writer-class-name-get
    writer-class-name-set!
    writer-class-name-update!
    ()
    System.Xml.Serialization.GenerationResult
    WriterClassName
    System.String)
  (define-field-port
    write-method-name-get
    write-method-name-set!
    write-method-name-update!
    ()
    System.Xml.Serialization.GenerationResult
    WriteMethodName
    System.String)
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    ()
    System.Xml.Serialization.GenerationResult
    Namespace
    System.String)
  (define-field-port
    serializer-class-name-get
    serializer-class-name-set!
    serializer-class-name-update!
    ()
    System.Xml.Serialization.GenerationResult
    SerializerClassName
    System.String)
  (define-field-port
    base-serializer-class-name-get
    base-serializer-class-name-set!
    base-serializer-class-name-update!
    ()
    System.Xml.Serialization.GenerationResult
    BaseSerializerClassName
    System.String)
  (define-field-port
    implementation-class-name-get
    implementation-class-name-set!
    implementation-class-name-update!
    ()
    System.Xml.Serialization.GenerationResult
    ImplementationClassName
    System.String))
