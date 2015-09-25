(library (system xml xml-processing-instruction)
  (export is?
          xml-processing-instruction?
          clone-node
          write-content-to
          write-to
          data-get
          data-set!
          data-update!
          inner-text-get
          inner-text-set!
          inner-text-update!
          local-name
          name
          node-type
          target
          value-get
          value-set!
          value-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XmlProcessingInstruction a))
  (define (xml-processing-instruction? a)
    (clr-is System.Xml.XmlProcessingInstruction a))
  (define-method-port
    clone-node
    System.Xml.XmlProcessingInstruction
    CloneNode
    (System.Xml.XmlNode System.Boolean))
  (define-method-port
    write-content-to
    System.Xml.XmlProcessingInstruction
    WriteContentTo
    (System.Void System.Xml.XmlWriter))
  (define-method-port
    write-to
    System.Xml.XmlProcessingInstruction
    WriteTo
    (System.Void System.Xml.XmlWriter))
  (define-field-port
    data-get
    data-set!
    data-update!
    (property:)
    System.Xml.XmlProcessingInstruction
    Data
    System.String)
  (define-field-port
    inner-text-get
    inner-text-set!
    inner-text-update!
    (property:)
    System.Xml.XmlProcessingInstruction
    InnerText
    System.String)
  (define-field-port
    local-name
    #f
    #f
    (property:)
    System.Xml.XmlProcessingInstruction
    LocalName
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Xml.XmlProcessingInstruction
    Name
    System.String)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Xml.XmlProcessingInstruction
    NodeType
    System.Xml.XmlNodeType)
  (define-field-port
    target
    #f
    #f
    (property:)
    System.Xml.XmlProcessingInstruction
    Target
    System.String)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Xml.XmlProcessingInstruction
    Value
    System.String))
