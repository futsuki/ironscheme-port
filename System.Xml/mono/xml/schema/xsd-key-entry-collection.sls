(library (mono xml schema xsd-key-entry-collection)
  (export new
          is?
          xsd-key-entry-collection?
          add
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Schema.XsdKeyEntryCollection a ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdKeyEntryCollection a))
  (define (xsd-key-entry-collection? a)
    (clr-is Mono.Xml.Schema.XsdKeyEntryCollection a))
  (define-method-port
    add
    Mono.Xml.Schema.XsdKeyEntryCollection
    Add
    (System.Void Mono.Xml.Schema.XsdKeyEntry))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    Mono.Xml.Schema.XsdKeyEntryCollection
    Item
    Mono.Xml.Schema.XsdKeyEntry))
