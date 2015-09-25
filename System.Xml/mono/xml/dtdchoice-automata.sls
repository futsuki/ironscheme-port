(library (mono xml dtdchoice-automata)
  (export new
          is?
          dtdchoice-automata?
          try-start-element
          try-end-element
          left
          right
          emptiable?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.DTDChoiceAutomata a ...)))))
  (define (is? a) (clr-is Mono.Xml.DTDChoiceAutomata a))
  (define (dtdchoice-automata? a) (clr-is Mono.Xml.DTDChoiceAutomata a))
  (define-method-port
    try-start-element
    Mono.Xml.DTDChoiceAutomata
    TryStartElement
    (Mono.Xml.DTDAutomata System.String))
  (define-method-port
    try-end-element
    Mono.Xml.DTDChoiceAutomata
    TryEndElement
    (Mono.Xml.DTDAutomata))
  (define-field-port
    left
    #f
    #f
    (property:)
    Mono.Xml.DTDChoiceAutomata
    Left
    Mono.Xml.DTDAutomata)
  (define-field-port
    right
    #f
    #f
    (property:)
    Mono.Xml.DTDChoiceAutomata
    Right
    Mono.Xml.DTDAutomata)
  (define-field-port
    emptiable?
    #f
    #f
    (property:)
    Mono.Xml.DTDChoiceAutomata
    Emptiable
    System.Boolean))
