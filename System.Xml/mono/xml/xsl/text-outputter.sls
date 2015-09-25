(library (mono xml xsl text-outputter)
  (export new
          is?
          text-outputter?
          write-start-element
          write-processing-instruction
          write-namespace-decl
          write-comment
          write-attribute-string
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
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.TextOutputter a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.TextOutputter a))
  (define (text-outputter? a) (clr-is Mono.Xml.Xsl.TextOutputter a))
  (define-method-port
    write-start-element
    Mono.Xml.Xsl.TextOutputter
    WriteStartElement
    (System.Void System.String System.String System.String))
  (define-method-port
    write-processing-instruction
    Mono.Xml.Xsl.TextOutputter
    WriteProcessingInstruction
    (System.Void System.String System.String))
  (define-method-port
    write-namespace-decl
    Mono.Xml.Xsl.TextOutputter
    WriteNamespaceDecl
    (System.Void System.String System.String))
  (define-method-port
    write-comment
    Mono.Xml.Xsl.TextOutputter
    WriteComment
    (System.Void System.String))
  (define-method-port
    write-attribute-string
    Mono.Xml.Xsl.TextOutputter
    WriteAttributeString
    (System.Void
      System.String
      System.String
      System.String
      System.String))
  (define-method-port
    write-raw
    Mono.Xml.Xsl.TextOutputter
    WriteRaw
    (System.Void System.String))
  (define-method-port
    write-string
    Mono.Xml.Xsl.TextOutputter
    WriteString
    (System.Void System.String))
  (define-method-port
    write-end-element
    Mono.Xml.Xsl.TextOutputter
    WriteEndElement
    (System.Void))
  (define-method-port
    done
    Mono.Xml.Xsl.TextOutputter
    Done
    (System.Void))
  (define-method-port
    write-whitespace
    Mono.Xml.Xsl.TextOutputter
    WriteWhitespace
    (System.Void System.String))
  (define-field-port
    can-process-attributes?
    #f
    #f
    (property:)
    Mono.Xml.Xsl.TextOutputter
    CanProcessAttributes
    System.Boolean)
  (define-field-port
    inside-cdata-section?-get
    inside-cdata-section?-set!
    inside-cdata-section?-update!
    (property:)
    Mono.Xml.Xsl.TextOutputter
    InsideCDataSection
    System.Boolean))
