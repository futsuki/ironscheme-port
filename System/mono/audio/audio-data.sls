(library (mono audio audio-data)
  (export is?
          audio-data?
          play
          setup
          channels
          rate
          format
          is-stopped?-get
          is-stopped?-set!
          is-stopped?-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Audio.AudioData a))
  (define (audio-data? a) (clr-is Mono.Audio.AudioData a))
  (define-method-port
    play
    Mono.Audio.AudioData
    Play
    (System.Void Mono.Audio.AudioDevice))
  (define-method-port
    setup
    Mono.Audio.AudioData
    Setup
    (System.Void Mono.Audio.AudioDevice))
  (define-field-port
    channels
    #f
    #f
    (property:)
    Mono.Audio.AudioData
    Channels
    System.Int32)
  (define-field-port
    rate
    #f
    #f
    (property:)
    Mono.Audio.AudioData
    Rate
    System.Int32)
  (define-field-port
    format
    #f
    #f
    (property:)
    Mono.Audio.AudioData
    Format
    Mono.Audio.AudioFormat)
  (define-field-port
    is-stopped?-get
    is-stopped?-set!
    is-stopped?-update!
    (property:)
    Mono.Audio.AudioData
    IsStopped
    System.Boolean))
