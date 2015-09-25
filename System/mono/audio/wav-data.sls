(library (mono audio wav-data)
  (export new is? wav-data? play channels rate format)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Audio.WavData a ...)))))
  (define (is? a) (clr-is Mono.Audio.WavData a))
  (define (wav-data? a) (clr-is Mono.Audio.WavData a))
  (define-method-port
    play
    Mono.Audio.WavData
    Play
    (System.Void Mono.Audio.AudioDevice))
  (define-field-port
    channels
    #f
    #f
    (property:)
    Mono.Audio.WavData
    Channels
    System.Int32)
  (define-field-port
    rate
    #f
    #f
    (property:)
    Mono.Audio.WavData
    Rate
    System.Int32)
  (define-field-port
    format
    #f
    #f
    (property:)
    Mono.Audio.WavData
    Format
    Mono.Audio.AudioFormat))
