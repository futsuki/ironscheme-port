(library (system
          xml
          serialization
          serialization-code-generator-configuration)
  (export new
          is?
          serialization-code-generator-configuration?
          serializers-get
          serializers-set!
          serializers-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.SerializationCodeGeneratorConfiguration
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Xml.Serialization.SerializationCodeGeneratorConfiguration
      a))
  (define (serialization-code-generator-configuration? a)
    (clr-is
      System.Xml.Serialization.SerializationCodeGeneratorConfiguration
      a))
  (define-field-port
    serializers-get
    serializers-set!
    serializers-update!
    ()
    System.Xml.Serialization.SerializationCodeGeneratorConfiguration
    Serializers
    System.Xml.Serialization.SerializerInfo[]))
