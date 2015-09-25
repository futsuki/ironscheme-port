(library (mono xml schema xsd-key-entry-field-collection)
  (export new
          is?
          xsd-key-entry-field-collection?
          add
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Xml.Schema.XsdKeyEntryFieldCollection
             a
             ...)))))
  (define (is? a) (clr-is Mono.Xml.Schema.XsdKeyEntryFieldCollection a))
  (define (xsd-key-entry-field-collection? a)
    (clr-is Mono.Xml.Schema.XsdKeyEntryFieldCollection a))
  (define-method-port
    add
    Mono.Xml.Schema.XsdKeyEntryFieldCollection
    Add
    (System.Int32 Mono.Xml.Schema.XsdKeyEntryField))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    Mono.Xml.Schema.XsdKeyEntryFieldCollection
    Item
    Mono.Xml.Schema.XsdKeyEntryField))
