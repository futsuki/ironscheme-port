(library (system xml serialization xml-members-mapping)
  (export is? xml-members-mapping? count item type-name type-namespace)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Serialization.XmlMembersMapping a))
  (define (xml-members-mapping? a)
    (clr-is System.Xml.Serialization.XmlMembersMapping a))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlMembersMapping
    Count
    System.Int32)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlMembersMapping
    Item
    System.Xml.Serialization.XmlMemberMapping)
  (define-field-port
    type-name
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlMembersMapping
    TypeName
    System.String)
  (define-field-port
    type-namespace
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlMembersMapping
    TypeNamespace
    System.String))
