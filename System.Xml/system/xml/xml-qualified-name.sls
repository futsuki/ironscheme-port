(library (system xml xml-qualified-name)
  (export new
          is?
          xml-qualified-name?
          get-hash-code
          to-string
          equals?
          empty
          is-empty?
          name
          namespace)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XmlQualifiedName a ...)))))
  (define (is? a) (clr-is System.Xml.XmlQualifiedName a))
  (define (xml-qualified-name? a)
    (clr-is System.Xml.XmlQualifiedName a))
  (define-method-port
    get-hash-code
    System.Xml.XmlQualifiedName
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Xml.XmlQualifiedName
    ToString
    (static: System.String System.String System.String)
    (System.String))
  (define-method-port
    equals?
    System.Xml.XmlQualifiedName
    Equals
    (System.Boolean System.Object))
  (define-field-port
    empty
    #f
    #f
    (static:)
    System.Xml.XmlQualifiedName
    Empty
    System.Xml.XmlQualifiedName)
  (define-field-port
    is-empty?
    #f
    #f
    (property:)
    System.Xml.XmlQualifiedName
    IsEmpty
    System.Boolean)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Xml.XmlQualifiedName
    Name
    System.String)
  (define-field-port
    namespace
    #f
    #f
    (property:)
    System.Xml.XmlQualifiedName
    Namespace
    System.String))
