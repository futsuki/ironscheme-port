(library (system xml xml-name-entry)
  (export new
          is?
          xml-name-entry?
          get-hash-code
          get-prefixed-name
          update
          equals?
          prefix-get
          prefix-set!
          prefix-update!
          local-name-get
          local-name-set!
          local-name-update!
          ns-get
          ns-set!
          ns-update!
          hash-get
          hash-set!
          hash-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XmlNameEntry a ...)))))
  (define (is? a) (clr-is System.Xml.XmlNameEntry a))
  (define (xml-name-entry? a) (clr-is System.Xml.XmlNameEntry a))
  (define-method-port
    get-hash-code
    System.Xml.XmlNameEntry
    GetHashCode
    (System.Int32))
  (define-method-port
    get-prefixed-name
    System.Xml.XmlNameEntry
    GetPrefixedName
    (System.String System.Xml.XmlNameEntryCache))
  (define-method-port
    update
    System.Xml.XmlNameEntry
    Update
    (System.Void System.String System.String System.String))
  (define-method-port
    equals?
    System.Xml.XmlNameEntry
    Equals
    (System.Boolean System.Object))
  (define-field-port
    prefix-get
    prefix-set!
    prefix-update!
    ()
    System.Xml.XmlNameEntry
    Prefix
    System.String)
  (define-field-port
    local-name-get
    local-name-set!
    local-name-update!
    ()
    System.Xml.XmlNameEntry
    LocalName
    System.String)
  (define-field-port
    ns-get
    ns-set!
    ns-update!
    ()
    System.Xml.XmlNameEntry
    NS
    System.String)
  (define-field-port
    hash-get
    hash-set!
    hash-update!
    ()
    System.Xml.XmlNameEntry
    Hash
    System.Int32))
