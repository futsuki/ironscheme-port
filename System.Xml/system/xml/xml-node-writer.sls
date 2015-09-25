(library (system xml xml-node-writer)
  (export new
          is?
          xml-node-writer?
          write-name
          write-bin-hex
          write-start-element
          write-processing-instruction
          write-surrogate-char-entity
          lookup-prefix
          write-nm-token
          write-entity-ref
          write-comment
          write-start-document
          write-char-entity
          write-chars
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
          document
          write-state
          xml-lang
          xml-space)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XmlNodeWriter a ...)))))
  (define (is? a) (clr-is System.Xml.XmlNodeWriter a))
  (define (xml-node-writer? a) (clr-is System.Xml.XmlNodeWriter a))
  (define-method-port
    write-name
    System.Xml.XmlNodeWriter
    WriteName
    (System.Void System.String))
  (define-method-port
    write-bin-hex
    System.Xml.XmlNodeWriter
    WriteBinHex
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    write-start-element
    System.Xml.XmlNodeWriter
    WriteStartElement
    (System.Void System.String System.String System.String))
  (define-method-port
    write-processing-instruction
    System.Xml.XmlNodeWriter
    WriteProcessingInstruction
    (System.Void System.String System.String))
  (define-method-port
    write-surrogate-char-entity
    System.Xml.XmlNodeWriter
    WriteSurrogateCharEntity
    (System.Void System.Char System.Char))
  (define-method-port
    lookup-prefix
    System.Xml.XmlNodeWriter
    LookupPrefix
    (System.String System.String))
  (define-method-port
    write-nm-token
    System.Xml.XmlNodeWriter
    WriteNmToken
    (System.Void System.String))
  (define-method-port
    write-entity-ref
    System.Xml.XmlNodeWriter
    WriteEntityRef
    (System.Void System.String))
  (define-method-port
    write-comment
    System.Xml.XmlNodeWriter
    WriteComment
    (System.Void System.String))
  (define-method-port
    write-start-document
    System.Xml.XmlNodeWriter
    WriteStartDocument
    (System.Void System.Boolean)
    (System.Void))
  (define-method-port
    write-char-entity
    System.Xml.XmlNodeWriter
    WriteCharEntity
    (System.Void System.Char))
  (define-method-port
    write-chars
    System.Xml.XmlNodeWriter
    WriteChars
    (System.Void System.Char[] System.Int32 System.Int32))
  (define-method-port
    write-full-end-element
    System.Xml.XmlNodeWriter
    WriteFullEndElement
    (System.Void))
  (define-method-port
    write-raw
    System.Xml.XmlNodeWriter
    WriteRaw
    (System.Void System.Char[] System.Int32 System.Int32)
    (System.Void System.String))
  (define-method-port
    write-cdata
    System.Xml.XmlNodeWriter
    WriteCData
    (System.Void System.String))
  (define-method-port
    write-doc-type
    System.Xml.XmlNodeWriter
    WriteDocType
    (System.Void
      System.String
      System.String
      System.String
      System.String))
  (define-method-port
    write-base64
    System.Xml.XmlNodeWriter
    WriteBase64
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    write-end-attribute
    System.Xml.XmlNodeWriter
    WriteEndAttribute
    (System.Void))
  (define-method-port
    write-string
    System.Xml.XmlNodeWriter
    WriteString
    (System.Void System.String))
  (define-method-port
    write-end-document
    System.Xml.XmlNodeWriter
    WriteEndDocument
    (System.Void))
  (define-method-port
    write-end-element
    System.Xml.XmlNodeWriter
    WriteEndElement
    (System.Void))
  (define-method-port
    write-start-attribute
    System.Xml.XmlNodeWriter
    WriteStartAttribute
    (System.Void System.String System.String System.String))
  (define-method-port
    flush
    System.Xml.XmlNodeWriter
    Flush
    (System.Void))
  (define-method-port
    write-qualified-name
    System.Xml.XmlNodeWriter
    WriteQualifiedName
    (System.Void System.String System.String))
  (define-method-port
    write-whitespace
    System.Xml.XmlNodeWriter
    WriteWhitespace
    (System.Void System.String))
  (define-method-port
    close
    System.Xml.XmlNodeWriter
    Close
    (System.Void))
  (define-field-port
    document
    #f
    #f
    (property:)
    System.Xml.XmlNodeWriter
    Document
    System.Xml.XmlNode)
  (define-field-port
    write-state
    #f
    #f
    (property:)
    System.Xml.XmlNodeWriter
    WriteState
    System.Xml.WriteState)
  (define-field-port
    xml-lang
    #f
    #f
    (property:)
    System.Xml.XmlNodeWriter
    XmlLang
    System.String)
  (define-field-port
    xml-space
    #f
    #f
    (property:)
    System.Xml.XmlNodeWriter
    XmlSpace
    System.Xml.XmlSpace))
