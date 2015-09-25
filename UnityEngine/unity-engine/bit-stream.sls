(library (unity-engine bit-stream)
  (export new is? bit-stream? serialize is-reading? is-writing?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.BitStream a ...)))))
  (define (is? a) (clr-is UnityEngine.BitStream a))
  (define (bit-stream? a) (clr-is UnityEngine.BitStream a))
  (define-method-port
    serialize
    UnityEngine.BitStream
    Serialize
    (System.Void UnityEngine.NetworkViewID&)
    (System.Void UnityEngine.NetworkPlayer&)
    (System.Void UnityEngine.Vector3& System.Single)
    (System.Void UnityEngine.Vector3&)
    (System.Void UnityEngine.Quaternion& System.Single)
    (System.Void UnityEngine.Quaternion&)
    (System.Void System.Single& System.Single)
    (System.Void System.Single&)
    (System.Void System.Int32&)
    (System.Void System.Int16&)
    (System.Void System.Char&)
    (System.Void System.Boolean&))
  (define-field-port
    is-reading?
    #f
    #f
    (property:)
    UnityEngine.BitStream
    isReading
    System.Boolean)
  (define-field-port
    is-writing?
    #f
    #f
    (property:)
    UnityEngine.BitStream
    isWriting
    System.Boolean))
