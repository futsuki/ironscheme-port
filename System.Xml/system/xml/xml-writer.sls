(library (system xml xml-writer)
  (export is?
          xml-writer?
          write-name
          write-bin-hex
          write-value
          write-start-element
          write-processing-instruction
          write-attributes
          create
          write-surrogate-char-entity
          write-char-entity
          lookup-prefix
          write-nm-token
          write-element-string
          write-entity-ref
          write-comment
          write-start-document
          write-attribute-string
          write-chars
          write-node
          write-full-end-element
          write-raw
          write-cdata
          write-doc-type
          write-base64
          write-end-attribute
          write-string
          write-end-document
          write-end-element
          write-start-attribute
          flush
          write-qualified-name
          write-whitespace
          close
          settings
          write-state
          xml-lang
          xml-space)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.XmlWriter a))
  (define (xml-writer? a) (clr-is System.Xml.XmlWriter a))
  (define-method-port
    write-name
    System.Xml.XmlWriter
    WriteName
    (System.Void System.String))
  (define-method-port
    write-bin-hex
    System.Xml.XmlWriter
    WriteBinHex
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    write-value
    System.Xml.XmlWriter
    WriteValue
    (System.Void System.String)
    (System.Void System.Single)
    (System.Void System.Object)
    (System.Void System.Int64)
    (System.Void System.Int32)
    (System.Void System.Double)
    (System.Void System.Decimal)
    (System.Void System.DateTime)
    (System.Void System.Boolean))
  (define-method-port
    write-start-element
    System.Xml.XmlWriter
    WriteStartElement
    (System.Void System.String System.String System.String)
    (System.Void System.String System.String)
    (System.Void System.String))
  (define-method-port
    write-processing-instruction
    System.Xml.XmlWriter
    WriteProcessingInstruction
    (System.Void System.String System.String))
  (define-method-port
    write-attributes
    System.Xml.XmlWriter
    WriteAttributes
    (System.Void System.Xml.XmlReader System.Boolean))
  (define-method-port
    create
    System.Xml.XmlWriter
    Create
    (static:
      System.Xml.XmlWriter
      System.Xml.XmlWriter
      System.Xml.XmlWriterSettings)
    (static:
      System.Xml.XmlWriter
      System.IO.TextWriter
      System.Xml.XmlWriterSettings)
    (static:
      System.Xml.XmlWriter
      System.Text.StringBuilder
      System.Xml.XmlWriterSettings)
    (static:
      System.Xml.XmlWriter
      System.String
      System.Xml.XmlWriterSettings)
    (static:
      System.Xml.XmlWriter
      System.IO.Stream
      System.Xml.XmlWriterSettings)
    (static: System.Xml.XmlWriter System.Text.StringBuilder)
    (static: System.Xml.XmlWriter System.Xml.XmlWriter)
    (static: System.Xml.XmlWriter System.IO.TextWriter)
    (static: System.Xml.XmlWriter System.String)
    (static: System.Xml.XmlWriter System.IO.Stream))
  (define-method-port
    write-surrogate-char-entity
    System.Xml.XmlWriter
    WriteSurrogateCharEntity
    (System.Void System.Char System.Char))
  (define-method-port
    write-char-entity
    System.Xml.XmlWriter
    WriteCharEntity
    (System.Void System.Char))
  (define-method-port
    lookup-prefix
    System.Xml.XmlWriter
    LookupPrefix
    (System.String System.String))
  (define-method-port
    write-nm-token
    System.Xml.XmlWriter
    WriteNmToken
    (System.Void System.String))
  (define-method-port
    write-element-string
    System.Xml.XmlWriter
    WriteElementString
    (System.Void
      System.String
      System.String
      System.String
      System.String)
    (System.Void System.String System.String System.String)
    (System.Void System.String System.String))
  (define-method-port
    write-entity-ref
    System.Xml.XmlWriter
    WriteEntityRef
    (System.Void System.String))
  (define-method-port
    write-comment
    System.Xml.XmlWriter
    WriteComment
    (System.Void System.String))
  (define-method-port
    write-start-document
    System.Xml.XmlWriter
    WriteStartDocument
    (System.Void System.Boolean)
    (System.Void))
  (define-method-port
    write-attribute-string
    System.Xml.XmlWriter
    WriteAttributeString
    (System.Void
      System.String
      System.String
      System.String
      System.String)
    (System.Void System.String System.String System.String)
    (System.Void System.String System.String))
  (define-method-port
    write-chars
    System.Xml.XmlWriter
    WriteChars
    (System.Void System.Char[] System.Int32 System.Int32))
  (define-method-port
    write-node
    System.Xml.XmlWriter
    WriteNode
    (System.Void System.Xml.XmlReader System.Boolean)
    (System.Void System.Xml.XPath.XPathNavigator System.Boolean))
  (define-method-port
    write-full-end-element
    System.Xml.XmlWriter
    WriteFullEndElement
    (System.Void))
  (define-method-port
    write-raw
    System.Xml.XmlWriter
    WriteRaw
    (System.Void System.Char[] System.Int32 System.Int32)
    (System.Void System.String))
  (define-method-port
    write-cdata
    System.Xml.XmlWriter
    WriteCData
    (System.Void System.String))
  (define-method-port
    write-doc-type
    System.Xml.XmlWriter
    WriteDocType
    (System.Void
      System.String
      System.String
      System.String
      System.String))
  (define-method-port
    write-base64
    System.Xml.XmlWriter
    WriteBase64
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    write-end-attribute
    System.Xml.XmlWriter
    WriteEndAttribute
    (System.Void))
  (define-method-port
    write-string
    System.Xml.XmlWriter
    WriteString
    (System.Void System.String))
  (define-method-port
    write-end-document
    System.Xml.XmlWriter
    WriteEndDocument
    (System.Void))
  (define-method-port
    write-end-element
    System.Xml.XmlWriter
    WriteEndElement
    (System.Void))
  (define-method-port
    write-start-attribute
    System.Xml.XmlWriter
    WriteStartAttribute
    (System.Void System.String System.String System.String)
    (System.Void System.String System.String)
    (System.Void System.String))
  (define-method-port flush System.Xml.XmlWriter Flush (System.Void))
  (define-method-port
    write-qualified-name
    System.Xml.XmlWriter
    WriteQualifiedName
    (System.Void System.String System.String))
  (define-method-port
    write-whitespace
    System.Xml.XmlWriter
    WriteWhitespace
    (System.Void System.String))
  (define-method-port close System.Xml.XmlWriter Close (System.Void))
  (define-field-port
    settings
    #f
    #f
    (property:)
    System.Xml.XmlWriter
    Settings
    System.Xml.XmlWriterSettings)
  (define-field-port
    write-state
    #f
    #f
    (property:)
    System.Xml.XmlWriter
    WriteState
    System.Xml.WriteState)
  (define-field-port
    xml-lang
    #f
    #f
    (property:)
    System.Xml.XmlWriter
    XmlLang
    System.String)
  (define-field-port
    xml-space
    #f
    #f
    (property:)
    System.Xml.XmlWriter
    XmlSpace
    System.Xml.XmlSpace))
