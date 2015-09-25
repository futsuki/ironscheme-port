(library (system xml xml-character-data)
  (export is?
          xml-character-data?
          append-data
          delete-data
          substring
          insert-data
          replace-data
          data-get
          data-set!
          data-update!
          inner-text-get
          inner-text-set!
          inner-text-update!
          length
          value-get
          value-set!
          value-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XmlCharacterData a))
  (define (xml-character-data? a)
    (clr-is System.Xml.XmlCharacterData a))
  (define-method-port
    append-data
    System.Xml.XmlCharacterData
    AppendData
    (System.Void System.String))
  (define-method-port
    delete-data
    System.Xml.XmlCharacterData
    DeleteData
    (System.Void System.Int32 System.Int32))
  (define-method-port
    substring
    System.Xml.XmlCharacterData
    Substring
    (System.String System.Int32 System.Int32))
  (define-method-port
    insert-data
    System.Xml.XmlCharacterData
    InsertData
    (System.Void System.Int32 System.String))
  (define-method-port
    replace-data
    System.Xml.XmlCharacterData
    ReplaceData
    (System.Void System.Int32 System.Int32 System.String))
  (define-field-port
    data-get
    data-set!
    data-update!
    (property:)
    System.Xml.XmlCharacterData
    Data
    System.String)
  (define-field-port
    inner-text-get
    inner-text-set!
    inner-text-update!
    (property:)
    System.Xml.XmlCharacterData
    InnerText
    System.String)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.Xml.XmlCharacterData
    Length
    System.Int32)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Xml.XmlCharacterData
    Value
    System.String))
