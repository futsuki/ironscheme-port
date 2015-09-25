(library (system xml xml-secure-resolver)
  (export new
          is?
          xml-secure-resolver?
          get-entity
          resolve-uri
          create-evidence-for-url
          credentials)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XmlSecureResolver a ...)))))
  (define (is? a) (clr-is System.Xml.XmlSecureResolver a))
  (define (xml-secure-resolver? a)
    (clr-is System.Xml.XmlSecureResolver a))
  (define-method-port
    get-entity
    System.Xml.XmlSecureResolver
    GetEntity
    (System.Object System.Uri System.String System.Type))
  (define-method-port
    resolve-uri
    System.Xml.XmlSecureResolver
    ResolveUri
    (System.Uri System.Uri System.String))
  (define-method-port
    create-evidence-for-url
    System.Xml.XmlSecureResolver
    CreateEvidenceForUrl
    (static: System.Security.Policy.Evidence System.String))
  (define-field-port
    #f
    credentials
    #f
    (property:)
    System.Xml.XmlSecureResolver
    Credentials
    System.Net.ICredentials))
