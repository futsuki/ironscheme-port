(library (mono xml small-xml-parser)
  (export new
          is?
          small-xml-parser?
          skip-whitespaces
          parse
          expect
          read-name
          read-content)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.SmallXmlParser a ...)))))
  (define (is? a) (clr-is Mono.Xml.SmallXmlParser a))
  (define (small-xml-parser? a) (clr-is Mono.Xml.SmallXmlParser a))
  (define-method-port
    skip-whitespaces
    Mono.Xml.SmallXmlParser
    SkipWhitespaces
    (System.Void System.Boolean)
    (System.Void))
  (define-method-port
    parse
    Mono.Xml.SmallXmlParser
    Parse
    (System.Void
      System.IO.TextReader
      Mono.Xml.SmallXmlParser+IContentHandler))
  (define-method-port
    expect
    Mono.Xml.SmallXmlParser
    Expect
    (System.Void System.Int32))
  (define-method-port
    read-name
    Mono.Xml.SmallXmlParser
    ReadName
    (System.String))
  (define-method-port
    read-content
    Mono.Xml.SmallXmlParser
    ReadContent
    (System.Void)))
