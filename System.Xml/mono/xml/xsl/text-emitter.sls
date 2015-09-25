(library (mono xml xsl text-emitter)
  (export new
          is?
          text-emitter?
          write-start-element
          write-processing-instruction
          write-comment
          write-start-document
          write-attribute-string
          write-cdata-section
          write-raw
          write-doc-type
          write-string
          write-end-document
          write-end-element
          done)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.TextEmitter a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.TextEmitter a))
  (define (text-emitter? a) (clr-is Mono.Xml.Xsl.TextEmitter a))
  (define-method-port
    write-start-element
    Mono.Xml.Xsl.TextEmitter
    WriteStartElement
    (System.Void System.String System.String System.String))
  (define-method-port
    write-processing-instruction
    Mono.Xml.Xsl.TextEmitter
    WriteProcessingInstruction
    (System.Void System.String System.String))
  (define-method-port
    write-comment
    Mono.Xml.Xsl.TextEmitter
    WriteComment
    (System.Void System.String))
  (define-method-port
    write-start-document
    Mono.Xml.Xsl.TextEmitter
    WriteStartDocument
    (System.Void System.Text.Encoding Mono.Xml.Xsl.StandaloneType))
  (define-method-port
    write-attribute-string
    Mono.Xml.Xsl.TextEmitter
    WriteAttributeString
    (System.Void
      System.String
      System.String
      System.String
      System.String))
  (define-method-port
    write-cdata-section
    Mono.Xml.Xsl.TextEmitter
    WriteCDataSection
    (System.Void System.String))
  (define-method-port
    write-raw
    Mono.Xml.Xsl.TextEmitter
    WriteRaw
    (System.Void System.String))
  (define-method-port
    write-doc-type
    Mono.Xml.Xsl.TextEmitter
    WriteDocType
    (System.Void System.String System.String System.String))
  (define-method-port
    write-string
    Mono.Xml.Xsl.TextEmitter
    WriteString
    (System.Void System.String))
  (define-method-port
    write-end-document
    Mono.Xml.Xsl.TextEmitter
    WriteEndDocument
    (System.Void))
  (define-method-port
    write-end-element
    Mono.Xml.Xsl.TextEmitter
    WriteEndElement
    (System.Void))
  (define-method-port done Mono.Xml.Xsl.TextEmitter Done (System.Void)))
