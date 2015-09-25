(library (system xml xml-resolver)
  (export is? xml-resolver? get-entity resolve-uri credentials)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XmlResolver a))
  (define (xml-resolver? a) (clr-is System.Xml.XmlResolver a))
  (define-method-port
    get-entity
    System.Xml.XmlResolver
    GetEntity
    (System.Object System.Uri System.String System.Type))
  (define-method-port
    resolve-uri
    System.Xml.XmlResolver
    ResolveUri
    (System.Uri System.Uri System.String))
  (define-field-port
    #f
    credentials
    #f
    (property:)
    System.Xml.XmlResolver
    Credentials
    System.Net.ICredentials))
