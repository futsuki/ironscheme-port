(library (system xml linq xname)
  (export is?
          xname?
          get-hash-code
          get
          to-string
          equals?
          local-name
          namespace
          namespace-name)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Linq.XName a))
  (define (xname? a) (clr-is System.Xml.Linq.XName a))
  (define-method-port
    get-hash-code
    System.Xml.Linq.XName
    GetHashCode
    (System.Int32))
  (define-method-port
    get
    System.Xml.Linq.XName
    Get
    (static: System.Xml.Linq.XName System.String System.String)
    (static: System.Xml.Linq.XName System.String))
  (define-method-port
    to-string
    System.Xml.Linq.XName
    ToString
    (System.String))
  (define-method-port
    equals?
    System.Xml.Linq.XName
    Equals
    (System.Boolean System.Object))
  (define-field-port
    local-name
    #f
    #f
    (property:)
    System.Xml.Linq.XName
    LocalName
    System.String)
  (define-field-port
    namespace
    #f
    #f
    (property:)
    System.Xml.Linq.XName
    Namespace
    System.Xml.Linq.XNamespace)
  (define-field-port
    namespace-name
    #f
    #f
    (property:)
    System.Xml.Linq.XName
    NamespaceName
    System.String))
