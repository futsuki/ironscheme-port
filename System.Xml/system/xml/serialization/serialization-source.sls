(library (system xml serialization serialization-source)
  (export new
          is?
          serialization-source?
          can-be-generated?-get
          can-be-generated?-set!
          can-be-generated?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.SerializationSource
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.SerializationSource a))
  (define (serialization-source? a)
    (clr-is System.Xml.Serialization.SerializationSource a))
  (define-field-port
    can-be-generated?-get
    can-be-generated?-set!
    can-be-generated?-update!
    (property:)
    System.Xml.Serialization.SerializationSource
    CanBeGenerated
    System.Boolean))
