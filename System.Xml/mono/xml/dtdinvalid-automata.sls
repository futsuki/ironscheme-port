(library (mono xml dtdinvalid-automata)
  (export new
          is?
          dtdinvalid-automata?
          try-start-element
          try-end-element)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.DTDInvalidAutomata a ...)))))
  (define (is? a) (clr-is Mono.Xml.DTDInvalidAutomata a))
  (define (dtdinvalid-automata? a)
    (clr-is Mono.Xml.DTDInvalidAutomata a))
  (define-method-port
    try-start-element
    Mono.Xml.DTDInvalidAutomata
    TryStartElement
    (Mono.Xml.DTDAutomata System.String))
  (define-method-port
    try-end-element
    Mono.Xml.DTDInvalidAutomata
    TryEndElement
    (Mono.Xml.DTDAutomata)))
