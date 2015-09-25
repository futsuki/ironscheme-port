(library (system xml linq xnamespace)
  (export is?
          xnamespace?
          get-hash-code
          get
          get-name
          to-string
          equals?
          none
          xml
          xmlns
          namespace-name)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Linq.XNamespace a))
  (define (xnamespace? a) (clr-is System.Xml.Linq.XNamespace a))
  (define-method-port
    get-hash-code
    System.Xml.Linq.XNamespace
    GetHashCode
    (System.Int32))
  (define-method-port
    get
    System.Xml.Linq.XNamespace
    Get
    (static: System.Xml.Linq.XNamespace System.String))
  (define-method-port
    get-name
    System.Xml.Linq.XNamespace
    GetName
    (System.Xml.Linq.XName System.String))
  (define-method-port
    to-string
    System.Xml.Linq.XNamespace
    ToString
    (System.String))
  (define-method-port
    equals?
    System.Xml.Linq.XNamespace
    Equals
    (System.Boolean System.Object))
  (define-field-port
    none
    #f
    #f
    (static: property:)
    System.Xml.Linq.XNamespace
    None
    System.Xml.Linq.XNamespace)
  (define-field-port
    xml
    #f
    #f
    (static: property:)
    System.Xml.Linq.XNamespace
    Xml
    System.Xml.Linq.XNamespace)
  (define-field-port
    xmlns
    #f
    #f
    (static: property:)
    System.Xml.Linq.XNamespace
    Xmlns
    System.Xml.Linq.XNamespace)
  (define-field-port
    namespace-name
    #f
    #f
    (property:)
    System.Xml.Linq.XNamespace
    NamespaceName
    System.String))
