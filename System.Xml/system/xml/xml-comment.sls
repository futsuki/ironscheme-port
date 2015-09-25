(library (system xml xml-comment)
  (export is?
          xml-comment?
          clone-node
          write-content-to
          write-to
          local-name
          name
          node-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XmlComment a))
  (define (xml-comment? a) (clr-is System.Xml.XmlComment a))
  (define-method-port
    clone-node
    System.Xml.XmlComment
    CloneNode
    (System.Xml.XmlNode System.Boolean))
  (define-method-port
    write-content-to
    System.Xml.XmlComment
    WriteContentTo
    (System.Void System.Xml.XmlWriter))
  (define-method-port
    write-to
    System.Xml.XmlComment
    WriteTo
    (System.Void System.Xml.XmlWriter))
  (define-field-port
    local-name
    #f
    #f
    (property:)
    System.Xml.XmlComment
    LocalName
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Xml.XmlComment
    Name
    System.String)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.XmlComment
    NodeType
    System.Xml.XmlNodeType))
