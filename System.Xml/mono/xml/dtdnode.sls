(library (mono xml dtdnode)
  (export is?
          dtdnode?
          set-line-info
          has-line-info?
          base-uri-get
          base-uri-set!
          base-uri-update!
          is-internal-subset?-get
          is-internal-subset?-set!
          is-internal-subset?-update!
          line-number-get
          line-number-set!
          line-number-update!
          line-position-get
          line-position-set!
          line-position-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.DTDNode a))
  (define (dtdnode? a) (clr-is Mono.Xml.DTDNode a))
  (define-method-port
    set-line-info
    Mono.Xml.DTDNode
    SetLineInfo
    (System.Void System.Xml.Schema.XmlSchemaObject))
  (define-method-port
    has-line-info?
    Mono.Xml.DTDNode
    HasLineInfo
    (System.Boolean))
  (define-field-port
    base-uri-get
    base-uri-set!
    base-uri-update!
    (property:)
    Mono.Xml.DTDNode
    BaseURI
    System.String)
  (define-field-port
    is-internal-subset?-get
    is-internal-subset?-set!
    is-internal-subset?-update!
    (property:)
    Mono.Xml.DTDNode
    IsInternalSubset
    System.Boolean)
  (define-field-port
    line-number-get
    line-number-set!
    line-number-update!
    (property:)
    Mono.Xml.DTDNode
    LineNumber
    System.Int32)
  (define-field-port
    line-position-get
    line-position-set!
    line-position-update!
    (property:)
    Mono.Xml.DTDNode
    LinePosition
    System.Int32))
