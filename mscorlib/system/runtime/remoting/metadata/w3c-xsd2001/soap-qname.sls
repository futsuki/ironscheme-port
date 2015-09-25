(library (system runtime remoting metadata w3c-xsd2001 soap-qname)
  (export new
          is?
          soap-qname?
          parse
          get-xsd-type
          to-string
          key-get
          key-set!
          key-update!
          name-get
          name-set!
          name-update!
          namespace-get
          namespace-set!
          namespace-update!
          xsd-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Metadata.W3cXsd2001.SoapQName
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Metadata.W3cXsd2001.SoapQName a))
  (define (soap-qname? a)
    (clr-is System.Runtime.Remoting.Metadata.W3cXsd2001.SoapQName a))
  (define-method-port
    parse
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapQName
    Parse
    (static:
      System.Runtime.Remoting.Metadata.W3cXsd2001.SoapQName
      System.String))
  (define-method-port
    get-xsd-type
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapQName
    GetXsdType
    (System.String))
  (define-method-port
    to-string
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapQName
    ToString
    (System.String))
  (define-field-port
    key-get
    key-set!
    key-update!
    (property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapQName
    Key
    System.String)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapQName
    Name
    System.String)
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    (property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapQName
    Namespace
    System.String)
  (define-field-port
    xsd-type
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapQName
    XsdType
    System.String))
