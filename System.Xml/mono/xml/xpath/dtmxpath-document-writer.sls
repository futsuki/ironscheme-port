(library (mono xml xpath dtmxpath-document-writer)
  (export new
          is?
          dtmxpath-document-writer?
          write-entity-ref
          write-name
          write-bin-hex
          write-start-element
          write-processing-instruction
          write-surrogate-char-entity
          init
          lookup-prefix
          write-nm-token
          add-node
          write-comment
          write-start-document
          write-char-entity
          write-chars
          write-full-end-element
          write-raw
          write-cdata
          add-ns-node
          create-document
          write-doc-type
          write-base64
          write-end-attribute
          write-string
          write-end-document
          add-attribute
          write-end-element
          write-start-attribute
          flush
          write-qualified-name
          write-whitespace
          close
          xml-lang
          xml-space
          write-state)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.XPath.DTMXPathDocumentWriter a ...)))))
  (define (is? a) (clr-is Mono.Xml.XPath.DTMXPathDocumentWriter a))
  (define (dtmxpath-document-writer? a)
    (clr-is Mono.Xml.XPath.DTMXPathDocumentWriter a))
  (define-method-port
    write-entity-ref
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteEntityRef
    (System.Void System.String))
  (define-method-port
    write-name
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteName
    (System.Void System.String))
  (define-method-port
    write-bin-hex
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteBinHex
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    write-start-element
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteStartElement
    (System.Void System.String System.String System.String))
  (define-method-port
    write-processing-instruction
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteProcessingInstruction
    (System.Void System.String System.String))
  (define-method-port
    write-surrogate-char-entity
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteSurrogateCharEntity
    (System.Void System.Char System.Char))
  (define-method-port
    init
    Mono.Xml.XPath.DTMXPathDocumentWriter
    Init
    (System.Void))
  (define-method-port
    lookup-prefix
    Mono.Xml.XPath.DTMXPathDocumentWriter
    LookupPrefix
    (System.String System.String))
  (define-method-port
    write-nm-token
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteNmToken
    (System.Void System.String))
  (define-method-port
    add-node
    Mono.Xml.XPath.DTMXPathDocumentWriter
    AddNode
    (System.Void
      System.Int32
      System.Int32
      System.Int32
      System.Xml.XPath.XPathNodeType
      System.String
      System.Boolean
      System.String
      System.String
      System.String
      System.String
      System.String
      System.Int32
      System.Int32
      System.Int32))
  (define-method-port
    write-comment
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteComment
    (System.Void System.String))
  (define-method-port
    write-start-document
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteStartDocument
    (System.Void System.Boolean)
    (System.Void))
  (define-method-port
    write-char-entity
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteCharEntity
    (System.Void System.Char))
  (define-method-port
    write-chars
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteChars
    (System.Void System.Char[] System.Int32 System.Int32))
  (define-method-port
    write-full-end-element
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteFullEndElement
    (System.Void))
  (define-method-port
    write-raw
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteRaw
    (System.Void System.Char[] System.Int32 System.Int32)
    (System.Void System.String))
  (define-method-port
    write-cdata
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteCData
    (System.Void System.String))
  (define-method-port
    add-ns-node
    Mono.Xml.XPath.DTMXPathDocumentWriter
    AddNsNode
    (System.Void System.Int32 System.String System.String System.Int32))
  (define-method-port
    create-document
    Mono.Xml.XPath.DTMXPathDocumentWriter
    CreateDocument
    (Mono.Xml.XPath.DTMXPathDocument))
  (define-method-port
    write-doc-type
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteDocType
    (System.Void
      System.String
      System.String
      System.String
      System.String))
  (define-method-port
    write-base64
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteBase64
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    write-end-attribute
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteEndAttribute
    (System.Void))
  (define-method-port
    write-string
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteString
    (System.Void System.String))
  (define-method-port
    write-end-document
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteEndDocument
    (System.Void))
  (define-method-port
    add-attribute
    Mono.Xml.XPath.DTMXPathDocumentWriter
    AddAttribute
    (System.Void
      System.Int32
      System.String
      System.String
      System.String
      System.String
      System.Int32
      System.Int32))
  (define-method-port
    write-end-element
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteEndElement
    (System.Void))
  (define-method-port
    write-start-attribute
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteStartAttribute
    (System.Void System.String System.String System.String))
  (define-method-port
    flush
    Mono.Xml.XPath.DTMXPathDocumentWriter
    Flush
    (System.Void))
  (define-method-port
    write-qualified-name
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteQualifiedName
    (System.Void System.String System.String))
  (define-method-port
    write-whitespace
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteWhitespace
    (System.Void System.String))
  (define-method-port
    close
    Mono.Xml.XPath.DTMXPathDocumentWriter
    Close
    (System.Void))
  (define-field-port
    xml-lang
    #f
    #f
    (property:)
    Mono.Xml.XPath.DTMXPathDocumentWriter
    XmlLang
    System.String)
  (define-field-port
    xml-space
    #f
    #f
    (property:)
    Mono.Xml.XPath.DTMXPathDocumentWriter
    XmlSpace
    System.Xml.XmlSpace)
  (define-field-port
    write-state
    #f
    #f
    (property:)
    Mono.Xml.XPath.DTMXPathDocumentWriter
    WriteState
    System.Xml.WriteState))
