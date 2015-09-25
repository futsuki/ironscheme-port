(library (unity-engine lens-flare)
  (export new
          is?
          lens-flare?
          flare-get
          flare-set!
          flare-update!
          brightness-get
          brightness-set!
          brightness-update!
          fade-speed-get
          fade-speed-set!
          fade-speed-update!
          color-get
          color-set!
          color-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.LensFlare a ...)))))
  (define (is? a) (clr-is UnityEngine.LensFlare a))
  (define (lens-flare? a) (clr-is UnityEngine.LensFlare a))
  (define-field-port
    flare-get
    flare-set!
    flare-update!
    (property:)
    UnityEngine.LensFlare
    flare
    UnityEngine.Flare)
  (define-field-port
    brightness-get
    brightness-set!
    brightness-update!
    (property:)
    UnityEngine.LensFlare
    brightness
    System.Single)
  (define-field-port
    fade-speed-get
    fade-speed-set!
    fade-speed-update!
    (property:)
    UnityEngine.LensFlare
    fadeSpeed
    System.Single)
  (define-field-port
    color-get
    color-set!
    color-update!
    (property:)
    UnityEngine.LensFlare
    color
    UnityEngine.Color))
