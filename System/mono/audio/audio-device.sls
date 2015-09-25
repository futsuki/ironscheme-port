(library (mono audio audio-device)
  (export new
          is?
          audio-device?
          wait
          create-device
          play-sample
          set-format?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Audio.AudioDevice a ...)))))
  (define (is? a) (clr-is Mono.Audio.AudioDevice a))
  (define (audio-device? a) (clr-is Mono.Audio.AudioDevice a))
  (define-method-port wait Mono.Audio.AudioDevice Wait (System.Void))
  (define-method-port
    create-device
    Mono.Audio.AudioDevice
    CreateDevice
    (static: Mono.Audio.AudioDevice System.String))
  (define-method-port
    play-sample
    Mono.Audio.AudioDevice
    PlaySample
    (System.Int32 System.Byte[] System.Int32))
  (define-method-port
    set-format?
    Mono.Audio.AudioDevice
    SetFormat
    (System.Boolean Mono.Audio.AudioFormat System.Int32 System.Int32)))
