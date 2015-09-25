(library (mono xml dtdautomata)
  (export new
          is?
          dtdautomata?
          make-choice
          try-start-element
          try-end-element
          make-sequence
          root
          emptiable?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.DTDAutomata a ...)))))
  (define (is? a) (clr-is Mono.Xml.DTDAutomata a))
  (define (dtdautomata? a) (clr-is Mono.Xml.DTDAutomata a))
  (define-method-port
    make-choice
    Mono.Xml.DTDAutomata
    MakeChoice
    (Mono.Xml.DTDAutomata Mono.Xml.DTDAutomata))
  (define-method-port
    try-start-element
    Mono.Xml.DTDAutomata
    TryStartElement
    (Mono.Xml.DTDAutomata System.String))
  (define-method-port
    try-end-element
    Mono.Xml.DTDAutomata
    TryEndElement
    (Mono.Xml.DTDAutomata))
  (define-method-port
    make-sequence
    Mono.Xml.DTDAutomata
    MakeSequence
    (Mono.Xml.DTDAutomata Mono.Xml.DTDAutomata))
  (define-field-port
    root
    #f
    #f
    (property:)
    Mono.Xml.DTDAutomata
    Root
    Mono.Xml.DTDObjectModel)
  (define-field-port
    emptiable?
    #f
    #f
    (property:)
    Mono.Xml.DTDAutomata
    Emptiable
    System.Boolean))
