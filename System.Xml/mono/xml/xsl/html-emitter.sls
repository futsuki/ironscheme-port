(library (mono xml xsl html-emitter)
  (export new
          is?
          html-emitter?
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
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.HtmlEmitter a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.HtmlEmitter a))
  (define (html-emitter? a) (clr-is Mono.Xml.Xsl.HtmlEmitter a))
  (define-method-port
    write-start-element
    Mono.Xml.Xsl.HtmlEmitter
    WriteStartElement
    (System.Void System.String System.String System.String))
  (define-method-port
    write-processing-instruction
    Mono.Xml.Xsl.HtmlEmitter
    WriteProcessingInstruction
    (System.Void System.String System.String))
  (define-method-port
    write-comment
    Mono.Xml.Xsl.HtmlEmitter
    WriteComment
    (System.Void System.String))
  (define-method-port
    write-start-document
    Mono.Xml.Xsl.HtmlEmitter
    WriteStartDocument
    (System.Void System.Text.Encoding Mono.Xml.Xsl.StandaloneType))
  (define-method-port
    write-attribute-string
    Mono.Xml.Xsl.HtmlEmitter
    WriteAttributeString
    (System.Void
      System.String
      System.String
      System.String
      System.String))
  (define-method-port
    write-cdata-section
    Mono.Xml.Xsl.HtmlEmitter
    WriteCDataSection
    (System.Void System.String))
  (define-method-port
    write-full-end-element
    Mono.Xml.Xsl.HtmlEmitter
    WriteFullEndElement
    (System.Void))
  (define-method-port
    write-raw
    Mono.Xml.Xsl.HtmlEmitter
    WriteRaw
    (System.Void System.String))
  (define-method-port
    write-doc-type
    Mono.Xml.Xsl.HtmlEmitter
    WriteDocType
    (System.Void System.String System.String System.String))
  (define-method-port
    write-string
    Mono.Xml.Xsl.HtmlEmitter
    WriteString
    (System.Void System.String))
  (define-method-port
    write-end-document
    Mono.Xml.Xsl.HtmlEmitter
    WriteEndDocument
    (System.Void))
  (define-method-port
    write-end-element
    Mono.Xml.Xsl.HtmlEmitter
    WriteEndElement
    (System.Void))
  (define-method-port done Mono.Xml.Xsl.HtmlEmitter Done (System.Void))
  (define-method-port
    write-whitespace
    Mono.Xml.Xsl.HtmlEmitter
    WriteWhitespace
    (System.Void System.String)))
