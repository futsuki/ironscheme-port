(library (mono xml xpath xml-document-insertion-writer)
  (export new
          is?
          xml-document-insertion-writer?
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
         #'(clr-new Mono.Xml.XPath.XmlDocumentInsertionWriter a ...)))))
  (define (is? a) (clr-is Mono.Xml.XPath.XmlDocumentInsertionWriter a))
  (define (xml-document-insertion-writer? a)
    (clr-is Mono.Xml.XPath.XmlDocumentInsertionWriter a))
  (define-method-port
    write-start-element
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    WriteStartElement
    (System.Void System.String System.String System.String))
  (define-method-port
    write-processing-instruction
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    WriteProcessingInstruction
    (System.Void System.String System.String))
  (define-method-port
    write-surrogate-char-entity
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    WriteSurrogateCharEntity
    (System.Void System.Char System.Char))
  (define-method-port
    lookup-prefix
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    LookupPrefix
    (System.String System.String))
  (define-method-port
    write-entity-ref
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    WriteEntityRef
    (System.Void System.String))
  (define-method-port
    write-comment
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    WriteComment
    (System.Void System.String))
  (define-method-port
    write-start-document
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    WriteStartDocument
    (System.Void System.Boolean)
    (System.Void))
  (define-method-port
    write-char-entity
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    WriteCharEntity
    (System.Void System.Char))
  (define-method-port
    write-chars
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    WriteChars
    (System.Void System.Char[] System.Int32 System.Int32))
  (define-method-port
    write-full-end-element
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    WriteFullEndElement
    (System.Void))
  (define-method-port
    write-raw
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    WriteRaw
    (System.Void System.String)
    (System.Void System.Char[] System.Int32 System.Int32))
  (define-method-port
    write-cdata
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    WriteCData
    (System.Void System.String))
  (define-method-port
    write-doc-type
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    WriteDocType
    (System.Void
      System.String
      System.String
      System.String
      System.String))
  (define-method-port
    write-base64
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    WriteBase64
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    write-end-attribute
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    WriteEndAttribute
    (System.Void))
  (define-method-port
    write-string
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    WriteString
    (System.Void System.String))
  (define-method-port
    write-end-document
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    WriteEndDocument
    (System.Void))
  (define-method-port
    write-end-element
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    WriteEndElement
    (System.Void))
  (define-method-port
    write-start-attribute
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    WriteStartAttribute
    (System.Void System.String System.String System.String))
  (define-method-port
    flush
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    Flush
    (System.Void))
  (define-method-port
    write-whitespace
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    WriteWhitespace
    (System.Void System.String))
  (define-method-port
    close
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    Close
    (System.Void))
  (define-field-port
    write-state
    #f
    #f
    (property:)
    Mono.Xml.XPath.XmlDocumentInsertionWriter
    WriteState
    System.Xml.WriteState))
