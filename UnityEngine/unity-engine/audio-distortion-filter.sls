(library (unity-engine audio-distortion-filter)
  (export new
          is?
          audio-distortion-filter?
          distortion-level-get
          distortion-level-set!
          distortion-level-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.AudioDistortionFilter a ...)))))
  (define (is? a) (clr-is UnityEngine.AudioDistortionFilter a))
  (define (audio-distortion-filter? a)
    (clr-is UnityEngine.AudioDistortionFilter a))
  (define-field-port
    distortion-level-get
    distortion-level-set!
    distortion-level-update!
    (property:)
    UnityEngine.AudioDistortionFilter
    distortionLevel
    System.Single))
