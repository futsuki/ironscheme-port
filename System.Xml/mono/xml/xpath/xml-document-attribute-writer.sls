(library (mono xml xpath xml-document-attribute-writer)
  (export new
          is?
          xml-document-attribute-writer?
          write-start-element
          write-processing-instruction
          write-surrogate-char-entity
          lookup-prefix
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
          write-whitespace
          close
          write-state)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.XPath.XmlDocumentAttributeWriter a ...)))))
  (define (is? a) (clr-is Mono.Xml.XPath.XmlDocumentAttributeWriter a))
  (define (xml-document-attribute-writer? a)
    (clr-is Mono.Xml.XPath.XmlDocumentAttributeWriter a))
  (define-method-port
    write-start-element
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    WriteStartElement
    (System.Void System.String System.String System.String))
  (define-method-port
    write-processing-instruction
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    WriteProcessingInstruction
    (System.Void System.String System.String))
  (define-method-port
    write-surrogate-char-entity
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    WriteSurrogateCharEntity
    (System.Void System.Char System.Char))
  (define-method-port
    lookup-prefix
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    LookupPrefix
    (System.String System.String))
  (define-method-port
    write-entity-ref
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    WriteEntityRef
    (System.Void System.String))
  (define-method-port
    write-comment
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    WriteComment
    (System.Void System.String))
  (define-method-port
    write-start-document
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    WriteStartDocument
    (System.Void System.Boolean)
    (System.Void))
  (define-method-port
    write-char-entity
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    WriteCharEntity
    (System.Void System.Char))
  (define-method-port
    write-chars
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    WriteChars
    (System.Void System.Char[] System.Int32 System.Int32))
  (define-method-port
    write-full-end-element
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    WriteFullEndElement
    (System.Void))
  (define-method-port
    write-raw
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    WriteRaw
    (System.Void System.String)
    (System.Void System.Char[] System.Int32 System.Int32))
  (define-method-port
    write-cdata
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    WriteCData
    (System.Void System.String))
  (define-method-port
    write-doc-type
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    WriteDocType
    (System.Void
      System.String
      System.String
      System.String
      System.String))
  (define-method-port
    write-base64
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    WriteBase64
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    write-end-attribute
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    WriteEndAttribute
    (System.Void))
  (define-method-port
    write-string
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    WriteString
    (System.Void System.String))
  (define-method-port
    write-end-document
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    WriteEndDocument
    (System.Void))
  (define-method-port
    write-end-element
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    WriteEndElement
    (System.Void))
  (define-method-port
    write-start-attribute
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    WriteStartAttribute
    (System.Void System.String System.String System.String))
  (define-method-port
    flush
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    Flush
    (System.Void))
  (define-method-port
    write-whitespace
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    WriteWhitespace
    (System.Void System.String))
  (define-method-port
    close
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    Close
    (System.Void))
  (define-field-port
    write-state
    #f
    #f
    (property:)
    Mono.Xml.XPath.XmlDocumentAttributeWriter
    WriteState
    System.Xml.WriteState))
