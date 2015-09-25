(library (unity-engine guicontent)
  (export new
          is?
          guicontent?
          none-get
          none-set!
          none-update!
          text-get
          text-set!
          text-update!
          image-get
          image-set!
          image-update!
          tooltip-get
          tooltip-set!
          tooltip-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.GUIContent a ...)))))
  (define (is? a) (clr-is UnityEngine.GUIContent a))
  (define (guicontent? a) (clr-is UnityEngine.GUIContent a))
  (define-field-port
    none-get
    none-set!
    none-update!
    (static:)
    UnityEngine.GUIContent
    none
    UnityEngine.GUIContent)
  (define-field-port
    text-get
    text-set!
    text-update!
    (property:)
    UnityEngine.GUIContent
    text
    System.String)
  (define-field-port
    image-get
    image-set!
    image-update!
    (property:)
    UnityEngine.GUIContent
    image
    UnityEngine.Texture)
  (define-field-port
    tooltip-get
    tooltip-set!
    tooltip-update!
    (property:)
    UnityEngine.GUIContent
    tooltip
    System.String))
