(library (unity-engine audio-listener)
  (export new
          is?
          audio-listener?
          get-output-data
          get-spectrum-data
          volume-get
          volume-set!
          volume-update!
          pause?-get
          pause?-set!
          pause?-update!
          velocity-update-mode-get
          velocity-update-mode-set!
          velocity-update-mode-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AudioListener a ...)))))
  (define (is? a) (clr-is UnityEngine.AudioListener a))
  (define (audio-listener? a) (clr-is UnityEngine.AudioListener a))
  (define-method-port
    get-output-data
    UnityEngine.AudioListener
    GetOutputData
    (static: System.Void System.Single[] System.Int32)
    (static: System.Single[] System.Int32 System.Int32))
  (define-method-port
    get-spectrum-data
    UnityEngine.AudioListener
    GetSpectrumData
    (static:
      System.Void
      System.Single[]
      System.Int32
      UnityEngine.FFTWindow)
    (static:
      System.Single[]
      System.Int32
      System.Int32
      UnityEngine.FFTWindow))
  (define-field-port
    volume-get
    volume-set!
    volume-update!
    (static: property:)
    UnityEngine.AudioListener
    volume
    System.Single)
  (define-field-port
    pause?-get
    pause?-set!
    pause?-update!
    (static: property:)
    UnityEngine.AudioListener
    pause
    System.Boolean)
  (define-field-port
    velocity-update-mode-get
    velocity-update-mode-set!
    velocity-update-mode-update!
    (property:)
    UnityEngine.AudioListener
    velocityUpdateMode
    UnityEngine.AudioVelocityUpdateMode))
