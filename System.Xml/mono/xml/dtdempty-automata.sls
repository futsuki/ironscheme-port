(library (mono xml dtdempty-automata)
  (export new
          is?
          dtdempty-automata?
          try-start-element
          try-end-element
          emptiable?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.DTDEmptyAutomata a ...)))))
  (define (is? a) (clr-is Mono.Xml.DTDEmptyAutomata a))
  (define (dtdempty-automata? a) (clr-is Mono.Xml.DTDEmptyAutomata a))
  (define-method-port
    try-start-element
    Mono.Xml.DTDEmptyAutomata
    TryStartElement
    (Mono.Xml.DTDAutomata System.String))
  (define-method-port
    try-end-element
    Mono.Xml.DTDEmptyAutomata
    TryEndElement
    (Mono.Xml.DTDAutomata))
  (define-field-port
    emptiable?
    #f
    #f
    (property:)
    Mono.Xml.DTDEmptyAutomata
    Emptiable
    System.Boolean))
