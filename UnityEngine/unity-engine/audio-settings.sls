(library (unity-engine audio-settings)
  (export new
          is?
          audio-settings?
          get-configuration
          get-dspbuffer-size
          reset?
          set-dspbuffer-size
          driver-capabilities
          driver-caps
          speaker-mode-get
          speaker-mode-set!
          speaker-mode-update!
          dsp-time
          output-sample-rate-get
          output-sample-rate-set!
          output-sample-rate-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AudioSettings a ...)))))
  (define (is? a) (clr-is UnityEngine.AudioSettings a))
  (define (audio-settings? a) (clr-is UnityEngine.AudioSettings a))
  (define-method-port
    get-configuration
    UnityEngine.AudioSettings
    GetConfiguration
    (static: UnityEngine.AudioConfiguration))
  (define-method-port
    get-dspbuffer-size
    UnityEngine.AudioSettings
    GetDSPBufferSize
    (static: System.Void System.Int32& System.Int32&))
  (define-method-port
    reset?
    UnityEngine.AudioSettings
    Reset
    (static: System.Boolean UnityEngine.AudioConfiguration))
  (define-method-port
    set-dspbuffer-size
    UnityEngine.AudioSettings
    SetDSPBufferSize
    (static: System.Void System.Int32 System.Int32))
  (define-field-port
    driver-capabilities
    #f
    #f
    (static: property:)
    UnityEngine.AudioSettings
    driverCapabilities
    UnityEngine.AudioSpeakerMode)
  (define-field-port
    driver-caps
    #f
    #f
    (static: property:)
    UnityEngine.AudioSettings
    driverCaps
    UnityEngine.AudioSpeakerMode)
  (define-field-port
    speaker-mode-get
    speaker-mode-set!
    speaker-mode-update!
    (static: property:)
    UnityEngine.AudioSettings
    speakerMode
    UnityEngine.AudioSpeakerMode)
  (define-field-port
    dsp-time
    #f
    #f
    (static: property:)
    UnityEngine.AudioSettings
    dspTime
    System.Double)
  (define-field-port
    output-sample-rate-get
    output-sample-rate-set!
    output-sample-rate-update!
    (static: property:)
    UnityEngine.AudioSettings
    outputSampleRate
    System.Int32))
