(library (system xml linq xnode-writer)
  (export new
          is?
          xnode-writer?
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
          write-state)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.Linq.XNodeWriter a ...)))))
  (define (is? a) (clr-is System.Xml.Linq.XNodeWriter a))
  (define (xnode-writer? a) (clr-is System.Xml.Linq.XNodeWriter a))
  (define-method-port
    write-name
    System.Xml.Linq.XNodeWriter
    WriteName
    (System.Void System.String))
  (define-method-port
    write-bin-hex
    System.Xml.Linq.XNodeWriter
    WriteBinHex
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    write-start-element
    System.Xml.Linq.XNodeWriter
    WriteStartElement
    (System.Void System.String System.String System.String))
  (define-method-port
    write-processing-instruction
    System.Xml.Linq.XNodeWriter
    WriteProcessingInstruction
    (System.Void System.String System.String))
  (define-method-port
    write-surrogate-char-entity
    System.Xml.Linq.XNodeWriter
    WriteSurrogateCharEntity
    (System.Void System.Char System.Char))
  (define-method-port
    lookup-prefix
    System.Xml.Linq.XNodeWriter
    LookupPrefix
    (System.String System.String))
  (define-method-port
    write-nm-token
    System.Xml.Linq.XNodeWriter
    WriteNmToken
    (System.Void System.String))
  (define-method-port
    write-entity-ref
    System.Xml.Linq.XNodeWriter
    WriteEntityRef
    (System.Void System.String))
  (define-method-port
    write-comment
    System.Xml.Linq.XNodeWriter
    WriteComment
    (System.Void System.String))
  (define-method-port
    write-start-document
    System.Xml.Linq.XNodeWriter
    WriteStartDocument
    (System.Void System.Boolean)
    (System.Void))
  (define-method-port
    write-char-entity
    System.Xml.Linq.XNodeWriter
    WriteCharEntity
    (System.Void System.Char))
  (define-method-port
    write-chars
    System.Xml.Linq.XNodeWriter
    WriteChars
    (System.Void System.Char[] System.Int32 System.Int32))
  (define-method-port
    write-full-end-element
    System.Xml.Linq.XNodeWriter
    WriteFullEndElement
    (System.Void))
  (define-method-port
    write-raw
    System.Xml.Linq.XNodeWriter
    WriteRaw
    (System.Void System.Char[] System.Int32 System.Int32)
    (System.Void System.String))
  (define-method-port
    write-cdata
    System.Xml.Linq.XNodeWriter
    WriteCData
    (System.Void System.String))
  (define-method-port
    write-doc-type
    System.Xml.Linq.XNodeWriter
    WriteDocType
    (System.Void
      System.String
      System.String
      System.String
      System.String))
  (define-method-port
    write-base64
    System.Xml.Linq.XNodeWriter
    WriteBase64
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    write-end-attribute
    System.Xml.Linq.XNodeWriter
    WriteEndAttribute
    (System.Void))
  (define-method-port
    write-string
    System.Xml.Linq.XNodeWriter
    WriteString
    (System.Void System.String))
  (define-method-port
    write-end-document
    System.Xml.Linq.XNodeWriter
    WriteEndDocument
    (System.Void))
  (define-method-port
    write-end-element
    System.Xml.Linq.XNodeWriter
    WriteEndElement
    (System.Void))
  (define-method-port
    write-start-attribute
    System.Xml.Linq.XNodeWriter
    WriteStartAttribute
    (System.Void System.String System.String System.String))
  (define-method-port
    flush
    System.Xml.Linq.XNodeWriter
    Flush
    (System.Void))
  (define-method-port
    write-qualified-name
    System.Xml.Linq.XNodeWriter
    WriteQualifiedName
    (System.Void System.String System.String))
  (define-method-port
    write-whitespace
    System.Xml.Linq.XNodeWriter
    WriteWhitespace
    (System.Void System.String))
  (define-method-port
    close
    System.Xml.Linq.XNodeWriter
    Close
    (System.Void))
  (define-field-port
    write-state
    #f
    #f
    (property:)
    System.Xml.Linq.XNodeWriter
    WriteState
    System.Xml.WriteState))
