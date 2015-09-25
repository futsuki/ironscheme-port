(library (system xml xml-parser-input)
  (export new
          is?
          xml-parser-input?
          expect
          read-char
          push-pebuffer
          peek-char
          close
          base-uri
          has-pebuffer?
          line-number
          line-position
          allow-text-decl?-get
          allow-text-decl?-set!
          allow-text-decl?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XmlParserInput a ...)))))
  (define (is? a) (clr-is System.Xml.XmlParserInput a))
  (define (xml-parser-input? a) (clr-is System.Xml.XmlParserInput a))
  (define-method-port
    expect
    System.Xml.XmlParserInput
    Expect
    (System.Void System.String)
    (System.Void System.Int32))
  (define-method-port
    read-char
    System.Xml.XmlParserInput
    ReadChar
    (System.Int32))
  (define-method-port
    push-pebuffer
    System.Xml.XmlParserInput
    PushPEBuffer
    (System.Void Mono.Xml.DTDParameterEntityDeclaration))
  (define-method-port
    peek-char
    System.Xml.XmlParserInput
    PeekChar
    (System.Int32))
  (define-method-port
    close
    System.Xml.XmlParserInput
    Close
    (System.Void))
  (define-field-port
    base-uri
    #f
    #f
    (property:)
    System.Xml.XmlParserInput
    BaseURI
    System.String)
  (define-field-port
    has-pebuffer?
    #f
    #f
    (property:)
    System.Xml.XmlParserInput
    HasPEBuffer
    System.Boolean)
  (define-field-port
    line-number
    #f
    #f
    (property:)
    System.Xml.XmlParserInput
    LineNumber
    System.Int32)
  (define-field-port
    line-position
    #f
    #f
    (property:)
    System.Xml.XmlParserInput
    LinePosition
    System.Int32)
  (define-field-port
    allow-text-decl?-get
    allow-text-decl?-set!
    allow-text-decl?-update!
    (property:)
    System.Xml.XmlParserInput
    AllowTextDecl
    System.Boolean))
