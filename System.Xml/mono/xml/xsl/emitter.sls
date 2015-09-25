(library (mono xml xsl emitter)
  (export is?
          emitter?
          write-start-element
          write-processing-instruction
          write-comment
          write-start-document
          write-attribute-string
          write-cdata-section
          write-full-end-element
          write-raw
          write-doc-type
          write-string
          write-end-document
          write-end-element
          done
          write-whitespace)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Xsl.Emitter a))
  (define (emitter? a) (clr-is Mono.Xml.Xsl.Emitter a))
  (define-method-port
    write-start-element
    Mono.Xml.Xsl.Emitter
    WriteStartElement
    (System.Void System.String System.String System.String))
  (define-method-port
    write-processing-instruction
    Mono.Xml.Xsl.Emitter
    WriteProcessingInstruction
    (System.Void System.String System.String))
  (define-method-port
    write-comment
    Mono.Xml.Xsl.Emitter
    WriteComment
    (System.Void System.String))
  (define-method-port
    write-start-document
    Mono.Xml.Xsl.Emitter
    WriteStartDocument
    (System.Void System.Text.Encoding Mono.Xml.Xsl.StandaloneType))
  (define-method-port
    write-attribute-string
    Mono.Xml.Xsl.Emitter
    WriteAttributeString
    (System.Void
      System.String
      System.String
      System.String
      System.String))
  (define-method-port
    write-cdata-section
    Mono.Xml.Xsl.Emitter
    WriteCDataSection
    (System.Void System.String))
  (define-method-port
    write-full-end-element
    Mono.Xml.Xsl.Emitter
    WriteFullEndElement
    (System.Void))
  (define-method-port
    write-raw
    Mono.Xml.Xsl.Emitter
    WriteRaw
    (System.Void System.String))
  (define-method-port
    write-doc-type
    Mono.Xml.Xsl.Emitter
    WriteDocType
    (System.Void System.String System.String System.String))
  (define-method-port
    write-string
    Mono.Xml.Xsl.Emitter
    WriteString
    (System.Void System.String))
  (define-method-port
    write-end-document
    Mono.Xml.Xsl.Emitter
    WriteEndDocument
    (System.Void))
  (define-method-port
    write-end-element
    Mono.Xml.Xsl.Emitter
    WriteEndElement
    (System.Void))
  (define-method-port done Mono.Xml.Xsl.Emitter Done (System.Void))
  (define-method-port
    write-whitespace
    Mono.Xml.Xsl.Emitter
    WriteWhitespace
    (System.Void System.String)))
