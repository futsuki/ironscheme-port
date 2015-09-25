(library (mono xml xsl outputter)
  (export is?
          outputter?
          write-start-element
          write-processing-instruction
          write-namespace-decl
          write-comment
          write-attribute-string
          write-full-end-element
          write-raw
          write-string
          write-end-element
          done
          write-whitespace
          can-process-attributes?
          inside-cdata-section?-get
          inside-cdata-section?-set!
          inside-cdata-section?-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Xsl.Outputter a))
  (define (outputter? a) (clr-is Mono.Xml.Xsl.Outputter a))
  (define-method-port
    write-start-element
    Mono.Xml.Xsl.Outputter
    WriteStartElement
    (System.Void System.String System.String System.String)
    (System.Void System.String System.String))
  (define-method-port
    write-processing-instruction
    Mono.Xml.Xsl.Outputter
    WriteProcessingInstruction
    (System.Void System.String System.String))
  (define-method-port
    write-namespace-decl
    Mono.Xml.Xsl.Outputter
    WriteNamespaceDecl
    (System.Void System.String System.String))
  (define-method-port
    write-comment
    Mono.Xml.Xsl.Outputter
    WriteComment
    (System.Void System.String))
  (define-method-port
    write-attribute-string
    Mono.Xml.Xsl.Outputter
    WriteAttributeString
    (System.Void
      System.String
      System.String
      System.String
      System.String)
    (System.Void System.String System.String))
  (define-method-port
    write-full-end-element
    Mono.Xml.Xsl.Outputter
    WriteFullEndElement
    (System.Void))
  (define-method-port
    write-raw
    Mono.Xml.Xsl.Outputter
    WriteRaw
    (System.Void System.String))
  (define-method-port
    write-string
    Mono.Xml.Xsl.Outputter
    WriteString
    (System.Void System.String))
  (define-method-port
    write-end-element
    Mono.Xml.Xsl.Outputter
    WriteEndElement
    (System.Void))
  (define-method-port done Mono.Xml.Xsl.Outputter Done (System.Void))
  (define-method-port
    write-whitespace
    Mono.Xml.Xsl.Outputter
    WriteWhitespace
    (System.Void System.String))
  (define-field-port
    can-process-attributes?
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Outputter
    CanProcessAttributes
    System.Boolean)
  (define-field-port
    inside-cdata-section?-get
    inside-cdata-section?-set!
    inside-cdata-section?-update!
    (property:)
    Mono.Xml.Xsl.Outputter
    InsideCDataSection
    System.Boolean))
