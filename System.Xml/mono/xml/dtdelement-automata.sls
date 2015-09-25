(library (mono xml dtdelement-automata)
  (export new is? dtdelement-automata? try-start-element name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.DTDElementAutomata a ...)))))
  (define (is? a) (clr-is Mono.Xml.DTDElementAutomata a))
  (define (dtdelement-automata? a)
    (clr-is Mono.Xml.DTDElementAutomata a))
  (define-method-port
    try-start-element
    Mono.Xml.DTDElementAutomata
    TryStartElement
    (Mono.Xml.DTDAutomata System.String))
  (define-field-port
    name
    #f
    #f
    (property:)
    Mono.Xml.DTDElementAutomata
    Name
    System.String))
