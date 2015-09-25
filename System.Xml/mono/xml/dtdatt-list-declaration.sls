(library (mono xml dtdatt-list-declaration)
  (export is?
          dtdatt-list-declaration?
          get
          add
          name-get
          name-set!
          name-update!
          item
          item
          definitions
          count)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.DTDAttListDeclaration a))
  (define (dtdatt-list-declaration? a)
    (clr-is Mono.Xml.DTDAttListDeclaration a))
  (define-method-port
    get
    Mono.Xml.DTDAttListDeclaration
    Get
    (Mono.Xml.DTDAttributeDefinition System.String)
    (Mono.Xml.DTDAttributeDefinition System.Int32))
  (define-method-port
    add
    Mono.Xml.DTDAttListDeclaration
    Add
    (System.Void Mono.Xml.DTDAttributeDefinition))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    Mono.Xml.DTDAttListDeclaration
    Name
    System.String)
  (define-field-port
    item
    #f
    #f
    (property:)
    Mono.Xml.DTDAttListDeclaration
    Item
    Mono.Xml.DTDAttributeDefinition)
  (define-field-port
    item
    #f
    #f
    (property:)
    Mono.Xml.DTDAttListDeclaration
    Item
    Mono.Xml.DTDAttributeDefinition)
  (define-field-port
    definitions
    #f
    #f
    (property:)
    Mono.Xml.DTDAttListDeclaration
    Definitions
    System.Collections.IList)
  (define-field-port
    count
    #f
    #f
    (property:)
    Mono.Xml.DTDAttListDeclaration
    Count
    System.Int32))
