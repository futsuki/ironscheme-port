(library (system xml xml-url-resolver)
  (export new is? xml-url-resolver? get-entity resolve-uri credentials)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XmlUrlResolver a ...)))))
  (define (is? a) (clr-is System.Xml.XmlUrlResolver a))
  (define (xml-url-resolver? a) (clr-is System.Xml.XmlUrlResolver a))
  (define-method-port
    get-entity
    System.Xml.XmlUrlResolver
    GetEntity
    (System.Object System.Uri System.String System.Type))
  (define-method-port
    resolve-uri
    System.Xml.XmlUrlResolver
    ResolveUri
    (System.Uri System.Uri System.String))
  (define-field-port
    #f
    credentials
    #f
    (property:)
    System.Xml.XmlUrlResolver
    Credentials
    System.Net.ICredentials))
