(library (system xml xml-attribute-collection)
  (export is?
          xml-attribute-collection?
          remove-at
          set-named-item
          prepend
          append
          insert-before
          remove
          remove-all
          copy-to
          insert-after
          item-of
          item-of
          item-of)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XmlAttributeCollection a))
  (define (xml-attribute-collection? a)
    (clr-is System.Xml.XmlAttributeCollection a))
  (define-method-port
    remove-at
    System.Xml.XmlAttributeCollection
    RemoveAt
    (System.Xml.XmlAttribute System.Int32))
  (define-method-port
    set-named-item
    System.Xml.XmlAttributeCollection
    SetNamedItem
    (System.Xml.XmlNode System.Xml.XmlNode))
  (define-method-port
    prepend
    System.Xml.XmlAttributeCollection
    Prepend
    (System.Xml.XmlAttribute System.Xml.XmlAttribute))
  (define-method-port
    append
    System.Xml.XmlAttributeCollection
    Append
    (System.Xml.XmlAttribute System.Xml.XmlAttribute))
  (define-method-port
    insert-before
    System.Xml.XmlAttributeCollection
    InsertBefore
    (System.Xml.XmlAttribute
      System.Xml.XmlAttribute
      System.Xml.XmlAttribute))
  (define-method-port
    remove
    System.Xml.XmlAttributeCollection
    Remove
    (System.Xml.XmlAttribute System.Xml.XmlAttribute))
  (define-method-port
    remove-all
    System.Xml.XmlAttributeCollection
    RemoveAll
    (System.Void))
  (define-method-port
    copy-to
    System.Xml.XmlAttributeCollection
    CopyTo
    (System.Void System.Xml.XmlAttribute[] System.Int32))
  (define-method-port
    insert-after
    System.Xml.XmlAttributeCollection
    InsertAfter
    (System.Xml.XmlAttribute
      System.Xml.XmlAttribute
      System.Xml.XmlAttribute))
  (define-field-port
    item-of
    #f
    #f
    (property:)
    System.Xml.XmlAttributeCollection
    ItemOf
    System.Xml.XmlAttribute)
  (define-field-port
    item-of
    #f
    #f
    (property:)
    System.Xml.XmlAttributeCollection
    ItemOf
    System.Xml.XmlAttribute)
  (define-field-port
    item-of
    #f
    #f
    (property:)
    System.Xml.XmlAttributeCollection
    ItemOf
    System.Xml.XmlAttribute))
