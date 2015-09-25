(library (mono xml dtdentity-base)
  (export is?
          dtdentity-base?
          resolve
          load-failed?-get
          load-failed?-set!
          load-failed?-update!
          name-get
          name-set!
          name-update!
          public-id-get
          public-id-set!
          public-id-update!
          system-id-get
          system-id-set!
          system-id-update!
          literal-entity-value-get
          literal-entity-value-set!
          literal-entity-value-update!
          replacement-text-get
          replacement-text-set!
          replacement-text-update!
          xml-resolver
          actual-uri)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.DTDEntityBase a))
  (define (dtdentity-base? a) (clr-is Mono.Xml.DTDEntityBase a))
  (define-method-port
    resolve
    Mono.Xml.DTDEntityBase
    Resolve
    (System.Void))
  (define-field-port
    load-failed?-get
    load-failed?-set!
    load-failed?-update!
    (property:)
    Mono.Xml.DTDEntityBase
    LoadFailed
    System.Boolean)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    Mono.Xml.DTDEntityBase
    Name
    System.String)
  (define-field-port
    public-id-get
    public-id-set!
    public-id-update!
    (property:)
    Mono.Xml.DTDEntityBase
    PublicId
    System.String)
  (define-field-port
    system-id-get
    system-id-set!
    system-id-update!
    (property:)
    Mono.Xml.DTDEntityBase
    SystemId
    System.String)
  (define-field-port
    literal-entity-value-get
    literal-entity-value-set!
    literal-entity-value-update!
    (property:)
    Mono.Xml.DTDEntityBase
    LiteralEntityValue
    System.String)
  (define-field-port
    replacement-text-get
    replacement-text-set!
    replacement-text-update!
    (property:)
    Mono.Xml.DTDEntityBase
    ReplacementText
    System.String)
  (define-field-port
    #f
    xml-resolver
    #f
    (property:)
    Mono.Xml.DTDEntityBase
    XmlResolver
    System.Xml.XmlResolver)
  (define-field-port
    actual-uri
    #f
    #f
    (property:)
    Mono.Xml.DTDEntityBase
    ActualUri
    System.String))