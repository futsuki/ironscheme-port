(library (mono xml dtdsequence-automata)
  (export new
          is?
          dtdsequence-automata?
          try-start-element
          try-end-element
          left
          right
          emptiable?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.DTDSequenceAutomata a ...)))))
  (define (is? a) (clr-is Mono.Xml.DTDSequenceAutomata a))
  (define (dtdsequence-automata? a)
    (clr-is Mono.Xml.DTDSequenceAutomata a))
  (define-method-port
    try-start-element
    Mono.Xml.DTDSequenceAutomata
    TryStartElement
    (Mono.Xml.DTDAutomata System.String))
  (define-method-port
    try-end-element
    Mono.Xml.DTDSequenceAutomata
    TryEndElement
    (Mono.Xml.DTDAutomata))
  (define-field-port
    left
    #f
    #f
    (property:)
    Mono.Xml.DTDSequenceAutomata
    Left
    Mono.Xml.DTDAutomata)
  (define-field-port
    right
    #f
    #f
    (property:)
    Mono.Xml.DTDSequenceAutomata
    Right
    Mono.Xml.DTDAutomata)
  (define-field-port
    emptiable?
    #f
    #f
    (property:)
    Mono.Xml.DTDSequenceAutomata
    Emptiable
    System.Boolean))
