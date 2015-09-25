(library (unity-engine audio-low-pass-filter)
  (export new
          is?
          audio-low-pass-filter?
          cutoff-frequency-get
          cutoff-frequency-set!
          cutoff-frequency-update!
          lowpass-resonance-q-get
          lowpass-resonance-q-set!
          lowpass-resonance-q-update!
          lowpass-resonace-q-get
          lowpass-resonace-q-set!
          lowpass-resonace-q-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AudioLowPassFilter a ...)))))
  (define (is? a) (clr-is UnityEngine.AudioLowPassFilter a))
  (define (audio-low-pass-filter? a)
    (clr-is UnityEngine.AudioLowPassFilter a))
  (define-field-port
    cutoff-frequency-get
    cutoff-frequency-set!
    cutoff-frequency-update!
    (property:)
    UnityEngine.AudioLowPassFilter
    cutoffFrequency
    System.Single)
  (define-field-port
    lowpass-resonance-q-get
    lowpass-resonance-q-set!
    lowpass-resonance-q-update!
    (property:)
    UnityEngine.AudioLowPassFilter
    lowpassResonanceQ
    System.Single)
  (define-field-port
    lowpass-resonace-q-get
    lowpass-resonace-q-set!
    lowpass-resonace-q-update!
    (property:)
    UnityEngine.AudioLowPassFilter
    lowpassResonaceQ
    System.Single))
