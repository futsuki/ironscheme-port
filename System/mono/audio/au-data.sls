(library (mono audio au-data)
  (export new is? au-data? play channels rate format)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Audio.AuData a ...)))))
  (define (is? a) (clr-is Mono.Audio.AuData a))
  (define (au-data? a) (clr-is Mono.Audio.AuData a))
  (define-method-port
    play
    Mono.Audio.AuData
    Play
    (System.Void Mono.Audio.AudioDevice))
  (define-field-port
    channels
    #f
    #f
    (property:)
    Mono.Audio.AuData
    Channels
    System.Int32)
  (define-field-port
    rate
    #f
    #f
    (property:)
    Mono.Audio.AuData
    Rate
    System.Int32)
  (define-field-port
    format
    #f
    #f
    (property:)
    Mono.Audio.AuData
    Format
    Mono.Audio.AudioFormat))
