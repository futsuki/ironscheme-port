(library (mono xml dtdentity-declaration)
  (export is?
          dtdentity-declaration?
          scan-entity-value
          notation-name-get
          notation-name-set!
          notation-name-update!
          has-external-reference?
          entity-value)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.DTDEntityDeclaration a))
  (define (dtdentity-declaration? a)
    (clr-is Mono.Xml.DTDEntityDeclaration a))
  (define-method-port
    scan-entity-value
    Mono.Xml.DTDEntityDeclaration
    ScanEntityValue
    (System.Void System.Collections.ArrayList))
  (define-field-port
    notation-name-get
    notation-name-set!
    notation-name-update!
    (property:)
    Mono.Xml.DTDEntityDeclaration
    NotationName
    System.String)
  (define-field-port
    has-external-reference?
    #f
    #f
    (property:)
    Mono.Xml.DTDEntityDeclaration
    HasExternalReference
    System.Boolean)
  (define-field-port
    entity-value
    #f
    #f
    (property:)
    Mono.Xml.DTDEntityDeclaration
    EntityValue
    System.String))
