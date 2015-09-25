(library (mono audio win32-sound-player)
  (export new
          is?
          win32-sound-player?
          dispose
          play-looping
          play
          stop
          play-sync
          stream)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Audio.Win32SoundPlayer a ...)))))
  (define (is? a) (clr-is Mono.Audio.Win32SoundPlayer a))
  (define (win32-sound-player? a)
    (clr-is Mono.Audio.Win32SoundPlayer a))
  (define-method-port
    dispose
    Mono.Audio.Win32SoundPlayer
    Dispose
    (System.Void))
  (define-method-port
    play-looping
    Mono.Audio.Win32SoundPlayer
    PlayLooping
    (System.Void))
  (define-method-port
    play
    Mono.Audio.Win32SoundPlayer
    Play
    (System.Void))
  (define-method-port
    stop
    Mono.Audio.Win32SoundPlayer
    Stop
    (System.Void))
  (define-method-port
    play-sync
    Mono.Audio.Win32SoundPlayer
    PlaySync
    (System.Void))
  (define-field-port
    #f
    stream
    #f
    (property:)
    Mono.Audio.Win32SoundPlayer
    Stream
    System.IO.Stream))
