(library (mono xml dtdone-or-more-automata)
  (export new
          is?
          dtdone-or-more-automata?
          try-start-element
          try-end-element
          children)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.DTDOneOrMoreAutomata a ...)))))
  (define (is? a) (clr-is Mono.Xml.DTDOneOrMoreAutomata a))
  (define (dtdone-or-more-automata? a)
    (clr-is Mono.Xml.DTDOneOrMoreAutomata a))
  (define-method-port
    try-start-element
    Mono.Xml.DTDOneOrMoreAutomata
    TryStartElement
    (Mono.Xml.DTDAutomata System.String))
  (define-method-port
    try-end-element
    Mono.Xml.DTDOneOrMoreAutomata
    TryEndElement
    (Mono.Xml.DTDAutomata))
  (define-field-port
    children
    #f
    #f
    (property:)
    Mono.Xml.DTDOneOrMoreAutomata
    Children
    Mono.Xml.DTDAutomata))
