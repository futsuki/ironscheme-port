(library (system xml serialization xml-type-serialization-source)
  (export new is? xml-type-serialization-source? get-hash-code equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlTypeSerializationSource
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlTypeSerializationSource a))
  (define (xml-type-serialization-source? a)
    (clr-is System.Xml.Serialization.XmlTypeSerializationSource a))
  (define-method-port
    get-hash-code
    System.Xml.Serialization.XmlTypeSerializationSource
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.Xml.Serialization.XmlTypeSerializationSource
    Equals
    (System.Boolean System.Object)))
