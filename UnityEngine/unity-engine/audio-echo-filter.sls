(library (unity-engine audio-echo-filter)
  (export new
          is?
          audio-echo-filter?
          delay-get
          delay-set!
          delay-update!
          decay-ratio-get
          decay-ratio-set!
          decay-ratio-update!
          dry-mix-get
          dry-mix-set!
          dry-mix-update!
          wet-mix-get
          wet-mix-set!
          wet-mix-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AudioEchoFilter a ...)))))
  (define (is? a) (clr-is UnityEngine.AudioEchoFilter a))
  (define (audio-echo-filter? a) (clr-is UnityEngine.AudioEchoFilter a))
  (define-field-port
    delay-get
    delay-set!
    delay-update!
    (property:)
    UnityEngine.AudioEchoFilter
    delay
    System.Single)
  (define-field-port
    decay-ratio-get
    decay-ratio-set!
    decay-ratio-update!
    (property:)
    UnityEngine.AudioEchoFilter
    decayRatio
    System.Single)
  (define-field-port
    dry-mix-get
    dry-mix-set!
    dry-mix-update!
    (property:)
    UnityEngine.AudioEchoFilter
    dryMix
    System.Single)
  (define-field-port
    wet-mix-get
    wet-mix-set!
    wet-mix-update!
    (property:)
    UnityEngine.AudioEchoFilter
    wetMix
    System.Single))
