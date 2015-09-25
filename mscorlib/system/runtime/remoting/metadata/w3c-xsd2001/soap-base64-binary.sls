(library (system
          runtime
          remoting
          metadata
          w3c-xsd2001
          soap-base64-binary)
  (export new
          is?
          soap-base64-binary?
          parse
          get-xsd-type
          to-string
          value-get
          value-set!
          value-update!
          xsd-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Metadata.W3cXsd2001.SoapBase64Binary
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Remoting.Metadata.W3cXsd2001.SoapBase64Binary
      a))
  (define (soap-base64-binary? a)
    (clr-is
      System.Runtime.Remoting.Metadata.W3cXsd2001.SoapBase64Binary
      a))
  (define-method-port
    parse
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapBase64Binary
    Parse
    (static:
      System.Runtime.Remoting.Metadata.W3cXsd2001.SoapBase64Binary
      System.String))
  (define-method-port
    get-xsd-type
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapBase64Binary
    GetXsdType
    (System.String))
  (define-method-port
    to-string
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapBase64Binary
    ToString
    (System.String))
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapBase64Binary
    Value
    System.Byte[])
  (define-field-port
    xsd-type
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.Metadata.W3cXsd2001.SoapBase64Binary
    XsdType
    System.String))
