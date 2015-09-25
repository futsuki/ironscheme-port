(library (unity-engine text-asset)
  (export new is? text-asset? to-string text bytes)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.TextAsset a ...)))))
  (define (is? a) (clr-is UnityEngine.TextAsset a))
  (define (text-asset? a) (clr-is UnityEngine.TextAsset a))
  (define-method-port
    to-string
    UnityEngine.TextAsset
    ToString
    (System.String))
  (define-field-port
    text
    #f
    #f
    (property:)
    UnityEngine.TextAsset
    text
    System.String)
  (define-field-port
    bytes
    #f
    #f
    (property:)
    UnityEngine.TextAsset
    bytes
    System.Byte[]))
