(library (mono xml xsl generic-outputter)
  (export new
          is?
          generic-outputter?
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
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.GenericOutputter a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.GenericOutputter a))
  (define (generic-outputter? a)
    (clr-is Mono.Xml.Xsl.GenericOutputter a))
  (define-method-port
    write-start-element
    Mono.Xml.Xsl.GenericOutputter
    WriteStartElement
    (System.Void System.String System.String System.String))
  (define-method-port
    write-processing-instruction
    Mono.Xml.Xsl.GenericOutputter
    WriteProcessingInstruction
    (System.Void System.String System.String))
  (define-method-port
    write-namespace-decl
    Mono.Xml.Xsl.GenericOutputter
    WriteNamespaceDecl
    (System.Void System.String System.String))
  (define-method-port
    write-comment
    Mono.Xml.Xsl.GenericOutputter
    WriteComment
    (System.Void System.String))
  (define-method-port
    write-attribute-string
    Mono.Xml.Xsl.GenericOutputter
    WriteAttributeString
    (System.Void
      System.String
      System.String
      System.String
      System.String))
  (define-method-port
    write-full-end-element
    Mono.Xml.Xsl.GenericOutputter
    WriteFullEndElement
    (System.Void))
  (define-method-port
    write-raw
    Mono.Xml.Xsl.GenericOutputter
    WriteRaw
    (System.Void System.String))
  (define-method-port
    write-string
    Mono.Xml.Xsl.GenericOutputter
    WriteString
    (System.Void System.String))
  (define-method-port
    write-end-element
    Mono.Xml.Xsl.GenericOutputter
    WriteEndElement
    (System.Void))
  (define-method-port
    done
    Mono.Xml.Xsl.GenericOutputter
    Done
    (System.Void))
  (define-method-port
    write-whitespace
    Mono.Xml.Xsl.GenericOutputter
    WriteWhitespace
    (System.Void System.String))
  (define-field-port
    can-process-attributes?
    #f
    #f
    (property:)
    Mono.Xml.Xsl.GenericOutputter
    CanProcessAttributes
    System.Boolean)
  (define-field-port
    inside-cdata-section?-get
    inside-cdata-section?-set!
    inside-cdata-section?-update!
    (property:)
    Mono.Xml.Xsl.GenericOutputter
    InsideCDataSection
    System.Boolean))
