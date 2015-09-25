(library (system xml serialization xml-serializer-namespaces)
  (export new is? xml-serializer-namespaces? add to-array count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlSerializerNamespaces
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlSerializerNamespaces a))
  (define (xml-serializer-namespaces? a)
    (clr-is System.Xml.Serialization.XmlSerializerNamespaces a))
  (define-method-port
    add
    System.Xml.Serialization.XmlSerializerNamespaces
    Add
    (System.Void System.String System.String))
  (define-method-port
    to-array
    System.Xml.Serialization.XmlSerializerNamespaces
    ToArray
    (System.Xml.XmlQualifiedName[]))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlSerializerNamespaces
    Count
    System.Int32))
