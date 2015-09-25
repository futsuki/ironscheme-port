(library (mono xml dtdany-automata)
  (export new
          is?
          dtdany-automata?
          try-start-element
          try-end-element
          emptiable?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.DTDAnyAutomata a ...)))))
  (define (is? a) (clr-is Mono.Xml.DTDAnyAutomata a))
  (define (dtdany-automata? a) (clr-is Mono.Xml.DTDAnyAutomata a))
  (define-method-port
    try-start-element
    Mono.Xml.DTDAnyAutomata
    TryStartElement
    (Mono.Xml.DTDAutomata System.String))
  (define-method-port
    try-end-element
    Mono.Xml.DTDAnyAutomata
    TryEndElement
    (Mono.Xml.DTDAutomata))
  (define-field-port
    emptiable?
    #f
    #f
    (property:)
    Mono.Xml.DTDAnyAutomata
    Emptiable
    System.Boolean))
