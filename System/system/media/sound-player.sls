(library (system media sound-player)
  (export new
          is?
          sound-player?
          load
          play-looping
          play
          stop
          play-sync
          load-async
          is-load-completed?
          load-timeout-get
          load-timeout-set!
          load-timeout-update!
          sound-location-get
          sound-location-set!
          sound-location-update!
          stream-get
          stream-set!
          stream-update!
          tag-get
          tag-set!
          tag-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Media.SoundPlayer a ...)))))
  (define (is? a) (clr-is System.Media.SoundPlayer a))
  (define (sound-player? a) (clr-is System.Media.SoundPlayer a))
  (define-method-port load System.Media.SoundPlayer Load (System.Void))
  (define-method-port
    play-looping
    System.Media.SoundPlayer
    PlayLooping
    (System.Void))
  (define-method-port play System.Media.SoundPlayer Play (System.Void))
  (define-method-port stop System.Media.SoundPlayer Stop (System.Void))
  (define-method-port
    play-sync
    System.Media.SoundPlayer
    PlaySync
    (System.Void))
  (define-method-port
    load-async
    System.Media.SoundPlayer
    LoadAsync
    (System.Void))
  (define-field-port
    is-load-completed?
    #f
    #f
    (property:)
    System.Media.SoundPlayer
    IsLoadCompleted
    System.Boolean)
  (define-field-port
    load-timeout-get
    load-timeout-set!
    load-timeout-update!
    (property:)
    System.Media.SoundPlayer
    LoadTimeout
    System.Int32)
  (define-field-port
    sound-location-get
    sound-location-set!
    sound-location-update!
    (property:)
    System.Media.SoundPlayer
    SoundLocation
    System.String)
  (define-field-port
    stream-get
    stream-set!
    stream-update!
    (property:)
    System.Media.SoundPlayer
    Stream
    System.IO.Stream)
  (define-field-port
    tag-get
    tag-set!
    tag-update!
    (property:)
    System.Media.SoundPlayer
    Tag
    System.Object))
