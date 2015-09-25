(library (unity-engine networking float-conversion)
  (export new is? float-conversion? to-double to-single)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.FloatConversion a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.FloatConversion a))
  (define (float-conversion? a)
    (clr-is UnityEngine.Networking.FloatConversion a))
  (define-method-port
    to-double
    UnityEngine.Networking.FloatConversion
    ToDouble
    (static: System.Double System.UInt64))
  (define-method-port
    to-single
    UnityEngine.Networking.FloatConversion
    ToSingle
    (static: System.Single System.UInt32)))
