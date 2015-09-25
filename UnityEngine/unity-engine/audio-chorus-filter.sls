(library (unity-engine audio-chorus-filter)
  (export new
          is?
          audio-chorus-filter?
          dry-mix-get
          dry-mix-set!
          dry-mix-update!
          wet-mix1-get
          wet-mix1-set!
          wet-mix1-update!
          wet-mix2-get
          wet-mix2-set!
          wet-mix2-update!
          wet-mix3-get
          wet-mix3-set!
          wet-mix3-update!
          delay-get
          delay-set!
          delay-update!
          rate-get
          rate-set!
          rate-update!
          depth-get
          depth-set!
          depth-update!
          feedback-get
          feedback-set!
          feedback-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AudioChorusFilter a ...)))))
  (define (is? a) (clr-is UnityEngine.AudioChorusFilter a))
  (define (audio-chorus-filter? a)
    (clr-is UnityEngine.AudioChorusFilter a))
  (define-field-port
    dry-mix-get
    dry-mix-set!
    dry-mix-update!
    (property:)
    UnityEngine.AudioChorusFilter
    dryMix
    System.Single)
  (define-field-port
    wet-mix1-get
    wet-mix1-set!
    wet-mix1-update!
    (property:)
    UnityEngine.AudioChorusFilter
    wetMix1
    System.Single)
  (define-field-port
    wet-mix2-get
    wet-mix2-set!
    wet-mix2-update!
    (property:)
    UnityEngine.AudioChorusFilter
    wetMix2
    System.Single)
  (define-field-port
    wet-mix3-get
    wet-mix3-set!
    wet-mix3-update!
    (property:)
    UnityEngine.AudioChorusFilter
    wetMix3
    System.Single)
  (define-field-port
    delay-get
    delay-set!
    delay-update!
    (property:)
    UnityEngine.AudioChorusFilter
    delay
    System.Single)
  (define-field-port
    rate-get
    rate-set!
    rate-update!
    (property:)
    UnityEngine.AudioChorusFilter
    rate
    System.Single)
  (define-field-port
    depth-get
    depth-set!
    depth-update!
    (property:)
    UnityEngine.AudioChorusFilter
    depth
    System.Single)
  (define-field-port
    feedback-get
    feedback-set!
    feedback-update!
    (property:)
    UnityEngine.AudioChorusFilter
    feedback
    System.Single))
