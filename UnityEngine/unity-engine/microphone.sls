(library (unity-engine microphone)
  (export new
          is?
          microphone?
          get-device-caps
          end
          get-position
          is-recording?
          start
          devices)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Microphone a ...)))))
  (define (is? a) (clr-is UnityEngine.Microphone a))
  (define (microphone? a) (clr-is UnityEngine.Microphone a))
  (define-method-port
    get-device-caps
    UnityEngine.Microphone
    GetDeviceCaps
    (static: System.Void System.String System.Int32& System.Int32&))
  (define-method-port
    end
    UnityEngine.Microphone
    End
    (static: System.Void System.String))
  (define-method-port
    get-position
    UnityEngine.Microphone
    GetPosition
    (static: System.Int32 System.String))
  (define-method-port
    is-recording?
    UnityEngine.Microphone
    IsRecording
    (static: System.Boolean System.String))
  (define-method-port
    start
    UnityEngine.Microphone
    Start
    (static:
      UnityEngine.AudioClip
      System.String
      System.Boolean
      System.Int32
      System.Int32))
  (define-field-port
    devices
    #f
    #f
    (static: property:)
    UnityEngine.Microphone
    devices
    System.String[]))
