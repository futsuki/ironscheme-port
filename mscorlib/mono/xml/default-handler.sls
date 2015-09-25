(library (mono xml default-handler)
  (export new
          is?
          default-handler?
          on-chars
          on-start-parsing
          on-end-element
          on-ignorable-whitespace
          on-end-parsing
          on-processing-instruction
          on-start-element)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.DefaultHandler a ...)))))
  (define (is? a) (clr-is Mono.Xml.DefaultHandler a))
  (define (default-handler? a) (clr-is Mono.Xml.DefaultHandler a))
  (define-method-port
    on-chars
    Mono.Xml.DefaultHandler
    OnChars
    (System.Void System.String))
  (define-method-port
    on-start-parsing
    Mono.Xml.DefaultHandler
    OnStartParsing
    (System.Void Mono.Xml.SmallXmlParser))
  (define-method-port
    on-end-element
    Mono.Xml.DefaultHandler
    OnEndElement
    (System.Void System.String))
  (define-method-port
    on-ignorable-whitespace
    Mono.Xml.DefaultHandler
    OnIgnorableWhitespace
    (System.Void System.String))
  (define-method-port
    on-end-parsing
    Mono.Xml.DefaultHandler
    OnEndParsing
    (System.Void Mono.Xml.SmallXmlParser))
  (define-method-port
    on-processing-instruction
    Mono.Xml.DefaultHandler
    OnProcessingInstruction
    (System.Void System.String System.String))
  (define-method-port
    on-start-element
    Mono.Xml.DefaultHandler
    OnStartElement
    (System.Void System.String Mono.Xml.SmallXmlParser+IAttrList)))
