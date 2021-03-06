(library (unity-engine audio-reverb-zone)
  (export new
          is?
          audio-reverb-zone?
          min-distance-get
          min-distance-set!
          min-distance-update!
          max-distance-get
          max-distance-set!
          max-distance-update!
          reverb-preset-get
          reverb-preset-set!
          reverb-preset-update!
          room-get
          room-set!
          room-update!
          room-hf-get
          room-hf-set!
          room-hf-update!
          room-lf-get
          room-lf-set!
          room-lf-update!
          decay-time-get
          decay-time-set!
          decay-time-update!
          decay-hfratio-get
          decay-hfratio-set!
          decay-hfratio-update!
          reflections-get
          reflections-set!
          reflections-update!
          reflections-delay-get
          reflections-delay-set!
          reflections-delay-update!
          reverb-get
          reverb-set!
          reverb-update!
          reverb-delay-get
          reverb-delay-set!
          reverb-delay-update!
          hfreference-get
          hfreference-set!
          hfreference-update!
          lfreference-get
          lfreference-set!
          lfreference-update!
          room-rolloff-factor-get
          room-rolloff-factor-set!
          room-rolloff-factor-update!
          diffusion-get
          diffusion-set!
          diffusion-update!
          density-get
          density-set!
          density-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AudioReverbZone a ...)))))
  (define (is? a) (clr-is UnityEngine.AudioReverbZone a))
  (define (audio-reverb-zone? a) (clr-is UnityEngine.AudioReverbZone a))
  (define-field-port
    min-distance-get
    min-distance-set!
    min-distance-update!
    (property:)
    UnityEngine.AudioReverbZone
    minDistance
    System.Single)
  (define-field-port
    max-distance-get
    max-distance-set!
    max-distance-update!
    (property:)
    UnityEngine.AudioReverbZone
    maxDistance
    System.Single)
  (define-field-port
    reverb-preset-get
    reverb-preset-set!
    reverb-preset-update!
    (property:)
    UnityEngine.AudioReverbZone
    reverbPreset
    UnityEngine.AudioReverbPreset)
  (define-field-port
    room-get
    room-set!
    room-update!
    (property:)
    UnityEngine.AudioReverbZone
    room
    System.Int32)
  (define-field-port
    room-hf-get
    room-hf-set!
    room-hf-update!
    (property:)
    UnityEngine.AudioReverbZone
    roomHF
    System.Int32)
  (define-field-port
    room-lf-get
    room-lf-set!
    room-lf-update!
    (property:)
    UnityEngine.AudioReverbZone
    roomLF
    System.Int32)
  (define-field-port
    decay-time-get
    decay-time-set!
    decay-time-update!
    (property:)
    UnityEngine.AudioReverbZone
    decayTime
    System.Single)
  (define-field-port
    decay-hfratio-get
    decay-hfratio-set!
    decay-hfratio-update!
    (property:)
    UnityEngine.AudioReverbZone
    decayHFRatio
    System.Single)
  (define-field-port
    reflections-get
    reflections-set!
    reflections-update!
    (property:)
    UnityEngine.AudioReverbZone
    reflections
    System.Int32)
  (define-field-port
    reflections-delay-get
    reflections-delay-set!
    reflections-delay-update!
    (property:)
    UnityEngine.AudioReverbZone
    reflectionsDelay
    System.Single)
  (define-field-port
    reverb-get
    reverb-set!
    reverb-update!
    (property:)
    UnityEngine.AudioReverbZone
    reverb
    System.Int32)
  (define-field-port
    reverb-delay-get
    reverb-delay-set!
    reverb-delay-update!
    (property:)
    UnityEngine.AudioReverbZone
    reverbDelay
    System.Single)
  (define-field-port
    hfreference-get
    hfreference-set!
    hfreference-update!
    (property:)
    UnityEngine.AudioReverbZone
    HFReference
    System.Single)
  (define-field-port
    lfreference-get
    lfreference-set!
    lfreference-update!
    (property:)
    UnityEngine.AudioReverbZone
    LFReference
    System.Single)
  (define-field-port
    room-rolloff-factor-get
    room-rolloff-factor-set!
    room-rolloff-factor-update!
    (property:)
    UnityEngine.AudioReverbZone
    roomRolloffFactor
    System.Single)
  (define-field-port
    diffusion-get
    diffusion-set!
    diffusion-update!
    (property:)
    UnityEngine.AudioReverbZone
    diffusion
    System.Single)
  (define-field-port
    density-get
    density-set!
    density-update!
    (property:)
    UnityEngine.AudioReverbZone
    density
    System.Single))
