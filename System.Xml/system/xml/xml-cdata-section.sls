(library (system xml xml-cdata-section)
  (export is?
          xml-cdata-section?
          clone-node
          write-content-to
          write-to
          local-name
          name
          node-type
          parent-node)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XmlCDataSection a))
  (define (xml-cdata-section? a) (clr-is System.Xml.XmlCDataSection a))
  (define-method-port
    clone-node
    System.Xml.XmlCDataSection
    CloneNode
    (System.Xml.XmlNode System.Boolean))
  (define-method-port
    write-content-to
    System.Xml.XmlCDataSection
    WriteContentTo
    (System.Void System.Xml.XmlWriter))
  (define-method-port
    write-to
    System.Xml.XmlCDataSection
    WriteTo
    (System.Void System.Xml.XmlWriter))
  (define-field-port
    local-name
    #f
    #f
    (property:)
    System.Xml.XmlCDataSection
    LocalName
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Xml.XmlCDataSection
    Name
    System.String)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.XmlCDataSection
    NodeType
    System.Xml.XmlNodeType)
  (define-field-port
    parent-node
    #f
    #f
    (property:)
    System.Xml.XmlCDataSection
    ParentNode
    System.Xml.XmlNode))
