(library (system xml xml-text-writer)
  (export new
          is?
          xml-text-writer?
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
          formatting-get
          formatting-set!
          formatting-update!
          indentation-get
          indentation-set!
          indentation-update!
          indent-char-get
          indent-char-set!
          indent-char-update!
          quote-char-get
          quote-char-set!
          quote-char-update!
          xml-lang
          xml-space
          write-state
          base-stream
          namespaces?-get
          namespaces?-set!
          namespaces?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XmlTextWriter a ...)))))
  (define (is? a) (clr-is System.Xml.XmlTextWriter a))
  (define (xml-text-writer? a) (clr-is System.Xml.XmlTextWriter a))
  (define-method-port
    write-name
    System.Xml.XmlTextWriter
    WriteName
    (System.Void System.String))
  (define-method-port
    write-bin-hex
    System.Xml.XmlTextWriter
    WriteBinHex
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    write-start-element
    System.Xml.XmlTextWriter
    WriteStartElement
    (System.Void System.String System.String System.String))
  (define-method-port
    write-processing-instruction
    System.Xml.XmlTextWriter
    WriteProcessingInstruction
    (System.Void System.String System.String))
  (define-method-port
    write-surrogate-char-entity
    System.Xml.XmlTextWriter
    WriteSurrogateCharEntity
    (System.Void System.Char System.Char))
  (define-method-port
    lookup-prefix
    System.Xml.XmlTextWriter
    LookupPrefix
    (System.String System.String))
  (define-method-port
    write-nm-token
    System.Xml.XmlTextWriter
    WriteNmToken
    (System.Void System.String))
  (define-method-port
    write-entity-ref
    System.Xml.XmlTextWriter
    WriteEntityRef
    (System.Void System.String))
  (define-method-port
    write-comment
    System.Xml.XmlTextWriter
    WriteComment
    (System.Void System.String))
  (define-method-port
    write-start-document
    System.Xml.XmlTextWriter
    WriteStartDocument
    (System.Void System.Boolean)
    (System.Void))
  (define-method-port
    write-char-entity
    System.Xml.XmlTextWriter
    WriteCharEntity
    (System.Void System.Char))
  (define-method-port
    write-chars
    System.Xml.XmlTextWriter
    WriteChars
    (System.Void System.Char[] System.Int32 System.Int32))
  (define-method-port
    write-full-end-element
    System.Xml.XmlTextWriter
    WriteFullEndElement
    (System.Void))
  (define-method-port
    write-raw
    System.Xml.XmlTextWriter
    WriteRaw
    (System.Void System.Char[] System.Int32 System.Int32)
    (System.Void System.String))
  (define-method-port
    write-cdata
    System.Xml.XmlTextWriter
    WriteCData
    (System.Void System.String))
  (define-method-port
    write-doc-type
    System.Xml.XmlTextWriter
    WriteDocType
    (System.Void
      System.String
      System.String
      System.String
      System.String))
  (define-method-port
    write-base64
    System.Xml.XmlTextWriter
    WriteBase64
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    write-end-attribute
    System.Xml.XmlTextWriter
    WriteEndAttribute
    (System.Void))
  (define-method-port
    write-string
    System.Xml.XmlTextWriter
    WriteString
    (System.Void System.String))
  (define-method-port
    write-end-document
    System.Xml.XmlTextWriter
    WriteEndDocument
    (System.Void))
  (define-method-port
    write-end-element
    System.Xml.XmlTextWriter
    WriteEndElement
    (System.Void))
  (define-method-port
    write-start-attribute
    System.Xml.XmlTextWriter
    WriteStartAttribute
    (System.Void System.String System.String System.String))
  (define-method-port
    flush
    System.Xml.XmlTextWriter
    Flush
    (System.Void))
  (define-method-port
    write-qualified-name
    System.Xml.XmlTextWriter
    WriteQualifiedName
    (System.Void System.String System.String))
  (define-method-port
    write-whitespace
    System.Xml.XmlTextWriter
    WriteWhitespace
    (System.Void System.String))
  (define-method-port
    close
    System.Xml.XmlTextWriter
    Close
    (System.Void))
  (define-field-port
    formatting-get
    formatting-set!
    formatting-update!
    (property:)
    System.Xml.XmlTextWriter
    Formatting
    System.Xml.Formatting)
  (define-field-port
    indentation-get
    indentation-set!
    indentation-update!
    (property:)
    System.Xml.XmlTextWriter
    Indentation
    System.Int32)
  (define-field-port
    indent-char-get
    indent-char-set!
    indent-char-update!
    (property:)
    System.Xml.XmlTextWriter
    IndentChar
    System.Char)
  (define-field-port
    quote-char-get
    quote-char-set!
    quote-char-update!
    (property:)
    System.Xml.XmlTextWriter
    QuoteChar
    System.Char)
  (define-field-port
    xml-lang
    #f
    #f
    (property:)
    System.Xml.XmlTextWriter
    XmlLang
    System.String)
  (define-field-port
    xml-space
    #f
    #f
    (property:)
    System.Xml.XmlTextWriter
    XmlSpace
    System.Xml.XmlSpace)
  (define-field-port
    write-state
    #f
    #f
    (property:)
    System.Xml.XmlTextWriter
    WriteState
    System.Xml.WriteState)
  (define-field-port
    base-stream
    #f
    #f
    (property:)
    System.Xml.XmlTextWriter
    BaseStream
    System.IO.Stream)
  (define-field-port
    namespaces?-get
    namespaces?-set!
    namespaces?-update!
    (property:)
    System.Xml.XmlTextWriter
    Namespaces
    System.Boolean))
