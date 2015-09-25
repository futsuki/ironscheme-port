(library (mono audio alsa-device)
  (export new is? alsa-device? dispose wait play-sample set-format?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Audio.AlsaDevice a ...)))))
  (define (is? a) (clr-is Mono.Audio.AlsaDevice a))
  (define (alsa-device? a) (clr-is Mono.Audio.AlsaDevice a))
  (define-method-port
    dispose
    Mono.Audio.AlsaDevice
    Dispose
    (System.Void))
  (define-method-port wait Mono.Audio.AlsaDevice Wait (System.Void))
  (define-method-port
    play-sample
    Mono.Audio.AlsaDevice
    PlaySample
    (System.Int32 System.Byte[] System.Int32))
  (define-method-port
    set-format?
    Mono.Audio.AlsaDevice
    SetFormat
    (System.Boolean Mono.Audio.AudioFormat System.Int32 System.Int32)))
