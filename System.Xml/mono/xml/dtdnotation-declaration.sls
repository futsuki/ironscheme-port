(library (mono xml dtdnotation-declaration)
  (export is?
          dtdnotation-declaration?
          name-get
          name-set!
          name-update!
          public-id-get
          public-id-set!
          public-id-update!
          system-id-get
          system-id-set!
          system-id-update!
          local-name-get
          local-name-set!
          local-name-update!
          prefix-get
          prefix-set!
          prefix-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.DTDNotationDeclaration a))
  (define (dtdnotation-declaration? a)
    (clr-is Mono.Xml.DTDNotationDeclaration a))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    Mono.Xml.DTDNotationDeclaration
    Name
    System.String)
  (define-field-port
    public-id-get
    public-id-set!
    public-id-update!
    (property:)
    Mono.Xml.DTDNotationDeclaration
    PublicId
    System.String)
  (define-field-port
    system-id-get
    system-id-set!
    system-id-update!
    (property:)
    Mono.Xml.DTDNotationDeclaration
    SystemId
    System.String)
  (define-field-port
    local-name-get
    local-name-set!
    local-name-update!
    (property:)
    Mono.Xml.DTDNotationDeclaration
    LocalName
    System.String)
  (define-field-port
    prefix-get
    prefix-set!
    prefix-update!
    (property:)
    Mono.Xml.DTDNotationDeclaration
    Prefix
    System.String))
