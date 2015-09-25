(library (mono xml dtdautomata-factory)
  (export new is? dtdautomata-factory? sequence choice)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.DTDAutomataFactory a ...)))))
  (define (is? a) (clr-is Mono.Xml.DTDAutomataFactory a))
  (define (dtdautomata-factory? a)
    (clr-is Mono.Xml.DTDAutomataFactory a))
  (define-method-port
    sequence
    Mono.Xml.DTDAutomataFactory
    Sequence
    (Mono.Xml.DTDSequenceAutomata
      Mono.Xml.DTDAutomata
      Mono.Xml.DTDAutomata))
  (define-method-port
    choice
    Mono.Xml.DTDAutomataFactory
    Choice
    (Mono.Xml.DTDChoiceAutomata
      Mono.Xml.DTDAutomata
      Mono.Xml.DTDAutomata)))
