(library (mono xml small-xml-parser-exception)
  (export new is? small-xml-parser-exception? line column)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.SmallXmlParserException a ...)))))
  (define (is? a) (clr-is Mono.Xml.SmallXmlParserException a))
  (define (small-xml-parser-exception? a)
    (clr-is Mono.Xml.SmallXmlParserException a))
  (define-field-port
    line
    #f
    #f
    (property:)
    Mono.Xml.SmallXmlParserException
    Line
    System.Int32)
  (define-field-port
    column
    #f
    #f
    (property:)
    Mono.Xml.SmallXmlParserException
    Column
    System.Int32))
