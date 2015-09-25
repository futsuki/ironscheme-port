(library (unity-engine movie-texture)
  (export new
          is?
          movie-texture?
          play
          pause
          stop
          audio-clip
          loop?-get
          loop?-set!
          loop?-update!
          is-playing?
          is-ready-to-play?
          duration)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.MovieTexture a ...)))))
  (define (is? a) (clr-is UnityEngine.MovieTexture a))
  (define (movie-texture? a) (clr-is UnityEngine.MovieTexture a))
  (define-method-port play UnityEngine.MovieTexture Play (System.Void))
  (define-method-port
    pause
    UnityEngine.MovieTexture
    Pause
    (System.Void))
  (define-method-port stop UnityEngine.MovieTexture Stop (System.Void))
  (define-field-port
    audio-clip
    #f
    #f
    (property:)
    UnityEngine.MovieTexture
    audioClip
    UnityEngine.AudioClip)
  (define-field-port
    loop?-get
    loop?-set!
    loop?-update!
    (property:)
    UnityEngine.MovieTexture
    loop
    System.Boolean)
  (define-field-port
    is-playing?
    #f
    #f
    (property:)
    UnityEngine.MovieTexture
    isPlaying
    System.Boolean)
  (define-field-port
    is-ready-to-play?
    #f
    #f
    (property:)
    UnityEngine.MovieTexture
    isReadyToPlay
    System.Boolean)
  (define-field-port
    duration
    #f
    #f
    (property:)
    UnityEngine.MovieTexture
    duration
    System.Single))
