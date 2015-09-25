(library (unity-engine audio-high-pass-filter)
  (export new
          is?
          audio-high-pass-filter?
          cutoff-frequency-get
          cutoff-frequency-set!
          cutoff-frequency-update!
          highpass-resonance-q-get
          highpass-resonance-q-set!
          highpass-resonance-q-update!
          highpass-resonace-q-get
          highpass-resonace-q-set!
          highpass-resonace-q-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AudioHighPassFilter a ...)))))
  (define (is? a) (clr-is UnityEngine.AudioHighPassFilter a))
  (define (audio-high-pass-filter? a)
    (clr-is UnityEngine.AudioHighPassFilter a))
  (define-field-port
    cutoff-frequency-get
    cutoff-frequency-set!
    cutoff-frequency-update!
    (property:)
    UnityEngine.AudioHighPassFilter
    cutoffFrequency
    System.Single)
  (define-field-port
    highpass-resonance-q-get
    highpass-resonance-q-set!
    highpass-resonance-q-update!
    (property:)
    UnityEngine.AudioHighPassFilter
    highpassResonanceQ
    System.Single)
  (define-field-port
    highpass-resonace-q-get
    highpass-resonace-q-set!
    highpass-resonace-q-update!
    (property:)
    UnityEngine.AudioHighPassFilter
    highpassResonaceQ
    System.Single))
