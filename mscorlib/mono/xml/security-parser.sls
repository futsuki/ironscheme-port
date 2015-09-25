(library (mono xml security-parser)
  (export new
          is?
          security-parser?
          read
          on-chars
          on-start-parsing
          on-end-element
          to-xml
          on-end-parsing
          load-xml
          on-start-element)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.SecurityParser a ...)))))
  (define (is? a) (clr-is Mono.Xml.SecurityParser a))
  (define (security-parser? a) (clr-is Mono.Xml.SecurityParser a))
  (define-method-port read Mono.Xml.SecurityParser Read (System.Int32))
  (define-method-port
    on-chars
    Mono.Xml.SecurityParser
    OnChars
    (System.Void System.String))
  (define-method-port
    on-start-parsing
    Mono.Xml.SecurityParser
    OnStartParsing
    (System.Void Mono.Xml.MiniParser))
  (define-method-port
    on-end-element
    Mono.Xml.SecurityParser
    OnEndElement
    (System.Void System.String))
  (define-method-port
    to-xml
    Mono.Xml.SecurityParser
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    on-end-parsing
    Mono.Xml.SecurityParser
    OnEndParsing
    (System.Void Mono.Xml.MiniParser))
  (define-method-port
    load-xml
    Mono.Xml.SecurityParser
    LoadXml
    (System.Void System.String))
  (define-method-port
    on-start-element
    Mono.Xml.SecurityParser
    OnStartElement
    (System.Void System.String Mono.Xml.MiniParser+IAttrList)))
